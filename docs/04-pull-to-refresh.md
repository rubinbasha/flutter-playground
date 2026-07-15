# Pull to refresh

The `pull-to-refresh` branch extends `search`, matching the source playground's
progression.

- `RefreshIndicator` provides the native mobile pull gesture and remains
  available for short or empty lists through `AlwaysScrollableScrollPhysics`.
- `ChecklistListCubit.refresh()` owns the request and exposes a dedicated
  `isRefreshing` flag.
- Existing items and the active query remain visible during refresh.
- A failed refresh keeps existing content and reports the failure through a
  localized snackbar.
- Concurrent initial loads and refreshes are rejected.
