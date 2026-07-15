import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/mvi/event.dart';
import 'package:flutter_playground/core/repositories/auth_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

sealed class AuthIntent {
  const AuthIntent();
}

final class AuthEmailChanged extends AuthIntent {
  const AuthEmailChanged(this.email);

  final String email;
}

final class AuthPasswordChanged extends AuthIntent {
  const AuthPasswordChanged(this.password);

  final String password;
}

final class AuthLoginSubmitted extends AuthIntent {
  const AuthLoginSubmitted();
}

final class AuthLogoutRequested extends AuthIntent {
  const AuthLogoutRequested();
}

sealed class AuthEffect {
  const AuthEffect();
}

final class AuthOpenDashboard extends AuthEffect {
  const AuthOpenDashboard();
}

final class AuthOpenLogin extends AuthEffect {
  const AuthOpenLogin();
}

enum AuthStatus { unauthenticated, authenticated }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String email,
    @Default('') String password,
    @Default(AuthStatus.unauthenticated) AuthStatus status,
    @Default(false) bool isSubmitting,
    FailureType? failure,
    Event<AuthEffect>? effect,
  }) = _AuthState;
}

class AuthBloc extends Bloc<AuthIntent, AuthState> {
  AuthBloc(this._repository)
    : super(
        AuthState(
          email: _repository.sessionEmail ?? '',
          status: _repository.isLoggedIn
              ? AuthStatus.authenticated
              : AuthStatus.unauthenticated,
        ),
      ) {
    on<AuthEmailChanged>(_onEmailChanged);
    on<AuthPasswordChanged>(_onPasswordChanged);
    on<AuthLoginSubmitted>(_onLoginSubmitted);
    on<AuthLogoutRequested>(_onLogoutRequested);
  }

  final AuthRepository _repository;

  void _onEmailChanged(AuthEmailChanged intent, Emitter<AuthState> emit) {
    emit(state.copyWith(email: intent.email, failure: null, effect: null));
  }

  void _onPasswordChanged(AuthPasswordChanged intent, Emitter<AuthState> emit) {
    emit(
      state.copyWith(password: intent.password, failure: null, effect: null),
    );
  }

  Future<void> _onLoginSubmitted(
    AuthLoginSubmitted intent,
    Emitter<AuthState> emit,
  ) async {
    final email = state.email.trim();
    if (email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(failure: FailureType.validation, effect: null));
      return;
    }

    emit(state.copyWith(isSubmitting: true, failure: null, effect: null));
    final result = await _repository.login(
      email: email,
      password: state.password,
    );
    switch (result) {
      case ApiSuccess<String>():
        emit(
          state.copyWith(
            email: email,
            password: '',
            status: AuthStatus.authenticated,
            isSubmitting: false,
            effect: Event(const AuthOpenDashboard()),
          ),
        );
      case ApiFailure<String>(:final type):
        emit(state.copyWith(isSubmitting: false, failure: type, effect: null));
    }
  }

  Future<void> _onLogoutRequested(
    AuthLogoutRequested intent,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isSubmitting: true, failure: null, effect: null));
    final result = await _repository.logout();
    switch (result) {
      case ApiSuccess<void>():
        emit(
          AuthState(
            email: state.email,
            status: AuthStatus.unauthenticated,
            effect: Event(const AuthOpenLogin()),
          ),
        );
      case ApiFailure<void>(:final type):
        emit(state.copyWith(isSubmitting: false, failure: type, effect: null));
    }
  }
}
