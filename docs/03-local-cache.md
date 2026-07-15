# Local checklist fallback

The `local-cache` branch demonstrates a read-through offline fallback for the
small dashboard payload.

- Fresh, validated checklist summaries are encoded and stored after a
  successful request.
- Transport failures return cached summaries when a cache exists.
- Invalid cache JSON and malformed rows are ignored safely.
- A cache write failure never hides usable network data.
- Details remain network-backed because this branch only teaches the list
  fallback boundary.

`SharedPreferences` keeps the example dependency-light and is appropriate for
this tiny teaching payload. A production app with larger or queryable data
should keep the same repository contract and replace `ChecklistCache` with a
mobile database adapter.
