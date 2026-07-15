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
    FailureType? failure,
    Event<ChecklistListEffect>? effect,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository) : super(const ChecklistListState());

  final ChecklistRepository _repository;

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
        emit(
          ChecklistListState(status: ChecklistListStatus.success, items: data),
        );
      case ApiFailure<List<ChecklistSummary>>(:final type):
        emit(
          state.copyWith(status: ChecklistListStatus.success, failure: type),
        );
    }
  }
}
