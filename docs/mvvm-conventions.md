# MVVM and Cubit conventions

The playground uses a small, consistent MVVM mapping:

- **View** is the Flutter widget tree.
- **ViewModel** is a `Cubit<State>` that owns presentation logic and async work.
- **State** is the durable, immutable UI model rendered by the View.
- **Effect payload** is a typed one-off UI command such as navigation, a
  snackbar, dialog, or focus request.

One-off payloads are stored as `Event<T>` in state and consumed through
`BlocListener.getContentIfNotConsumed()`. A fresh wrapper is created for each
effect so rebuilds or multiple listeners cannot handle it twice.

Widgets render state, call focused Cubit methods, and perform the resulting UI
effect. They do not await repository calls to infer whether an operation
succeeded.

Cubits are provided at the narrowest scope that contains all consumers:

- `AuthCubit` is app-scoped above `MaterialApp.router`.
- Feature Cubits are created at their route or authenticated-shell boundary.
- Detail Cubits are route-scoped because their identity and lifetime are tied
  to one route parameter.

Screens do not accept Cubits in constructors. `BlocProvider(create: ...)` owns
and closes each scoped Cubit; `BlocProvider.value` is reserved for deliberately
re-exposing an existing instance.

Every feature uses Cubit so learners see one interaction model throughout the
branch graph. A full `Bloc<Event, State>` should only be considered if a future
requirement needs explicit event transformation or concurrency policies that
Cubit cannot express cleanly.

This stays within the APIs supported by `flutter_bloc` while following
Flutter's recommended separation of Views, ViewModels, repositories, and
services.

References:

- <https://docs.flutter.dev/app-architecture/guide>
- <https://bloclibrary.dev/bloc-concepts/>
- <https://pub.dev/packages/flutter_bloc#bloclistener>
