import 'package:dio/dio.dart';
import 'package:flutter_playground/features/auth/data/token_storage.dart';
import 'package:injectable/injectable.dart';

const String noAuthenticationHeader = 'No-Authentication';
const String apiTokenHeader = 'X-Api-Token';

@lazySingleton
class AuthTokenInterceptor extends Interceptor {
  AuthTokenInterceptor(this._tokenStorage);

  final TokenStorage _tokenStorage;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final isPublic = options.headers.remove(noAuthenticationHeader) == 'true';
    options.headers.putIfAbsent(Headers.acceptHeader, () => 'application/json');
    options.headers.putIfAbsent(
      Headers.contentTypeHeader,
      () => Headers.jsonContentType,
    );

    final token = _tokenStorage.accessToken;
    if (!isPublic && token != null && token.isNotEmpty) {
      options.headers[apiTokenHeader] = token;
    }

    handler.next(options);
  }
}
