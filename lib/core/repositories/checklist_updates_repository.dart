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
          categoryName: dto.checklistCategoryName,
          appGroupName: dto.appGroupName,
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
          categoryName: dto.checklistCategoryName,
          appGroupName: dto.appGroupName,
          companyName: dto.companyName,
          dateCreated: dto.dateCreated,
          lastUpdated: dto.lastUpdated,
          versionNumber: dto.versionNumber,
          editRight: dto.editRight,
          description: dto.forwardBody,
          sections: dto.sections
              .map(_toSection)
              .whereType<ChecklistSection>()
              .toList(growable: false),
        );
      }
    }
  }

  ChecklistSection? _toSection(ChecklistSectionDto dto) {
    final id = dto.id?.trim();
    final name = dto.name?.trim();
    if (id == null || id.isEmpty || name == null || name.isEmpty) {
      return null;
    }
    return ChecklistSection(
      id: id,
      name: name,
      sortOrder: dto.sortOrder,
      fields: dto.fields
          .map(_toField)
          .whereType<ChecklistField>()
          .toList(growable: false),
    );
  }

  ChecklistField? _toField(ChecklistFieldDto dto) {
    final id = dto.id?.trim();
    final name = dto.name?.trim();
    if (id == null || id.isEmpty || name == null || name.isEmpty) {
      return null;
    }
    return ChecklistField(
      id: id,
      name: name,
      fieldTypeId: dto.fieldTypeId,
      fieldTypeName: dto.fieldTypeName,
      sortOrder: dto.sortOrder,
      isRequired: dto.isRequired ?? false,
      isTextArea: dto.isTextArea ?? false,
      isMultiple: dto.isMultiple ?? false,
      isDateTime: dto.isDateTime ?? false,
      isSignature: dto.isSignature ?? false,
    );
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
