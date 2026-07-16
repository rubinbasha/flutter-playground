# Flutter Playground

A branch-driven Flutter demo used for experimentation, inspired by the
progression in `rubinbasha/compose-playground`. It uses the architecture and
engineering conventions from `roe_risk_checkit`, reduced to focused examples.
The generated application targets Android and iOS only.

The app uses the real API adapter by default. For deterministic experimentation
and tests, start it with `--dart-define=USE_REAL_API=false` and sign in with:

```text
demo@example.com
playground
```

## Experiment branches

Each feature branch starts from `mvi`, explores one idea in isolation, and stays
runnable. Combined branches demonstrate how the pieces interact.

| Branch | Experiment focus |
| --- | --- |
| `main` | Auth API boundary, MVVM Cubit, routing, DI, token persistence |
| `mvi` | MVVM checklist list/details, immutable state, layered tests |
| `websocket` | Lifecycle-safe realtime updates |
| `local-cache` | Offline checklist fallback |
| `paging` | Incremental loading and list state |
| `search` | Debounced query state and filtering |
| `favorites` | Local user preference state |
| `pull-to-refresh` | Explicit refresh without losing content |
| `bottom-navigation` | `StatefulShellRoute` and authenticated tabs |
| `full-featured` | Realtime, cache, search, favorites, and refresh combined |
| `full-featured-with-paging` | Full feature set with incremental loading |
| `full-featured-with-bottom-navigation` | Full feature set with persistent tabs |

See [docs/branching-strategy.md](docs/branching-strategy.md) for the graph and
[docs/README.md](docs/README.md) for implementation notes.

## Project structure

Repository domains live under `lib/core/repositories/<domain>/`. Each domain
owns its API clients, DTOs, services, persistence or realtime adapters,
validated models, and repository coordination. Feature directories contain the
presentation code that consumes those domains, so repository ownership is
independent of any particular screen.

Screen logic follows MVVM: widgets are Views, Cubits are ViewModels, and
immutable state drives rendering. One-off typed effects are consumed through
`BlocListener`. See [docs/mvvm-conventions.md](docs/mvvm-conventions.md).

## Run

```sh
flutter pub get
flutter gen-l10n
dart run build_runner build
flutter run
```

To use the deterministic demo service instead of the default Retrofit adapter:

```sh
flutter run \
  --dart-define=USE_REAL_API=false
```

## Quality gates

```sh
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
```
