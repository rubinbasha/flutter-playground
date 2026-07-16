# Authentication foundation

`main` is the smallest production-shaped slice in the playground.

## Flow

- `core/repositories/auth/` owns the complete authentication domain package:
  Retrofit, DTOs, service adapters, token persistence, and repository
  coordination.
- `LoginView` calls focused input and submit methods on `AuthCubit`.
- `AuthCubit` is the ViewModel: it validates local input, delegates asynchronous
  work, emits durable `AuthState`, and exposes navigation as a consumable
  `Event<AuthEffect>`.
- `AuthRepository` validates nullable network response fields before storing a
  session.
- `AuthService` has deterministic demo and Dio/Retrofit implementations.
- `AuthTokenInterceptor` removes the public-request marker and attaches the
  stored API token only to authenticated calls.
- `BlocListener` consumes each navigation effect once and asks `go_router` to
  replace the auth route after login or logout.

The default `production` injectable environment uses the Retrofit adapter.
`USE_REAL_API=false` selects the deterministic demo implementation.

## Boundaries

Response DTO fields are nullable because server JSON is untrusted. The
repository turns a missing `access_token` into `FailureType.invalidResponse`;
invalid data never reaches the session store.

## Verification

```sh
flutter gen-l10n
dart run build_runner build
flutter analyze
flutter test
```
