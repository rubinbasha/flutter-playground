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
    'successful login emits a single dashboard effect',
    setUp: () {
      when(
        () => repository.login(
          email: 'demo@example.com',
          password: 'playground',
        ),
      ).thenAnswer((_) async => const ApiSuccess('demo@example.com'));
    },
    build: () => AuthCubit(repository),
    act: (cubit) async {
      cubit
        ..emailChanged('  demo@example.com  ')
        ..passwordChanged('playground');
      await cubit.login();
    },
    skip: 2,
    expect: () => [
      const AuthState(
        email: '  demo@example.com  ',
        password: 'playground',
        isSubmitting: true,
      ),
      isA<AuthState>()
          .having((state) => state.email, 'email', 'demo@example.com')
          .having((state) => state.status, 'status', AuthStatus.authenticated)
          .having(
            (state) => state.effect?.peekContent(),
            'effect',
            isA<AuthOpenDashboard>(),
          ),
    ],
  );
}
