# WebSocket updates

The `websocket` branch layers realtime changes on top of the initial REST load.

- `ChecklistUpdatesSocket` owns channel lifecycle and raw messages.
- `ChecklistUpdatesRepository` parses messages, drops malformed JSON, validates
  required fields, and filters detail updates to the selected checklist.
- List and detail Cubits subscribe only after REST content succeeds.
- Cubit `close()` cancels its subscription, which closes the underlying stream
  when no consumer remains.
- Realtime errors never replace valid REST content.

Production WebSocket URLs come from `CHECKLIST_ITEMS_WS_URL` and
`CHECKLIST_DETAILS_WS_URL`. The details URL uses a `{checklistId}` placeholder.
The demo environment emits one deterministic update so the behavior is visible
without a backend.
