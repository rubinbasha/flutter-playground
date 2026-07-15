import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_repository.dart';
import 'package:flutter_playground/features/checklists/data/favorites_store.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_list_cubit.freezed.dart';

enum ChecklistListStatus { initial, loading, success }

@freezed
abstract class ChecklistListState with _$ChecklistListState {
  const factory ChecklistListState({
    @Default(ChecklistListStatus.initial) ChecklistListStatus status,
    @Default(<ChecklistSummary>[]) List<ChecklistSummary> items,
    @Default(<String>{}) Set<String> favoriteIds,
    FailureType? failure,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(this._repository, [this._favoritesStore])
    : super(
        ChecklistListState(
          favoriteIds: _favoritesStore?.favoriteIds ?? const <String>{},
        ),
      );

  final ChecklistRepository _repository;
  final FavoritesStore? _favoritesStore;

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
      case ApiFailure<List<ChecklistSummary>>(:final type):
        emit(
          state.copyWith(status: ChecklistListStatus.success, failure: type),
        );
    }
  }

  Future<void> toggleFavorite(String checklistId) async {
    final favoriteIds = {...state.favoriteIds};
    if (!favoriteIds.add(checklistId)) {
      favoriteIds.remove(checklistId);
    }
    await _favoritesStore?.save(favoriteIds);
    emit(state.copyWith(favoriteIds: favoriteIds));
  }
}
