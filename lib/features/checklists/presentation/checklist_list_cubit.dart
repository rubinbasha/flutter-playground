import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/events/event.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_repository.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_updates_repository.dart';
import 'package:flutter_playground/core/repositories/checklist/favorites_store.dart';
import 'package:flutter_playground/core/result/api_result.dart';
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
    @Default(<String>{}) Set<String> favoriteIds,
    @Default('') String query,
    @Default(false) bool isRefreshing,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
    FailureType? failure,
    Event<ChecklistListEffect>? effect,
  }) = _ChecklistListState;
}

class ChecklistListCubit extends Cubit<ChecklistListState> {
  ChecklistListCubit(
    this._repository, [
    this._updatesRepository,
    this._favoritesStore,
  ]) : super(
         ChecklistListState(
           favoriteIds: _favoritesStore?.favoriteIds ?? const <String>{},
         ),
       );

  final ChecklistRepository _repository;
  final ChecklistUpdatesRepository? _updatesRepository;
  final FavoritesStore? _favoritesStore;
  List<ChecklistSummary> _allItems = const [];
  Timer? _searchDebounce;
  StreamSubscription<ChecklistSummary>? _updatesSubscription;

  void checklistSelected(String checklistId) {
    emit(state.copyWith(effect: Event(OpenChecklistDetails(checklistId))));
  }

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
        effect: null,
      ),
    );
    final result = await _repository.getChecklists();
    switch (result) {
      case ApiSuccess<ChecklistPage>(:final data):
        _allItems = data.items;
        emit(
          state.copyWith(
            status: ChecklistListStatus.success,
            items: _filter(state.query),
            isRefreshing: false,
            isLoadingMore: false,
            hasMore: _allItems.length < data.totalCount,
            failure: null,
          ),
        );
        _updatesSubscription ??= _updatesRepository?.watchItems().listen(
          _applyUpdate,
          onError: (Object _) {},
        );
      case ApiFailure<ChecklistPage>(:final type):
        emit(
          state.copyWith(
            status: ChecklistListStatus.success,
            isRefreshing: false,
            failure: type,
          ),
        );
    }
  }

  Future<void> loadNextPage() async {
    if (!state.hasMore || state.isLoadingMore || state.isRefreshing) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true, failure: null));
    final result = await _repository.getChecklists(offset: _allItems.length);
    switch (result) {
      case ApiSuccess<ChecklistPage>(:final data):
        _allItems = [..._allItems, ...data.items];
        emit(
          state.copyWith(
            items: _filter(state.query),
            isLoadingMore: false,
            hasMore: _allItems.length < data.totalCount,
          ),
        );
      case ApiFailure<ChecklistPage>(:final type):
        emit(state.copyWith(isLoadingMore: false, failure: type));
    }
  }

  void searchChanged(String query) {
    emit(state.copyWith(query: query));
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      emit(state.copyWith(items: _filter(query)));
    });
  }

  Future<void> toggleFavorite(String checklistId) async {
    final favoriteIds = {...state.favoriteIds};
    if (!favoriteIds.add(checklistId)) {
      favoriteIds.remove(checklistId);
    }
    await _favoritesStore?.save(favoriteIds);
    emit(state.copyWith(favoriteIds: favoriteIds));
  }

  void _applyUpdate(ChecklistSummary update) {
    final index = _allItems.indexWhere((item) => item.id == update.id);
    if (index == -1) {
      return;
    }
    _allItems = [..._allItems]..[index] = update;
    emit(state.copyWith(items: _filter(state.query)));
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
  Future<void> close() async {
    _searchDebounce?.cancel();
    await _updatesSubscription?.cancel();
    return super.close();
  }
}
