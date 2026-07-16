import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_cubit.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistRepository extends Mock implements ChecklistRepository {}

void main() {
  const details = ChecklistDetails(id: 'id', name: 'Safety walk');

  blocTest<ChecklistDetailsCubit, ChecklistDetailsState>(
    'load exposes repository data through immutable state',
    setUp: () {},
    build: () {
      final repository = _MockChecklistRepository();
      when(
        () => repository.getChecklistDetails('id'),
      ).thenAnswer((_) async => const ApiSuccess(details));
      return ChecklistDetailsCubit(repository, 'id');
    },
    act: (cubit) => cubit.load(),
    expect: () => const [
      ChecklistDetailsState(status: ChecklistDetailsStatus.loading),
      ChecklistDetailsState(
        status: ChecklistDetailsStatus.success,
        details: details,
      ),
    ],
  );
}
