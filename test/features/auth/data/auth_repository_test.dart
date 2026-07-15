import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/data/auth_models.dart';
import 'package:flutter_playground/features/auth/data/auth_repository.dart';
import 'package:flutter_playground/features/auth/data/auth_service.dart';
import 'package:flutter_playground/features/auth/data/token_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthService extends Mock implements AuthService {}

class _MockTokenStorage extends Mock implements TokenStorage {}

void main() {
  late _MockAuthService service;
  late _MockTokenStorage storage;
  late AuthRepository repository;

  setUpAll(() {
    registerFallbackValue(
      const AuthRequestDto(username: '', email: '', password: ''),
    );
  });

  setUp(() {
    service = _MockAuthService();
    storage = _MockTokenStorage();
    repository = AuthRepository(service, storage);
  });

  test('login stores a validated access token', () async {
    when(
      () => service.login(any()),
    ).thenAnswer((_) async => const AuthResponseDto(accessToken: 'token'));
    when(
      () => storage.saveSession(
        accessToken: any(named: 'accessToken'),
        email: any(named: 'email'),
      ),
    ).thenAnswer((_) async {});

    final result = await repository.login(
      email: 'learner@example.com',
      password: 'playground',
    );

    expect(result, isA<ApiSuccess<String>>());
    verify(
      () => storage.saveSession(
        accessToken: 'token',
        email: 'learner@example.com',
      ),
    ).called(1);
  });

  test('login rejects a response without an access token', () async {
    when(
      () => service.login(any()),
    ).thenAnswer((_) async => const AuthResponseDto());

    final result = await repository.login(
      email: 'learner@example.com',
      password: 'playground',
    );

    expect(
      result,
      isA<ApiFailure<String>>().having(
        (failure) => failure.type,
        'type',
        FailureType.invalidResponse,
      ),
    );
    verifyNever(
      () => storage.saveSession(
        accessToken: any(named: 'accessToken'),
        email: any(named: 'email'),
      ),
    );
  });
}
