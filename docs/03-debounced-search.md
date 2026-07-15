# Debounced checklist search

The `search` branch keeps search as explicit feature state instead of filtering
inside the widget tree.

- The Cubit retains the backend-ordered source list privately.
- Query text is emitted immediately so the UI contract reflects user input.
- Filtering runs after a 300 ms debounce and matches name, category, or app
  group without reordering results.
- Clearing the query restores the original list.
- `close()` cancels the timer so no callback can emit after the Cubit lifecycle.

This branch filters the loaded page locally. Server-side search belongs in a
separate repository method when the API owns the query.
