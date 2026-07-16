import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/repositories/checklist_updates_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
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
  ChecklistDetailsCubit(
    this._repository,
    this.checklistId, [
    this._updatesRepository,
  ]) : super(const ChecklistDetailsState());

  final ChecklistRepository _repository;
  final String checklistId;
  final ChecklistUpdatesRepository? _updatesRepository;
  StreamSubscription<ChecklistDetails>? _updatesSubscription;

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
        _updatesSubscription ??= _updatesRepository
            ?.watchDetails(checklistId)
            .listen(_applyUpdate, onError: (Object _) {});
      case ApiFailure<ChecklistDetails>(:final type):
        emit(
          state.copyWith(status: ChecklistDetailsStatus.success, failure: type),
        );
    }
  }

  void _applyUpdate(ChecklistDetails details) {
    emit(state.copyWith(details: details));
  }

  @override
  Future<void> close() async {
    await _updatesSubscription?.cancel();
    return super.close();
  }
}
