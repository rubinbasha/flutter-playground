import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/data/auth_models.dart';
import 'package:flutter_playground/features/auth/data/auth_service.dart';
import 'package:flutter_playground/features/auth/data/token_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepository {
  AuthRepository(this._service, this._tokenStorage);

  final AuthService _service;
  final TokenStorage _tokenStorage;

  bool get isLoggedIn => _tokenStorage.accessToken?.isNotEmpty == true;

  String? get sessionEmail => _tokenStorage.email;

  Future<ApiResult<String>> login({
    required String email,
    required String password,
  }) async {
    final result = await _service.login(
      AuthRequestDto(username: email, email: email, password: password),
    );
    switch (result) {
      case ApiFailure<AuthResponseDto> failure:
        return failure.copyWithType();
      case ApiSuccess<AuthResponseDto>(:final data):
        final accessToken = data.accessToken?.trim();
        if (accessToken == null || accessToken.isEmpty) {
          return const ApiFailure(
            type: FailureType.invalidResponse,
            debugMessage: 'The login response did not contain access_token.',
          );
        }

        try {
          await _tokenStorage.saveSession(
            accessToken: accessToken,
            email: email,
          );
          return ApiSuccess(email);
        } on Exception catch (error) {
          return ApiFailure(
            type: FailureType.unknown,
            debugMessage: error.toString(),
          );
        }
    }
  }

  Future<ApiResult<void>> logout() async {
    final result = await _service.logout();
    switch (result) {
      case ApiFailure<void> failure:
        return failure;
      case ApiSuccess<void>():
        try {
          await _tokenStorage.clearSession();
          return const ApiSuccess(null);
        } on Exception catch (error) {
          return ApiFailure(
            type: FailureType.unknown,
            debugMessage: error.toString(),
          );
        }
    }
  }
}
