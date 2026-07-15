import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/events/event.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_list_cubit.freezed.dart';

sealed class ChecklistListEffect {
  const ChecklistListEffect();
}

final class OpenChecklistDetails extends ChecklistListEffect {
  const OpenChecklistDetails(this.checklistId);

  final String checklistId;
}

enum ChecklistListStatus { initial, loading, success }

@freezed
abstract class ChecklistListState with _$ChecklistListState {
  const factory ChecklistListState({
    @Default(ChecklistListStatus.initial) ChecklistListStatus status,
    @Default(<ChecklistSummary>[]) List<ChecklistSummary> items,
    @Default('') String query,
    FailureType? failure,
    Event<ChecklistListEffect>? effect,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository) : super(const ChecklistListState());

  final ChecklistRepository _repository;
  List<ChecklistSummary> _allItems = const [];
  Timer? _searchDebounce;

  void checklistSelected(String checklistId) {
    emit(state.copyWith(effect: Event(OpenChecklistDetails(checklistId))));
  }

  Future<void> load() async {
    if (state.status == ChecklistListStatus.loading) {
      return;
    }
    emit(
      state.copyWith(
        status: ChecklistListStatus.loading,
        failure: null,
        effect: null,
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
          ),
        );
      case ApiFailure<List<ChecklistSummary>>(:final type):
        emit(
          state.copyWith(status: ChecklistListStatus.success, failure: type),
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
