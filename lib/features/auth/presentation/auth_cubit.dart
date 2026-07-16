import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/events/event.dart';
import 'package:flutter_playground/core/repositories/auth/auth_repository.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';

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

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repository)
    : super(
        AuthState(
          email: _repository.sessionEmail ?? '',
          status: _repository.isLoggedIn
              ? AuthStatus.authenticated
              : AuthStatus.unauthenticated,
        ),
      );

  final AuthRepository _repository;

  void emailChanged(String email) {
    emit(state.copyWith(email: email, failure: null, effect: null));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password, failure: null, effect: null));
  }

  Future<void> login() async {
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

  Future<void> logout() async {
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
