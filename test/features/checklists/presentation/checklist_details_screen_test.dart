import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_cubit.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_screen.dart';
import 'package:flutter_playground/l10n/generated/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistRepository extends Mock implements ChecklistRepository {}

void main() {
  testWidgets('details renders nested sections and fields', (tester) async {
    final repository = _MockChecklistRepository();
    const details = ChecklistDetails(
      id: 'checklist',
      name: 'Checklist One',
      sections: [
        ChecklistSection(
          id: 'section',
          name: 'Section One',
          fields: [
            ChecklistField(
              id: 'field',
              name: 'Text field',
              fieldTypeName: 'Text',
              isRequired: true,
            ),
          ],
        ),
      ],
    );
    when(
      () => repository.getChecklistDetails('checklist'),
    ).thenAnswer((_) async => const ApiSuccess(details));
    final cubit = ChecklistDetailsCubit(repository, 'checklist');
    addTearDown(cubit.close);
    await cubit.load();

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocProvider.value(
          value: cubit,
          child: const ChecklistDetailsView(),
        ),
      ),
    );

    expect(find.text('Checklist One'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Section One'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Section One'), findsOneWidget);
    expect(find.text('1 field'), findsOneWidget);

    await tester.tap(find.text('Section One'));
    await tester.pumpAndSettle();

    expect(find.text('Text field'), findsOneWidget);
    expect(find.text('Required'), findsOneWidget);
  });
}
