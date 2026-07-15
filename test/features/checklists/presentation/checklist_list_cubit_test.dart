import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/favorites_store.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistRepository extends Mock implements ChecklistRepository {}

class _MockFavoritesStore extends Mock implements FavoritesStore {}

void main() {
  final items = [const ChecklistSummary(id: 'id', name: 'Safety walk')];

  setUpAll(() {
    registerFallbackValue(<String>{});
  });

  blocTest<ChecklistListCubit, ChecklistListState>(
    'load exposes repository data through immutable state',
    setUp: () {},
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

  test('toggleFavorite persists and exposes the updated id set', () async {
    final repository = _MockChecklistRepository();
    final store = _MockFavoritesStore();
    when(() => store.favoriteIds).thenReturn(const <String>{});
    when(() => store.save(any())).thenAnswer((_) async {});
    final cubit = ChecklistListCubit(repository, store);
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
