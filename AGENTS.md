# AGENTS.md

This guide keeps generated changes consistent with the demo's experimentation
goals and with the Flutter conventions adapted from `roe_risk_checkit`.

## Engineering approach

- Think before coding. State assumptions that affect product behavior, API
  contracts, persistence, navigation, or branch ancestry.
- Prefer the minimum implementation that demonstrates or solves the requested
  idea. Do not add speculative abstractions or configuration.
- Keep changes surgical. Preserve the style of the branch being edited and
  remove only unused code introduced by the current change.
- Define verifiable success criteria for multi-step work and loop through the
  relevant formatter, analyzer, and tests.
- Never commit, push, or publish unless the user explicitly requests it.

## Branch-driven experimentation

- `main` is the authentication foundation.
- `mvi` is the base for checklist feature experiments.
- Focused branches start from `mvi` and should demonstrate one concept.
- Combined branches merge focused branches; avoid reimplementing their changes.
- Keep every published branch runnable and document its focus in `docs/`.
- When changing branch relationships, update `README.md` and
  `docs/branching-strategy.md`.

## Flutter and Dart

- This is a mobile-only Flutter app. Keep Android and iOS targets; do not add
  web or desktop runners without an explicit request.
- Follow Effective Dart and run `dart format`.
- Prefer immutable values and `const` widgets where practical.
- Do not keep asynchronous work or business rules in widgets.
- Dispose controllers and subscriptions at their lifecycle boundary.
- Keep user-facing strings in ARB files and access them through `context.l10n`.
- Use shared theme tokens and widgets before introducing feature-local styling.
- Preserve accessibility labels, semantic announcements, and adequate touch
  targets.

## Structure

- Treat each repository as a domain package under
  `lib/core/repositories/<domain>/`.
- Keep a repository's API clients, DTOs, services, persistence adapters,
  realtime adapters, validated domain models, and coordination class together
  inside that package. Their ownership follows the domain, not a screen.
- Features live under `lib/features/<feature>/` and contain presentation code
  such as Cubits, screens, and feature-local widgets.
- Keep a feature's Cubit and screen close together.
- Other shared infrastructure lives under `lib/core/`; shared visual styling
  lives under `lib/theme/`.
- Technical implementation notes live under `docs/` and are updated with each
  materially new feature.

## State management

- Use `Cubit<State>` from `flutter_bloc` for screen state throughout the branch
  graph so every example uses one interaction model.
- Treat widgets as Views and their screen-level Cubits as ViewModels.
- Every screen-level Cubit exposes immutable `State` and defines typed effect
  payloads next to the Cubit when one-off UI work is needed.
- State is durable and renderable. Effects are one-off navigation, snackbar,
  dialog, or focus actions wrapped in `Event<T>` and consumed by a
  `BlocListener` with `getContentIfNotConsumed()`.
- Create a fresh `Event` wrapper for every effect; never reuse a consumed one.
- State flows down; widgets call focused Cubit methods for user actions.
- Widgets trigger repository-backed work without awaiting it to decide UI
  success. Cubits own the async work and emit the result.
- Do not introduce `Bloc<Event, State>` while Cubit can express the requirement
  cleanly.
- Provide Cubits at the narrowest widget-tree scope shared by their consumers.
  App-session Cubits belong above `MaterialApp.router`; feature Cubits belong at
  their route or shell boundary.
- Use `BlocProvider(create: ...)` so provider-owned Cubits are closed
  automatically. Reserve `BlocProvider.value` for an existing instance that is
  intentionally exposed to another subtree.
- Do not pass Cubits through screen constructors. Screen constructors accept
  route parameters or immutable display inputs.
- Keep navigation in screen listeners or router redirects, not repositories.
- Name persisted and in-edit values by role when both exist.

## Routing

- Use `go_router` and declare a static `route` on top-level screens.
- Build route parameters centrally and validate untrusted path/query values.
- Authenticated tab examples use `StatefulShellRoute.indexedStack`.

## Dependency injection and generation

- Use `get_it` with `injectable`; do not add a second DI pattern.
- Demo and production services use injectable environments.
- Use Freezed/json_serializable for immutable DTOs and state, and Retrofit for
  real HTTP adapters.
- Regenerate with `dart run build_runner build`.
- Do not manually edit `*.g.dart`, `*.freezed.dart`, or `injection.config.dart`.

## Networking and data

- Treat backend JSON as untrusted. Response DTO fields are nullable or have safe
  defaults at the network boundary.
- When an endpoint inconsistently returns a decoded JSON object or a JSON
  string, keep the Retrofit return type raw and normalize both shapes in its
  service before constructing the DTO.
- Give DTO properties idiomatic Dart names and use `@JsonKey(name: ...)` to
  isolate inconsistent backend casing or terminology.
- Validate required fields in repository domain packages before creating strict
  domain state.
- Keep app-owned request DTOs strict.
- Convert transport exceptions into controlled `ApiFailure` values.
- Preserve caught exception objects in `ApiFailure.originalError` so callers
  can inspect the underlying transport or persistence error when needed.
- Wrap Retrofit futures at the service boundary with `mapToApiResult()` so
  repositories receive `GenericResponse<T>` instead of handling Dio
  exceptions repeatedly.
- Repository domain packages map successful DTOs into validated domain values
  and propagate transport failures with `ApiFailure.copyWithType()`.
- Mark public requests explicitly; authenticated headers are added by the Dio
  interceptor.
- Preserve backend list order unless a feature explicitly owns reordering.
- Do not create domain wrappers when the DTO can be safely used directly; use a
  domain model only when validation or transformation creates a real boundary.

## Tests and quality

- Add unit tests at the layer where behavior lives and widget tests for visible
  state and callbacks.
- Name tests `*_test.dart` and keep them focused by feature or behavior.
- Prefer deterministic fakes and mocked transport boundaries over timing or
  live-network assumptions.
- Run `flutter gen-l10n`, code generation, `dart format`, `flutter analyze`, and
  `flutter test` after significant changes.
