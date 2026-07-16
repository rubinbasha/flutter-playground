import 'package:dio/dio.dart';
import 'package:flutter_playground/core/result/api_result.dart';

extension FutureApiResult<T> on Future<T> {
  Future<GenericResponse<T>> mapToApiResult() async {
    try {
      return ApiSuccess<T>(await this);
    } on DioException catch (error) {
      return ApiFailure<T>(
        type: _failureType(error),
        debugMessage: error.message,
        originalError: error,
      );
    } on Exception catch (error) {
      return ApiFailure<T>(
        type: FailureType.unknown,
        debugMessage: error.toString(),
        originalError: error,
      );
    }
  }
}

FailureType _failureType(DioException error) {
  final statusCode = error.response?.statusCode;
  if (statusCode == 401 || statusCode == 403) {
    return FailureType.unauthorized;
  }

  return switch (error.type) {
    DioExceptionType.connectionError ||
    DioExceptionType.connectionTimeout ||
    DioExceptionType.sendTimeout ||
    DioExceptionType.receiveTimeout => FailureType.network,
    _ => FailureType.unknown,
  };
}
