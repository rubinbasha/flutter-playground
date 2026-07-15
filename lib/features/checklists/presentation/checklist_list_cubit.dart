import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_repository.dart';
import 'package:flutter_playground/features/checklists/data/checklist_updates_repository.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_list_cubit.freezed.dart';

enum ChecklistListStatus { initial, loading, success }

@freezed
abstract class ChecklistListState with _$ChecklistListState {
  const factory ChecklistListState({
    @Default(ChecklistListStatus.initial) ChecklistListStatus status,
    @Default(<ChecklistSummary>[]) List<ChecklistSummary> items,
    FailureType? failure,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository, [this._updatesRepository])
    : super(const ChecklistListState());

  final ChecklistRepository _repository;
  final ChecklistUpdatesRepository? _updatesRepository;
  StreamSubscription<ChecklistSummary>? _updatesSubscription;

  Future<void> load() async {
    if (state.status == ChecklistListStatus.loading) {
      return;
    }
    emit(state.copyWith(status: ChecklistListStatus.loading, failure: null));
    final result = await _repository.getChecklists();
    switch (result) {
      case ApiSuccess<List<ChecklistSummary>>(:final data):
        emit(
          ChecklistListState(status: ChecklistListStatus.success, items: data),
        );
        _updatesSubscription ??= _updatesRepository?.watchItems().listen(
          _applyUpdate,
          onError: (Object _) {},
        );
      case ApiFailure<List<ChecklistSummary>>(:final type):
        emit(
          state.copyWith(status: ChecklistListStatus.success, failure: type),
        );
    }
  }

  void _applyUpdate(ChecklistSummary update) {
    final index = state.items.indexWhere((item) => item.id == update.id);
    if (index == -1) {
      return;
    }
    final items = [...state.items]..[index] = update;
    emit(state.copyWith(items: items));
  }

  @override
  Future<void> close() async {
    await _updatesSubscription?.cancel();
    return super.close();
  }
}
