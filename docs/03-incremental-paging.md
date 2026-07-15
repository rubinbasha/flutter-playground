# Incremental paging

The `paging` branch models pages explicitly instead of hiding pagination in the
widget.

- `ChecklistRepository.getChecklists` accepts `limit` and `offset`, validates
  each row, and returns a strict `ChecklistPage` with `totalCount`.
- `ChecklistListCubit` separates initial loading from `isLoadingMore` and
  prevents duplicate page requests.
- The next page uses the number of validated visible rows as its offset and
  appends data without reordering earlier results.
- The list requests more content when less than 240 logical pixels remain and
  shows a footer progress indicator.
- Demo mode exposes 30 rows so paging is observable without a backend.
