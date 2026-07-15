import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/auth_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late _MockAuthRepository repository;

  setUp(() {
    repository = _MockAuthRepository();
    when(() => repository.isLoggedIn).thenReturn(false);
    when(() => repository.sessionEmail).thenReturn(null);
  });

  blocTest<AuthCubit, AuthState>(
    'empty credentials fail without calling the repository',
    build: () => AuthCubit(repository),
    act: (cubit) => cubit.login(),
    expect: () => [const AuthState(failure: FailureType.validation)],
    verify: (_) => verifyNever(
      () => repository.login(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ),
  );

  blocTest<AuthCubit, AuthState>(
    'successful login trims email, clears password, and authenticates',
    setUp: () {
      when(
        () => repository.login(
          email: 'learner@example.com',
          password: 'playground',
        ),
      ).thenAnswer((_) async => const ApiSuccess('learner@example.com'));
    },
    build: () => AuthCubit(repository),
    act: (cubit) async {
      cubit.emailChanged('  learner@example.com  ');
      cubit.passwordChanged('playground');
      await cubit.login();
    },
    skip: 2,
    expect: () => [
      const AuthState(
        email: '  learner@example.com  ',
        password: 'playground',
        isSubmitting: true,
      ),
      const AuthState(
        email: 'learner@example.com',
        status: AuthStatus.authenticated,
      ),
    ],
  );
}
