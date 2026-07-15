import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_repository.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_list_cubit.freezed.dart';

enum ChecklistListStatus { initial, loading, success }

@freezed
abstract class ChecklistListState with _$ChecklistListState {
  const factory ChecklistListState({
    @Default(ChecklistListStatus.initial) ChecklistListStatus status,
    @Default(<ChecklistSummary>[]) List<ChecklistSummary> items,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
    FailureType? failure,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository) : super(const ChecklistListState());

  final ChecklistRepository _repository;

  Future<void> load() async {
    if (state.status == ChecklistListStatus.loading) {
      return;
    }
    emit(state.copyWith(status: ChecklistListStatus.loading, failure: null));
    final result = await _repository.getChecklists();
    switch (result) {
      case ApiSuccess<ChecklistPage>(:final data):
        emit(
          ChecklistListState(
            status: ChecklistListStatus.success,
            items: data.items,
            hasMore: data.items.length < data.totalCount,
          ),
        );
      case ApiFailure<ChecklistPage>(:final type):
        emit(
          state.copyWith(status: ChecklistListStatus.success, failure: type),
        );
    }
  }

  Future<void> loadNextPage() async {
    if (!state.hasMore || state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true, failure: null));
    final result = await _repository.getChecklists(offset: state.items.length);
    switch (result) {
      case ApiSuccess<ChecklistPage>(:final data):
        final items = [...state.items, ...data.items];
        emit(
          state.copyWith(
            items: items,
            isLoadingMore: false,
            hasMore: items.length < data.totalCount,
          ),
        );
      case ApiFailure<ChecklistPage>(:final type):
        emit(state.copyWith(isLoadingMore: false, failure: type));
    }
  }
}
