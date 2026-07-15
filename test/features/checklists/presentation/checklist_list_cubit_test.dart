import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_repository.dart';
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
      when(repository.getChecklists).thenAnswer((_) async => ApiSuccess(items));
      return ChecklistListCubit(repository);
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const ChecklistListState(status: ChecklistListStatus.loading),
      ChecklistListState(status: ChecklistListStatus.success, items: items),
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
}
