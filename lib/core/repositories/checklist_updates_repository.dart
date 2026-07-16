import 'dart:convert';

import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:flutter_playground/features/checklists/data/checklist_updates_socket.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChecklistUpdatesRepository {
  ChecklistUpdatesRepository(this._socket);

  final ChecklistUpdatesSocket _socket;

  Stream<ChecklistSummary> watchItems() async* {
    await for (final message in _socket.watchItems()) {
      final json = _decode(message);
      if (json == null) {
        continue;
      }
      final dto = ChecklistItemDto.fromJson(json);
      final id = dto.id?.trim();
      final name = dto.name?.trim();
      if (id != null && id.isNotEmpty && name != null && name.isNotEmpty) {
        yield ChecklistSummary(
          id: id,
          name: name,
          categoryName: dto.checklistcategoryName,
          appGroupName: dto.appgroupName,
        );
      }
    }
  }

  Stream<ChecklistDetails> watchDetails(String checklistId) async* {
    await for (final message in _socket.watchDetails(checklistId)) {
      final json = _decode(message);
      if (json == null) {
        continue;
      }
      final dto = ChecklistDetailsDto.fromJson(json);
      final id = dto.id?.trim();
      final name = dto.name?.trim();
      if (id == checklistId && name != null && name.isNotEmpty) {
        yield ChecklistDetails(
          id: id!,
          name: name,
          categoryName: dto.checklistcategoryName,
          appGroupName: dto.appgroupName,
          dateCreated: dto.dateCreated,
          lastUpdated: dto.lastUpdated,
          description: dto.fforwardbody,
        );
      }
    }
  }

  Map<String, dynamic>? _decode(String message) {
    try {
      final value = jsonDecode(message);
      return value is Map<String, dynamic> ? value : null;
    } on FormatException {
      return null;
    }
  }
}
