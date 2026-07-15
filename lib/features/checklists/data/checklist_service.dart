import 'package:dio/dio.dart';
import 'package:flutter_playground/features/checklists/data/checklist_api.dart';
import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:injectable/injectable.dart';

abstract interface class ChecklistService {
  Future<ChecklistPageDto> getChecklists({
    required int limit,
    required int offset,
  });

  Future<ChecklistDetailsDto> getChecklistDetails(String id);
}

@LazySingleton(as: ChecklistService, env: ['production'])
class DioChecklistService implements ChecklistService {
  DioChecklistService(Dio dio) : _api = ChecklistApi(dio);

  final ChecklistApi _api;

  @override
  Future<ChecklistPageDto> getChecklists({
    required int limit,
    required int offset,
  }) => _api.getChecklists(limit: limit, offset: offset);

  @override
  Future<ChecklistDetailsDto> getChecklistDetails(String id) =>
      _api.getChecklistDetails(id);
}

@LazySingleton(as: ChecklistService, env: ['demo'])
class FakeChecklistService implements ChecklistService {
  static const _items = [
    ChecklistItemDto(
      id: 'safety-walk',
      name: 'Weekly safety walk',
      checklistcategoryName: 'Workplace safety',
      appgroupName: 'Operations',
    ),
    ChecklistItemDto(
      id: 'vehicle-handover',
      name: 'Vehicle handover',
      checklistcategoryName: 'Fleet',
      appgroupName: 'Logistics',
    ),
    ChecklistItemDto(
      id: 'opening-check',
      name: 'Opening checklist',
      checklistcategoryName: 'Daily routines',
      appgroupName: 'Retail',
    ),
  ];

  @override
  Future<ChecklistPageDto> getChecklists({
    required int limit,
    required int offset,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    final end = (offset + limit).clamp(0, _items.length);
    final page = offset >= _items.length
        ? <ChecklistItemDto>[]
        : _items.sublist(offset, end);
    return ChecklistPageDto(totalCount: _items.length, data: page);
  }

  @override
  Future<ChecklistDetailsDto> getChecklistDetails(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    final item = _items.where((candidate) => candidate.id == id).firstOrNull;
    if (item == null) {
      return const ChecklistDetailsDto();
    }
    return ChecklistDetailsDto(
      id: item.id,
      name: item.name,
      checklistcategoryName: item.checklistcategoryName,
      appgroupName: item.appgroupName,
      dateCreated: '2026-01-15',
      lastUpdated: '2026-07-10',
      fforwardbody:
          'A compact example of validated REST data flowing into immutable UI state.',
    );
  }
}
