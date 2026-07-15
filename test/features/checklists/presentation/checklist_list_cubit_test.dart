import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_repository.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
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
}
