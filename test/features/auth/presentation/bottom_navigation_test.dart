import 'package:flutter/material.dart';
import 'package:flutter_playground/features/auth/presentation/authenticated_shell.dart';
import 'package:flutter_playground/l10n/generated/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('bottom navigation emits the selected tab index', (tester) async {
    int? selectedIndex;
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          bottomNavigationBar: PlaygroundBottomNavigationBar(
            currentIndex: 0,
            onSelected: (index) => selectedIndex = index,
          ),
        ),
      ),
    );

    await tester.tap(find.text('Account'));

    expect(selectedIndex, 1);
  });
}
