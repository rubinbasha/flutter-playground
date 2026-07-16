import 'package:dio/dio.dart';
import 'package:flutter_playground/core/extensions/future_api_result_extension.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_api.dart';
import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:injectable/injectable.dart';

abstract interface class ChecklistService {
  Future<GenericResponse<ChecklistPageDto>> getChecklists({
    required int limit,
    required int offset,
  });

  Future<GenericResponse<ChecklistDetailsDto>> getChecklistDetails(String id);
}

@LazySingleton(as: ChecklistService, env: ['production'])
class DioChecklistService implements ChecklistService {
  DioChecklistService(Dio dio) : _api = ChecklistApi(dio);

  final ChecklistApi _api;

  @override
  Future<GenericResponse<ChecklistPageDto>> getChecklists({
    required int limit,
    required int offset,
  }) => _api.getChecklists(limit: limit, offset: offset).mapToApiResult();

  @override
  Future<GenericResponse<ChecklistDetailsDto>> getChecklistDetails(String id) =>
      _api.getChecklistDetails(id).mapToApiResult();
}

@LazySingleton(as: ChecklistService, env: ['demo'])
class FakeChecklistService implements ChecklistService {
  static final List<ChecklistItemDto> _items = [
    ChecklistItemDto(
      id: 'safety-walk',
      name: 'Weekly safety walk',
      checklistCategoryName: 'Workplace safety',
      appGroupName: 'Operations',
    ),
    ChecklistItemDto(
      id: 'vehicle-handover',
      name: 'Vehicle handover',
      checklistCategoryName: 'Fleet',
      appGroupName: 'Logistics',
    ),
    ChecklistItemDto(
      id: 'opening-check',
      name: 'Opening checklist',
      checklistCategoryName: 'Daily routines',
      appGroupName: 'Retail',
    ),
    ...List.generate(
      27,
      (index) => ChecklistItemDto(
        id: 'practice-${index + 1}',
        name: 'Practice checklist ${index + 1}',
        checklistcategoryName: index.isEven ? 'Safety' : 'Operations',
        appgroupName: 'Learning lab',
      ),
    ),
  ];

  @override
  Future<GenericResponse<ChecklistPageDto>> getChecklists({
    required int limit,
    required int offset,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    final end = (offset + limit).clamp(0, _items.length);
    final page = offset >= _items.length
        ? <ChecklistItemDto>[]
        : _items.sublist(offset, end);
    return ApiSuccess(ChecklistPageDto(totalCount: _items.length, data: page));
  }

  @override
  Future<GenericResponse<ChecklistDetailsDto>> getChecklistDetails(
    String id,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    final item = _items.where((candidate) => candidate.id == id).firstOrNull;
    if (item == null) {
      return const ApiSuccess(ChecklistDetailsDto());
    }
    return ApiSuccess(
      ChecklistDetailsDto(
        id: item.id,
        name: item.name,
        checklistCategoryName: item.checklistCategoryName,
        appGroupName: item.appGroupName,
        companyName: 'Flutter Playground',
        dateCreated: '2026-01-15',
        lastUpdated: '2026-07-10',
        versionNumber: '1',
        editRight: true,
        forwardBody:
            'A compact example of validated REST data flowing into immutable UI state.',
        sections: [
          ChecklistSectionDto(
            id: '${item.id}-section',
            name: 'Practice section',
            sortOrder: 0,
            fields: [
              ChecklistFieldDto(
                id: '${item.id}-field',
                name: 'Practice field',
                fieldTypeId: 'id-text',
                fieldTypeName: 'Text',
                sortOrder: 0,
                isRequired: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
