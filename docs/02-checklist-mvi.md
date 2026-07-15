# Checklist MVI slice

`mvi` grows the auth foundation into a small feature with explicit,
unidirectional contracts.

## Structure

- Retrofit DTOs accept nullable response fields.
- `ChecklistRepository` drops malformed list rows and rejects malformed detail
  payloads before creating strict domain models.
- `ChecklistListCubit` and `ChecklistDetailsCubit` own asynchronous work and
  expose immutable Freezed state.
- Screens render state and forward user actions. Navigation remains in the
  presentation layer.
- `PageStateView` centralizes loading, empty, error, and retry behavior.

The list, details, repository, Cubits, and screen contract each have focused
tests. Demo data uses the same service interface as Retrofit, so no UI or Cubit
changes are needed to switch adapters.

## Verification

```sh
flutter gen-l10n
dart run build_runner build
flutter analyze
flutter test
```
