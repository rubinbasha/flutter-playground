import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_repository.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_updates_repository.dart';
import 'package:flutter_playground/core/repositories/checklist/favorites_store.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistRepository extends Mock implements ChecklistRepository {}

class _MockChecklistUpdatesRepository extends Mock
    implements ChecklistUpdatesRepository {}

class _MockFavoritesStore extends Mock implements FavoritesStore {}

void main() {
  final items = [const ChecklistSummary(id: 'id', name: 'Safety walk')];

  setUpAll(() {
    registerFallbackValue(<String>{});
  });

  blocTest<ChecklistListCubit, ChecklistListState>(
    'load exposes repository data through immutable state',
    build: () {
      final repository = _MockChecklistRepository();
      when(repository.getChecklists).thenAnswer((_) async => ApiSuccess(items));
      return ChecklistListCubit(repository);
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const ChecklistListState(status: ChecklistListStatus.loading),
      ChecklistListState(status: ChecklistListStatus.success, items: items),
    ],
  );

  blocTest<ChecklistListCubit, ChecklistListState>(
    'replaces a visible row when a realtime update arrives',
    build: () {
      final repository = _MockChecklistRepository();
      final updatesRepository = _MockChecklistUpdatesRepository();
      when(repository.getChecklists).thenAnswer((_) async => ApiSuccess(items));
      when(updatesRepository.watchItems).thenAnswer(
        (_) => Stream.value(
          const ChecklistSummary(id: 'id', name: 'Updated live'),
        ),
      );
      return ChecklistListCubit(repository, updatesRepository);
    },
    act: (cubit) => cubit.load(),
    wait: const Duration(milliseconds: 10),
    expect: () => [
      const ChecklistListState(status: ChecklistListStatus.loading),
      ChecklistListState(status: ChecklistListStatus.success, items: items),
      const ChecklistListState(
        status: ChecklistListStatus.success,
        items: [ChecklistSummary(id: 'id', name: 'Updated live')],
      ),
    ],
  );

  test(
    'search filters after the debounce and preserves source order',
    () async {
      final repository = _MockChecklistRepository();
      when(repository.getChecklists).thenAnswer(
        (_) async => const ApiSuccess([
          ChecklistSummary(id: 'safety', name: 'Safety walk'),
          ChecklistSummary(
            id: 'vehicle',
            name: 'Vehicle handover',
            categoryName: 'Fleet',
          ),
        ]),
      );
      final cubit = ChecklistListCubit(repository);
      addTearDown(cubit.close);

      await cubit.load();
      cubit.searchChanged('fleet');
      await Future<void>.delayed(const Duration(milliseconds: 350));

      expect(cubit.state.items.map((item) => item.id), ['vehicle']);
      expect(cubit.state.query, 'fleet');
    },
  );

  test('failed refresh preserves existing content', () async {
    final repository = _MockChecklistRepository();
    var callCount = 0;
    when(repository.getChecklists).thenAnswer((_) async {
      callCount += 1;
      if (callCount == 1) {
        return ApiSuccess(items);
      }
      return const ApiFailure(type: FailureType.network);
    });
    final cubit = ChecklistListCubit(repository);
    addTearDown(cubit.close);

    await cubit.load();
    await cubit.refresh();

    expect(cubit.state.items, items);
    expect(cubit.state.failure, FailureType.network);
    expect(cubit.state.isRefreshing, isFalse);
  });

  test('toggleFavorite persists and exposes the updated id set', () async {
    final repository = _MockChecklistRepository();
    final store = _MockFavoritesStore();
    when(() => store.favoriteIds).thenReturn(const <String>{});
    when(() => store.save(any())).thenAnswer((_) async {});
    final cubit = ChecklistListCubit(repository, null, store);
    addTearDown(cubit.close);

    await cubit.toggleFavorite('id');

    expect(cubit.state.favoriteIds, {'id'});
    verify(() => store.save({'id'})).called(1);
  });

  blocTest<ChecklistListCubit, ChecklistListState>(
    'selection emits a consumable navigation effect',
    build: () => ChecklistListCubit(_MockChecklistRepository()),
    act: (cubit) => cubit.checklistSelected('safety'),
    expect: () => [
      isA<ChecklistListState>().having(
        (state) => state.effect?.peekContent(),
        'effect',
        isA<OpenChecklistDetails>().having(
          (effect) => effect.checklistId,
          'checklistId',
          'safety',
        ),
      ),
    ],
  );
}
