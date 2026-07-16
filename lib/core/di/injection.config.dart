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

import '../network/auth_token_interceptor.dart' as _i743;
import '../repositories/auth/auth_repository.dart' as _i161;
import '../repositories/auth/auth_service.dart' as _i339;
import '../repositories/auth/token_storage.dart' as _i950;
import '../repositories/checklist/checklist_cache.dart' as _i591;
import '../repositories/checklist/checklist_repository.dart' as _i968;
import '../repositories/checklist/checklist_service.dart' as _i787;
import '../repositories/checklist/checklist_updates_repository.dart' as _i33;
import '../repositories/checklist/checklist_updates_socket.dart' as _i128;
import '../repositories/checklist/favorites_store.dart' as _i1016;
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
    gh.lazySingleton<_i128.ChecklistUpdatesSocket>(
      () => _i128.FakeChecklistUpdatesSocket(),
      registerFor: {_demo},
    );
    gh.lazySingleton<_i339.AuthService>(
      () => _i339.FakeAuthService(),
      registerFor: {_demo},
    );
    gh.lazySingleton<_i950.TokenStorage>(
      () => _i950.TokenStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i591.ChecklistCache>(
      () => _i591.ChecklistCache(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i1016.FavoritesStore>(
      () => _i1016.FavoritesStore(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i787.ChecklistService>(
      () => _i787.FakeChecklistService(),
      registerFor: {_demo},
    );
    gh.lazySingleton<_i128.ChecklistUpdatesSocket>(
      () => _i128.WebSocketChecklistUpdatesSocket(),
      registerFor: {_production},
    );
    gh.lazySingleton<_i743.AuthTokenInterceptor>(
      () => _i743.AuthTokenInterceptor(gh<_i950.TokenStorage>()),
    );
    gh.lazySingleton<_i33.ChecklistUpdatesRepository>(
      () => _i33.ChecklistUpdatesRepository(gh<_i128.ChecklistUpdatesSocket>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(
        gh<_i743.AuthTokenInterceptor>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.lazySingleton<_i339.AuthService>(
      () => _i339.DioAuthService(gh<_i361.Dio>()),
      registerFor: {_production},
    );
    gh.lazySingleton<_i161.AuthRepository>(
      () => _i161.AuthRepository(
        gh<_i339.AuthService>(),
        gh<_i950.TokenStorage>(),
      ),
    );
    gh.lazySingleton<_i787.ChecklistService>(
      () => _i787.DioChecklistService(gh<_i361.Dio>()),
      registerFor: {_production},
    );
    gh.lazySingleton<_i968.ChecklistRepository>(
      () => _i968.ChecklistRepository(
        gh<_i787.ChecklistService>(),
        gh<_i591.ChecklistCache>(),
      ),
    );
    gh.lazySingleton<_i583.GoRouter>(
      () => routerModule.router(
        gh<_i161.AuthRepository>(),
        gh<_i968.ChecklistRepository>(),
        gh<_i33.ChecklistUpdatesRepository>(),
        gh<_i1016.FavoritesStore>(),
      ),
    );
    return this;
  }
}

class _$StorageModule extends _i738.StorageModule {}

class _$NetworkModule extends _i738.NetworkModule {}

class _$RouterModule extends _i738.RouterModule {}
