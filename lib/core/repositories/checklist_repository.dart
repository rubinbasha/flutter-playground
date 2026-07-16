import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_cache.dart';
import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:flutter_playground/features/checklists/data/checklist_service.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChecklistRepository {
  ChecklistRepository(this._service, this._cache);

  static const int defaultLimit = 15;

  final ChecklistService _service;
  final ChecklistCache _cache;

  Future<ApiResult<List<ChecklistSummary>>> getChecklists() async {
    final result = await _service.getChecklists(limit: defaultLimit, offset: 0);
    switch (result) {
      case ApiFailure<ChecklistPageDto> failure:
        return _cachedOr(failure.copyWithType());
      case ApiSuccess<ChecklistPageDto>(:final data):
        final items =
            data.data
                ?.map(_toSummary)
                .whereType<ChecklistSummary>()
                .toList(growable: false) ??
            const <ChecklistSummary>[];
        try {
          await _cache.save(items);
        } on Exception {
          // Caching is supplemental; fresh API data remains usable.
        }
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

  ApiResult<List<ChecklistSummary>> _cachedOr(
    ApiFailure<List<ChecklistSummary>> failure,
  ) {
    final cached = _cache.load();
    return cached == null ? failure : ApiSuccess(cached);
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
      categoryName: dto.checklistcategoryName,
      appGroupName: dto.appgroupName,
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
      categoryName: dto.checklistcategoryName,
      appGroupName: dto.appgroupName,
      dateCreated: dto.dateCreated,
      lastUpdated: dto.lastUpdated,
      description: dto.fforwardbody,
    );
  }
}
