// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/auth_service.dart' as _i903;
import '../../features/auth/data/token_storage.dart' as _i280;
import '../network/auth_token_interceptor.dart' as _i743;
import '../repositories/auth_repository.dart' as _i1002;
import 'modules.dart' as _i738;

const String _demo = 'demo';
const String _production = 'production';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    final networkModule = _$NetworkModule();
    final routerModule = _$RouterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.preferences,
      preResolve: true,
    );
    gh.lazySingleton<_i528.PrettyDioLogger>(() => networkModule.logger);
    gh.lazySingleton<_i280.TokenStorage>(
      () => _i280.TokenStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i903.AuthService>(
      () => _i903.FakeAuthService(),
      registerFor: {_demo},
    );
    gh.lazySingleton<_i743.AuthTokenInterceptor>(
      () => _i743.AuthTokenInterceptor(gh<_i280.TokenStorage>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(
        gh<_i743.AuthTokenInterceptor>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.lazySingleton<_i903.AuthService>(
      () => _i903.DioAuthService(gh<_i361.Dio>()),
      registerFor: {_production},
    );
    gh.lazySingleton<_i1002.AuthRepository>(
      () => _i1002.AuthRepository(
        gh<_i903.AuthService>(),
        gh<_i280.TokenStorage>(),
      ),
    );
    gh.lazySingleton<_i583.GoRouter>(
      () => routerModule.router(gh<_i1002.AuthRepository>()),
    );
    return this;
  }
}

class _$StorageModule extends _i738.StorageModule {}

class _$NetworkModule extends _i738.NetworkModule {}

class _$RouterModule extends _i738.RouterModule {}
