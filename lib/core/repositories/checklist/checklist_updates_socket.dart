import 'dart:convert';

import 'package:flutter_playground/config/app_config.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/status.dart' as ws_status;
import 'package:web_socket_channel/web_socket_channel.dart';

abstract interface class ChecklistUpdatesSocket {
  Stream<String> watchItems();

  Stream<String> watchDetails(String checklistId);
}

@LazySingleton(as: ChecklistUpdatesSocket, env: ['production'])
class WebSocketChecklistUpdatesSocket implements ChecklistUpdatesSocket {
  @override
  Stream<String> watchItems() =>
      _connect(Uri.parse(AppConfig.checklistItemsWebSocketUrl));

  @override
  Stream<String> watchDetails(String checklistId) {
    final url = AppConfig.checklistDetailsWebSocketUrl.replaceAll(
      '{checklistId}',
      Uri.encodeComponent(checklistId),
    );
    return _connect(Uri.parse(url));
  }

  Stream<String> _connect(Uri uri) async* {
    final channel = WebSocketChannel.connect(uri);
    try {
      await channel.ready;
      await for (final message in channel.stream) {
        if (message is String) {
          yield message;
        }
      }
    } finally {
      await channel.sink.close(ws_status.normalClosure);
    }
  }
}

@LazySingleton(as: ChecklistUpdatesSocket, env: ['demo'])
class FakeChecklistUpdatesSocket implements ChecklistUpdatesSocket {
  @override
  Stream<String> watchItems() async* {
    await Future<void>.delayed(const Duration(seconds: 2));
    yield jsonEncode({
      'id': 'safety-walk',
      'name': 'Weekly safety walk · live',
      'checklistcategoryName': 'Workplace safety',
      'appgroupName': 'Operations',
    });
  }

  @override
  Stream<String> watchDetails(String checklistId) async* {
    await Future<void>.delayed(const Duration(seconds: 2));
    yield jsonEncode({
      'id': checklistId,
      'name': 'Live checklist update',
      'checklistcategoryName': 'Realtime',
      'appgroupName': 'Flutter Playground',
      'lastUpdated': 'Live now',
      'fforwardbody': 'This content arrived through a lifecycle-scoped stream.',
    });
  }
}
