# MVI conventions

Each screen-level Bloc exposes three explicit contracts:

- **Intent** is an immutable user or lifecycle input sent with `bloc.add`.
- **State** is the durable, immutable model rendered by widgets.
- **Effect** is a one-off UI instruction such as navigation, a snackbar, a
  dialog, or focus movement.

Effects are stored as `Event<Effect>` in state and consumed through
`BlocListener.getContentIfNotConsumed()`. A fresh wrapper is created for each
effect so rebuilds or multiple listeners cannot handle it twice.

This is a project convention, not Flutter's single prescribed architecture.
Flutter's architecture guide recommends unidirectional data flow and presents
MVVM by default, while allowing `flutter_bloc` as an alternative state tool.
The Bloc API maps cleanly to MVI because a `Bloc<Intent, State>` transforms
typed input events into immutable output states. `BlocListener` is the package's
standard widget for navigation, snackbars, dialogs, and other reactions that
run once per state change.

References:

- <https://docs.flutter.dev/app-architecture/recommendations>
- <https://docs.flutter.dev/app-architecture/case-study>
- <https://bloclibrary.dev/bloc-concepts/>
- <https://pub.dev/packages/flutter_bloc#bloclistener>
