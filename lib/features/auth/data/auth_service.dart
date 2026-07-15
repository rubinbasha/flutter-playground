import 'package:dio/dio.dart';
import 'package:flutter_playground/features/auth/data/auth_api.dart';
import 'package:flutter_playground/features/auth/data/auth_models.dart';
import 'package:injectable/injectable.dart';

abstract interface class AuthService {
  Future<AuthResponseDto> login(AuthRequestDto request);

  Future<void> logout();
}

@LazySingleton(as: AuthService, env: ['production'])
class DioAuthService implements AuthService {
  DioAuthService(Dio dio) : _api = AuthApi(dio);

  final AuthApi _api;

  @override
  Future<AuthResponseDto> login(AuthRequestDto request) =>
      _api.login(request.toJson());

  @override
  Future<void> logout() => _api.logout();
}

class AuthServiceException implements Exception {
  const AuthServiceException(this.message);

  final String message;

  @override
  String toString() => 'AuthServiceException: $message';
}

@LazySingleton(as: AuthService, env: ['demo'])
class FakeAuthService implements AuthService {
  static const String demoEmail = 'learner@example.com';
  static const String demoPassword = 'playground';

  @override
  Future<AuthResponseDto> login(AuthRequestDto request) async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    if (request.email != demoEmail || request.password != demoPassword) {
      throw const AuthServiceException('Invalid demo credentials');
    }
    return const AuthResponseDto(accessToken: 'demo-access-token');
  }

  @override
  Future<void> logout() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
  }
}
