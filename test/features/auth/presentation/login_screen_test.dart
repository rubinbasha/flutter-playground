import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/repositories/auth_repository.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/auth/presentation/login_screen.dart';
import 'package:flutter_playground/l10n/generated/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  testWidgets('login renders its accessible screen contract', (tester) async {
    final repository = _MockAuthRepository();
    when(() => repository.isLoggedIn).thenReturn(false);
    when(() => repository.sessionEmail).thenReturn(null);
    final cubit = AuthCubit(repository);
    addTearDown(cubit.close);

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocProvider.value(value: cubit, child: const LoginView()),
      ),
    );

    expect(find.byKey(const Key('emailField')), findsOneWidget);
    expect(find.byKey(const Key('passwordField')), findsOneWidget);
    expect(find.byKey(const Key('signInButton')), findsOneWidget);
    expect(find.textContaining('demo@example.com'), findsOneWidget);
  });
}
