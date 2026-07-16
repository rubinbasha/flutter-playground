import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_models.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_service.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChecklistRepository {
  ChecklistRepository(this._service);

  static const int defaultLimit = 15;

  final ChecklistService _service;

  Future<ApiResult<List<ChecklistSummary>>> getChecklists() async {
    final result = await _service.getChecklists(limit: defaultLimit, offset: 0);
    switch (result) {
      case ApiFailure<ChecklistPageDto> failure:
        return failure.copyWithType();
      case ApiSuccess<ChecklistPageDto>(:final data):
        final items =
            data.data
                ?.map(_toSummary)
                .whereType<ChecklistSummary>()
                .toList(growable: false) ??
            const <ChecklistSummary>[];
        return ApiSuccess(items);
    }
  }

  Future<ApiResult<ChecklistDetails>> getChecklistDetails(String id) async {
    final result = await _service.getChecklistDetails(id);
    switch (result) {
      case ApiFailure<ChecklistDetailsDto> failure:
        return failure.copyWithType();
      case ApiSuccess<ChecklistDetailsDto>(:final data):
        final details = _toDetails(data);
        if (details == null) {
          return const ApiFailure(
            type: FailureType.invalidResponse,
            debugMessage: 'Checklist details are missing id or name.',
          );
        }
        return ApiSuccess(details);
    }
  }

  ChecklistSummary? _toSummary(ChecklistItemDto dto) {
    final id = dto.id?.trim();
    final name = dto.name?.trim();
    if (id == null || id.isEmpty || name == null || name.isEmpty) {
      return null;
    }
    return ChecklistSummary(
      id: id,
      name: name,
      categoryName: dto.checklistCategoryName,
      appGroupName: dto.appGroupName,
    );
  }

  ChecklistDetails? _toDetails(ChecklistDetailsDto dto) {
    final id = dto.id?.trim();
    final name = dto.name?.trim();
    if (id == null || id.isEmpty || name == null || name.isEmpty) {
      return null;
    }
    return ChecklistDetails(
      id: id,
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
}
