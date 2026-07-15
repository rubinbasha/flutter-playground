# Checklist MVVM slice

The `mvi` branch keeps its historical name from the Compose learning path, but
the Flutter implementation uses idiomatic MVVM with `flutter_bloc`.

## Structure

- Retrofit DTOs accept nullable response fields.
- `core/repositories/ChecklistRepository` drops malformed list rows and rejects
  malformed detail payloads before creating strict domain models.
- Widgets are Views. `ChecklistListCubit` and `ChecklistDetailsCubit` are their
  ViewModels and expose immutable Freezed UI state.
- Views call focused Cubit methods such as `load` and `checklistSelected`.
  Selection emits a typed `Effect<ChecklistListEffect>` that a `BlocListener`
  consumes once before asking the router to open the details screen.
- `PageStateView` centralizes loading, empty, error, and retry behavior.

The list, details, repository, Cubits, and screen contract each have focused
tests. Demo data uses the same service interface as Retrofit, so no UI or Cubit
changes are needed to switch adapters.

Cubit is deliberate here: both flows have a small command surface and no need
for event transformation or concurrency policies. A full `Bloc<Event, State>`
is reserved for examples where explicit event streams make those concerns
clearer.

## Verification

```sh
flutter gen-l10n
dart run build_runner build
flutter analyze
flutter test
```
