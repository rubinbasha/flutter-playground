enum FailureType { validation, unauthorized, invalidResponse, network, unknown }

sealed class ApiResult<T> {
  const ApiResult();
}

final class ApiSuccess<T> extends ApiResult<T> {
  const ApiSuccess(this.data);

  final T data;
}

final class ApiFailure<T> extends ApiResult<T> {
  const ApiFailure({required this.type, this.debugMessage});

  final FailureType type;
  final String? debugMessage;
}
