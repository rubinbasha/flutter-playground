import 'package:flutter_playground/core/repositories/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:flutter_playground/features/checklists/data/checklist_service.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistService extends Mock implements ChecklistService {}

void main() {
  late _MockChecklistService service;
  late ChecklistRepository repository;

  setUp(() {
    service = _MockChecklistService();
    repository = ChecklistRepository(service);
  });

  test('drops malformed rows while preserving valid backend order', () async {
    when(
      () => service.getChecklists(
        limit: ChecklistRepository.defaultLimit,
        offset: 0,
      ),
    ).thenAnswer(
      (_) async => const ChecklistPageDto(
        data: [
          ChecklistItemDto(id: 'first', name: 'First'),
          ChecklistItemDto(name: 'Missing id'),
          ChecklistItemDto(id: 'second', name: 'Second'),
        ],
      ),
    );

    final result = await repository.getChecklists();

    expect(
      result,
      isA<ApiSuccess<List<ChecklistSummary>>>().having(
        (success) => success.data.map((item) => item.id),
        'ids',
        ['first', 'second'],
      ),
    );
  });

  test('returns a controlled error for invalid details', () async {
    when(
      () => service.getChecklistDetails('id'),
    ).thenAnswer((_) async => const ChecklistDetailsDto(id: 'id'));

    final result = await repository.getChecklistDetails('id');

    expect(
      result,
      isA<ApiFailure<ChecklistDetails>>().having(
        (failure) => failure.type,
        'type',
        FailureType.invalidResponse,
      ),
    );
  });
}
