import 'package:dio/dio.dart';
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

  Future<ApiResult<ChecklistPage>> getChecklists({
    int limit = defaultLimit,
    int offset = 0,
  }) async {
    try {
      final response = await _service.getChecklists(
        limit: limit,
        offset: offset,
      );
      final items =
          response.data
              ?.map(_toSummary)
              .whereType<ChecklistSummary>()
              .toList(growable: false) ??
          const <ChecklistSummary>[];
      if (offset == 0) {
        try {
          await _cache.save(items);
        } on Exception {
          // Caching is supplemental; fresh API data remains usable.
        }
      }
      return ApiSuccess(
        ChecklistPage(
          items: items,
          totalCount: response.totalCount ?? offset + items.length,
        ),
      );
    } on DioException catch (error) {
      return _cachedPageOr(
        ApiFailure(type: FailureType.network, debugMessage: error.message),
        offset: offset,
      );
    } on Exception catch (error) {
      return _cachedPageOr(
        ApiFailure(type: FailureType.unknown, debugMessage: error.toString()),
        offset: offset,
      );
    }
  }

  Future<ApiResult<ChecklistDetails>> getChecklistDetails(String id) async {
    try {
      final response = await _service.getChecklistDetails(id);
      final details = _toDetails(response);
      if (details == null) {
        return const ApiFailure(
          type: FailureType.invalidResponse,
          debugMessage: 'Checklist details are missing id or name.',
        );
      }
      return ApiSuccess(details);
    } on DioException catch (error) {
      return ApiFailure(type: FailureType.network, debugMessage: error.message);
    } on Exception catch (error) {
      return ApiFailure(
        type: FailureType.unknown,
        debugMessage: error.toString(),
      );
    }
  }

  ApiResult<ChecklistPage> _cachedPageOr(
    ApiFailure<ChecklistPage> failure, {
    required int offset,
  }) {
    final cached = offset == 0 ? _cache.load() : null;
    return cached == null
        ? failure
        : ApiSuccess(ChecklistPage(items: cached, totalCount: cached.length));
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
