import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_list_cubit.freezed.dart';

enum ChecklistListStatus { initial, loading, success }

@freezed
abstract class ChecklistListState with _$ChecklistListState {
  const factory ChecklistListState({
    @Default(ChecklistListStatus.initial) ChecklistListStatus status,
    @Default(<ChecklistSummary>[]) List<ChecklistSummary> items,
    @Default('') String query,
    @Default(false) bool isRefreshing,
    FailureType? failure,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository) : super(const ChecklistListState());

  final ChecklistRepository _repository;
  List<ChecklistSummary> _allItems = const [];
  Timer? _searchDebounce;

  Future<void> load() => _fetch(isRefresh: false);

  Future<void> refresh() => _fetch(isRefresh: true);

  Future<void> _fetch({required bool isRefresh}) async {
    if (state.status == ChecklistListStatus.loading || state.isRefreshing) {
      return;
    }
    emit(
      state.copyWith(
        status: isRefresh ? state.status : ChecklistListStatus.loading,
        isRefreshing: isRefresh,
        failure: null,
      ),
    );
    final result = await _repository.getChecklists();
    switch (result) {
      case ApiSuccess<List<ChecklistSummary>>(:final data):
        _allItems = data;
        emit(
          state.copyWith(
            status: ChecklistListStatus.success,
            items: _filter(state.query),
            isRefreshing: false,
            failure: null,
          ),
        );
      case ApiFailure<List<ChecklistSummary>>(:final type):
        emit(
          state.copyWith(
            status: ChecklistListStatus.success,
            isRefreshing: false,
            failure: type,
          ),
        );
    }
  }

  void searchChanged(String query) {
    emit(state.copyWith(query: query));
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      emit(state.copyWith(items: _filter(query)));
    });
  }

  List<ChecklistSummary> _filter(String query) {
    final normalized = query.trim().toLowerCase();
    if (normalized.isEmpty) {
      return _allItems;
    }
    return _allItems
        .where((item) {
          return item.name.toLowerCase().contains(normalized) ||
              item.categoryName?.toLowerCase().contains(normalized) == true ||
              item.appGroupName?.toLowerCase().contains(normalized) == true;
        })
        .toList(growable: false);
  }

  @override
  Future<void> close() {
    _searchDebounce?.cancel();
    return super.close();
  }
}
