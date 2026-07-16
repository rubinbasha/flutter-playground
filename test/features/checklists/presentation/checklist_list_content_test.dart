import 'package:flutter/material.dart';
import 'package:flutter_playground/features/auth/presentation/dashboard_screen.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:flutter_playground/l10n/generated/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('list renders content and emits the selected id', (tester) async {
    String? selectedId;
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: ChecklistListContent(
            email: 'demo@example.com',
            state: const ChecklistListState(
              status: ChecklistListStatus.success,
              items: [ChecklistSummary(id: 'safety', name: 'Safety walk')],
            ),
            onRetry: () {},
            onLoadMore: () {},
            onSelected: (id) => selectedId = id,
          ),
        ),
      ),
    );

    expect(find.text('Safety walk'), findsOneWidget);
    await tester.tap(find.byKey(const Key('checklist-safety')));
    expect(selectedId, 'safety');
  });
}
