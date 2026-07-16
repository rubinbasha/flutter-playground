import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_playground/config/app_config.dart';
import 'package:flutter_playground/core/network/auth_token_interceptor.dart';
import 'package:flutter_playground/core/repositories/auth/auth_repository.dart';
import 'package:flutter_playground/features/auth/presentation/dashboard_screen.dart';
import 'package:flutter_playground/features/auth/presentation/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageModule {
  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();
}

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio(
    AuthTokenInterceptor authTokenInterceptor,
    PrettyDioLogger prettyDioLogger,
  ) {
    return Dio(
        BaseOptions(
          baseUrl: AppConfig.apiBaseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      )
      ..interceptors.addAll([
        authTokenInterceptor,
        if (!kReleaseMode) prettyDioLogger,
      ]);
  }

  @lazySingleton
  PrettyDioLogger get logger => PrettyDioLogger(
    requestHeader: false,
    requestBody: true,
    responseBody: true,
    compact: true,
  );
}

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter router(AuthRepository authRepository) {
    return GoRouter(
      initialLocation: authRepository.isLoggedIn
          ? DashboardScreen.route
          : LoginScreen.route,
      routes: [
        GoRoute(
          path: LoginScreen.route,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: DashboardScreen.route,
          builder: (context, state) => const DashboardScreen(),
        ),
      ],
    );
  }
}
