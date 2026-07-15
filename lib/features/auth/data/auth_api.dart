import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_playground/features/auth/data/auth_models.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('/login')
  @Headers(<String, dynamic>{'No-Authentication': 'true'})
  Future<AuthResponseDto> login(@Body() Map<String, dynamic> request);

  @POST('/auth/logout')
  Future<void> logout();
}
