import 'package:dio/dio.dart';
import 'package:flutter_playground/core/extensions/future_api_result_extension.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('maps a completed API future to success', () async {
    final result = await Future.value('value').mapToApiResult();

    expect(
      result,
      isA<ApiSuccess<String>>().having(
        (success) => success.data,
        'data',
        'value',
      ),
    );
  });

  test('maps an unauthorized Dio response to failure', () async {
    final requestOptions = RequestOptions(path: '/protected');
    final result = await Future<String>.error(
      DioException(
        requestOptions: requestOptions,
        response: Response<void>(
          requestOptions: requestOptions,
          statusCode: 401,
        ),
      ),
    ).mapToApiResult();

    expect(
      result,
      isA<ApiFailure<String>>().having(
        (failure) => failure.type,
        'type',
        FailureType.unauthorized,
      ),
    );
  });

  test('maps a connection failure to network failure', () async {
    final result = await Future<String>.error(
      DioException(
        requestOptions: RequestOptions(path: '/offline'),
        type: DioExceptionType.connectionError,
      ),
    ).mapToApiResult();

    expect(
      result,
      isA<ApiFailure<String>>().having(
        (failure) => failure.type,
        'type',
        FailureType.network,
      ),
    );
  });
}
