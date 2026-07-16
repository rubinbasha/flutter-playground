import 'package:dio/dio.dart';
import 'package:flutter_playground/core/extensions/future_api_result_extension.dart';
import 'package:flutter_playground/core/repositories/auth/auth_api.dart';
import 'package:flutter_playground/core/repositories/auth/auth_models.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:injectable/injectable.dart';

abstract interface class AuthService {
  Future<GenericResponse<AuthResponseDto>> login(AuthRequestDto request);

  Future<GenericResponse<void>> logout();
}

@LazySingleton(as: AuthService, env: ['production'])
class DioAuthService implements AuthService {
  DioAuthService(Dio dio) : _api = AuthApi(dio);

  final AuthApi _api;

  @override
  Future<GenericResponse<AuthResponseDto>> login(AuthRequestDto request) =>
      _api.login(request.toJson()).mapToApiResult();

  @override
  Future<GenericResponse<void>> logout() => _api.logout().mapToApiResult();
}

@LazySingleton(as: AuthService, env: ['demo'])
class FakeAuthService implements AuthService {
  static const String demoEmail = 'demo@example.com';
  static const String demoPassword = 'playground';

  @override
  Future<GenericResponse<AuthResponseDto>> login(AuthRequestDto request) async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    if (request.email != demoEmail || request.password != demoPassword) {
      return const ApiFailure(
        type: FailureType.unauthorized,
        debugMessage: 'Invalid demo credentials',
      );
    }
    return const ApiSuccess(AuthResponseDto(accessToken: 'demo-access-token'));
  }

  @override
  Future<GenericResponse<void>> logout() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return const ApiSuccess(null);
  }
}
