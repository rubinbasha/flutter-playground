# Authentication foundation

`main` is the smallest production-shaped slice in the playground.

## Flow

- `LoginView` sends field changes and submit actions to `AuthCubit`.
- `AuthCubit` validates local input and delegates asynchronous work.
- `AuthRepository` validates nullable network response fields before storing a
  session.
- `AuthService` has deterministic demo and Dio/Retrofit implementations.
- `AuthTokenInterceptor` removes the public-request marker and attaches the
  stored API token only to authenticated calls.
- `go_router` replaces the auth route after login or logout.

The default `demo` injectable environment makes the branch runnable without a
backend. `USE_REAL_API=true` selects the production adapter.

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
