# Flutter Playground

A branch-driven Flutter learning project inspired by the progression in
`rubinbasha/compose-playground`. It uses the architecture and engineering
conventions from `roe_risk_checkit`, reduced to examples that are small enough
to study. The generated application targets Android and iOS only.

The app runs in demo mode by default. Sign in with:

```text
learner@example.com
playground
```

## Learning branches

Each feature branch starts from `mvi`, teaches one idea in isolation, and stays
runnable. Combined branches demonstrate how the pieces interact.

| Branch | Learning focus |
| --- | --- |
| `main` | Auth API boundary, Cubit, routing, DI, token persistence |
| `mvi` | Immutable feature contracts, checklist list/details, layered tests |
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

## Run

```sh
flutter pub get
flutter gen-l10n
dart run build_runner build
flutter run
```

To exercise the real Retrofit adapter instead of the deterministic demo
service:

```sh
flutter run \
  --dart-define=USE_REAL_API=true \
  --dart-define=API_BASE_URL=https://example.com/api/
```

## Quality gates

```sh
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
```
