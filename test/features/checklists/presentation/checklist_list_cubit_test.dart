import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistRepository extends Mock implements ChecklistRepository {}

void main() {
  final items = [const ChecklistSummary(id: 'id', name: 'Safety walk')];

  blocTest<ChecklistListCubit, ChecklistListState>(
    'load exposes repository data through immutable state',
    setUp: () {},
    build: () {
      final repository = _MockChecklistRepository();
      when(repository.getChecklists).thenAnswer(
        (_) async => ApiSuccess(ChecklistPage(items: items, totalCount: 1)),
      );
      return ChecklistListCubit(repository);
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const ChecklistListState(status: ChecklistListStatus.loading),
      ChecklistListState(
        status: ChecklistListStatus.success,
        items: items,
        hasMore: false,
      ),
    ],
  );

  blocTest<ChecklistListCubit, ChecklistListState>(
    'loadNextPage appends data and stops at totalCount',
    build: () {
      final repository = _MockChecklistRepository();
      when(repository.getChecklists).thenAnswer(
        (_) async => const ApiSuccess(
          ChecklistPage(
            items: [ChecklistSummary(id: 'one', name: 'One')],
            totalCount: 2,
          ),
        ),
      );
      when(() => repository.getChecklists(offset: 1)).thenAnswer(
        (_) async => const ApiSuccess(
          ChecklistPage(
            items: [ChecklistSummary(id: 'two', name: 'Two')],
            totalCount: 2,
          ),
        ),
      );
      return ChecklistListCubit(repository);
    },
    act: (cubit) async {
      await cubit.load();
      await cubit.loadNextPage();
    },
    skip: 2,
    expect: () => [
      const ChecklistListState(
        status: ChecklistListStatus.success,
        items: [ChecklistSummary(id: 'one', name: 'One')],
        isLoadingMore: true,
      ),
      const ChecklistListState(
        status: ChecklistListStatus.success,
        items: [
          ChecklistSummary(id: 'one', name: 'One'),
          ChecklistSummary(id: 'two', name: 'Two'),
        ],
        hasMore: false,
      ),
    ],
  );

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
