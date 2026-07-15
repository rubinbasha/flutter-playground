import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_playground/core/repositories/auth_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/presentation/auth_bloc.dart';
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

  blocTest<AuthBloc, AuthState>(
    'empty credentials fail without calling the repository',
    build: () => AuthBloc(repository),
    act: (bloc) => bloc.add(const AuthLoginSubmitted()),
    expect: () => [const AuthState(failure: FailureType.validation)],
    verify: (_) => verifyNever(
      () => repository.login(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ),
  );

  blocTest<AuthBloc, AuthState>(
    'successful login emits a single dashboard effect',
    setUp: () {
      when(
        () => repository.login(
          email: 'learner@example.com',
          password: 'playground',
        ),
      ).thenAnswer((_) async => const ApiSuccess('learner@example.com'));
    },
    build: () => AuthBloc(repository),
    act: (bloc) {
      bloc
        ..add(const AuthEmailChanged('  learner@example.com  '))
        ..add(const AuthPasswordChanged('playground'))
        ..add(const AuthLoginSubmitted());
    },
    skip: 2,
    expect: () => [
      const AuthState(
        email: '  learner@example.com  ',
        password: 'playground',
        isSubmitting: true,
      ),
      isA<AuthState>()
          .having((state) => state.email, 'email', 'learner@example.com')
          .having((state) => state.status, 'status', AuthStatus.authenticated)
          .having(
            (state) => state.effect?.peekContent(),
            'effect',
            isA<AuthOpenDashboard>(),
          ),
    ],
  );
}
