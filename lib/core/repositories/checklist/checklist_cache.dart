import 'dart:convert';

import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class ChecklistCache {
  ChecklistCache(this._preferences);

  static const String _key = 'checklists.cachedSummaries';

  final SharedPreferences _preferences;

  Future<void> save(List<ChecklistSummary> items) async {
    final encoded = jsonEncode([
      for (final item in items)
        {
          'id': item.id,
          'name': item.name,
          'categoryName': item.categoryName,
          'appGroupName': item.appGroupName,
        },
    ]);
    await _preferences.setString(_key, encoded);
  }

  List<ChecklistSummary>? load() {
    final encoded = _preferences.getString(_key);
    if (encoded == null) {
      return null;
    }
    try {
      final decoded = jsonDecode(encoded);
      if (decoded is! List<dynamic>) {
        return null;
      }
      final items = <ChecklistSummary>[];
      for (final value in decoded) {
        if (value is! Map<String, dynamic>) {
          continue;
        }
        final id = value['id'];
        final name = value['name'];
        if (id is String &&
            id.isNotEmpty &&
            name is String &&
            name.isNotEmpty) {
          items.add(
            ChecklistSummary(
              id: id,
              name: name,
              categoryName: value['categoryName'] as String?,
              appGroupName: value['appGroupName'] as String?,
            ),
          );
        }
      }
      return items;
    } on FormatException {
      return null;
    }
  }
}
