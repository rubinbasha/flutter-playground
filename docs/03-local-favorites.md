# Local favorites

The `favorites` branch adds a small app-owned preference without changing the
server checklist contract.

- `FavoritesStore` persists only checklist IDs in `SharedPreferences`.
- `ChecklistListCubit` combines loaded content with the local ID set.
- Toggling a favorite updates immutable state after persistence completes.
- The UI uses accessible add/remove tooltips and leaves backend list order
  unchanged.

Favorite state belongs to the user preference boundary, not the network DTO or
repository. A production app could replace the store with a synced preference
repository without changing the widget contract.
