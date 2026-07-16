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
      (_) async => const ApiSuccess(
        ChecklistPageDto(
          data: [
            ChecklistItemDto(id: 'first', name: 'First'),
            ChecklistItemDto(name: 'Missing id'),
            ChecklistItemDto(
              id: 'second',
              name: 'Second',
              checklistCategoryName: 'Category',
              appGroupName: 'Group',
            ),
          ],
        ),
      ),
    );

    final result = await repository.getChecklists();

    expect(
      result,
      isA<ApiSuccess<ChecklistPage>>().having(
        (success) => success.data.items.map((item) => item.id),
        'ids',
        ['first', 'second'],
      ),
    );
  });

  test('returns a controlled error for invalid details', () async {
    when(
      () => service.getChecklistDetails('id'),
    ).thenAnswer((_) async => const ApiSuccess(ChecklistDetailsDto(id: 'id')));

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

  test('maps nested checklist sections and fields', () async {
    when(() => service.getChecklistDetails('id')).thenAnswer(
      (_) async => const ApiSuccess(
        ChecklistDetailsDto(
          id: 'id',
          name: 'Checklist',
          companyName: 'BasalBit',
          checklistCategoryName: 'Category',
          appGroupName: 'Group',
          versionNumber: '1',
          editRight: true,
          sections: [
            ChecklistSectionDto(
              id: 'section',
              name: 'Section',
              sortOrder: 0,
              fields: [
                ChecklistFieldDto(
                  id: 'field',
                  name: 'Text field',
                  fieldTypeId: 'id-text',
                  fieldTypeName: 'id-text',
                  sortOrder: 0,
                  isRequired: true,
                  isTextArea: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );

    final result = await repository.getChecklistDetails('id');

    expect(
      result,
      isA<ApiSuccess<ChecklistDetails>>()
          .having(
            (success) => success.data.companyName,
            'companyName',
            'BasalBit',
          )
          .having(
            (success) => success.data.sections.single.name,
            'section name',
            'Section',
          )
          .having(
            (success) => success.data.sections.single.fields.single.isRequired,
            'required field',
            isTrue,
          ),
    );
  });

  test('propagates transport failures with the domain result type', () async {
    when(() => service.getChecklistDetails('id')).thenAnswer(
      (_) async =>
          const ApiFailure(type: FailureType.network, debugMessage: 'offline'),
    );

    final result = await repository.getChecklistDetails('id');

    expect(
      result,
      isA<ApiFailure<ChecklistDetails>>()
          .having((failure) => failure.type, 'type', FailureType.network)
          .having((failure) => failure.debugMessage, 'debugMessage', 'offline'),
    );
  });
}
