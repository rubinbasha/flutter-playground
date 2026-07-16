import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_details_cubit.freezed.dart';

enum ChecklistDetailsStatus { initial, loading, success }

@freezed
abstract class ChecklistDetailsState with _$ChecklistDetailsState {
  const factory ChecklistDetailsState({
    @Default(ChecklistDetailsStatus.initial) ChecklistDetailsStatus status,
    ChecklistDetails? details,
    FailureType? failure,
  }) = _ChecklistDetailsState;
}

class ChecklistDetailsCubit extends Cubit<ChecklistDetailsState> {
  ChecklistDetailsCubit(this._repository, this.checklistId)
    : super(const ChecklistDetailsState());

  final ChecklistRepository _repository;
  final String checklistId;

  Future<void> load() async {
    if (state.status == ChecklistDetailsStatus.loading) {
      return;
    }
    emit(state.copyWith(status: ChecklistDetailsStatus.loading, failure: null));
    final result = await _repository.getChecklistDetails(checklistId);
    switch (result) {
      case ApiSuccess<ChecklistDetails>(:final data):
        emit(
          ChecklistDetailsState(
            status: ChecklistDetailsStatus.success,
            details: data,
          ),
        );
      case ApiFailure<ChecklistDetails>(:final type):
        emit(
          state.copyWith(status: ChecklistDetailsStatus.success, failure: type),
        );
    }
  }
}
