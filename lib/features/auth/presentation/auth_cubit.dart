import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/data/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';

enum AuthStatus { unauthenticated, authenticated }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String email,
    @Default('') String password,
    @Default(AuthStatus.unauthenticated) AuthStatus status,
    @Default(false) bool isSubmitting,
    FailureType? failure,
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

  void emailChanged(String value) {
    emit(state.copyWith(email: value, failure: null));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, failure: null));
  }

  Future<void> login() async {
    final email = state.email.trim();
    if (email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(failure: FailureType.validation));
      return;
    }

    emit(state.copyWith(isSubmitting: true, failure: null));
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
          ),
        );
      case ApiFailure<String>(:final type):
        emit(state.copyWith(isSubmitting: false, failure: type));
    }
  }

  Future<void> logout() async {
    emit(state.copyWith(isSubmitting: true, failure: null));
    final result = await _repository.logout();
    switch (result) {
      case ApiSuccess<void>():
        emit(AuthState(email: state.email, status: AuthStatus.unauthenticated));
      case ApiFailure<void>(:final type):
        emit(state.copyWith(isSubmitting: false, failure: type));
    }
  }
}
