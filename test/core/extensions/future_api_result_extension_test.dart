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
    final error = DioException(
      requestOptions: requestOptions,
      response: Response<void>(requestOptions: requestOptions, statusCode: 401),
    );
    final result = await Future<String>.error(error).mapToApiResult();

    expect(
      result,
      isA<ApiFailure<String>>()
          .having((failure) => failure.type, 'type', FailureType.unauthorized)
          .having(
            (failure) => failure.originalError,
            'originalError',
            same(error),
          ),
    );
  });

  test('maps a connection failure to network failure', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: '/offline'),
      type: DioExceptionType.connectionError,
    );
    final result = await Future<String>.error(error).mapToApiResult();

    expect(
      result,
      isA<ApiFailure<String>>()
          .having((failure) => failure.type, 'type', FailureType.network)
          .having(
            (failure) => failure.originalError,
            'originalError',
            same(error),
          ),
    );
  });

  test('copyWithType preserves the original error', () {
    final error = Exception('offline');
    final failure = ApiFailure<String>(
      type: FailureType.network,
      debugMessage: 'offline',
      originalError: error,
    );

    final copied = failure.copyWithType<int>();

    expect(copied.type, FailureType.network);
    expect(copied.debugMessage, 'offline');
    expect(copied.originalError, same(error));
  });

  test('maps Dart errors such as generated response casts', () async {
    final error = StateError('invalid generated response cast');

    final result = await Future<String>.error(error).mapToApiResult();

    expect(
      result,
      isA<ApiFailure<String>>()
          .having((failure) => failure.type, 'type', FailureType.unknown)
          .having(
            (failure) => failure.originalError,
            'originalError',
            same(error),
          ),
    );
  });
}
