enum FailureType { validation, unauthorized, invalidResponse, network, unknown }

sealed class GenericResponse<T> {
  const GenericResponse();
}

typedef ApiResult<T> = GenericResponse<T>;

final class ApiSuccess<T> extends GenericResponse<T> {
  const ApiSuccess(this.data);

  final T data;
}

final class ApiFailure<T> extends GenericResponse<T> {
  const ApiFailure({required this.type, this.debugMessage, this.originalError});

  final FailureType type;
  final String? debugMessage;
  final Object? originalError;

  ApiFailure<R> copyWithType<R>() {
    return ApiFailure<R>(
      type: type,
      debugMessage: debugMessage,
      originalError: originalError,
    );
  }
}
