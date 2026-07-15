import 'package:dio/dio.dart';
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
    try {
      final response = await _service.login(
        AuthRequestDto(username: email, email: email, password: password),
      );
      final accessToken = response.accessToken?.trim();
      if (accessToken == null || accessToken.isEmpty) {
        return const ApiFailure(
          type: FailureType.invalidResponse,
          debugMessage: 'The login response did not contain access_token.',
        );
      }

      await _tokenStorage.saveSession(accessToken: accessToken, email: email);
      return ApiSuccess(email);
    } on AuthServiceException catch (error) {
      return ApiFailure(
        type: FailureType.unauthorized,
        debugMessage: error.message,
      );
    } on DioException catch (error) {
      return ApiFailure(type: _failureType(error), debugMessage: error.message);
    } on Exception catch (error) {
      return ApiFailure(
        type: FailureType.unknown,
        debugMessage: error.toString(),
      );
    }
  }

  Future<ApiResult<void>> logout() async {
    try {
      await _service.logout();
      await _tokenStorage.clearSession();
      return const ApiSuccess(null);
    } on DioException catch (error) {
      return ApiFailure(type: _failureType(error), debugMessage: error.message);
    } on Exception catch (error) {
      return ApiFailure(
        type: FailureType.unknown,
        debugMessage: error.toString(),
      );
    }
  }

  FailureType _failureType(DioException error) {
    final statusCode = error.response?.statusCode;
    if (statusCode == 401 || statusCode == 403) {
      return FailureType.unauthorized;
    }
    if (error.type == DioExceptionType.connectionError ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return FailureType.network;
    }
    return FailureType.unknown;
  }
}
