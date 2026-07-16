# Branching strategy

The repository is an experimentation graph. `main` establishes authentication.
`mvi` adds the shared checklist use case and becomes the base for isolated
examples. The full-featured branches merge those examples to expose integration
tradeoffs.

```mermaid
gitGraph
  commit id: "main: auth"
  branch mvi
  commit id: "checklist contracts"
  branch websocket
  commit id: "realtime"
  checkout mvi
  branch local-cache
  commit id: "offline fallback"
  checkout mvi
  branch paging
  commit id: "incremental loading"
  checkout mvi
  branch search
  commit id: "debounced search"
  branch pull-to-refresh
  commit id: "refresh"
  checkout mvi
  branch favorites
  commit id: "local favorites"
  checkout mvi
  branch bottom-navigation
  commit id: "authenticated tabs"
  checkout websocket
  branch full-featured
  merge local-cache
  merge search
  merge favorites
  merge pull-to-refresh
  branch full-featured-with-paging
  merge paging
  branch full-featured-with-bottom-navigation
  merge bottom-navigation
```

Isolated branches intentionally avoid depending on sibling branches. Each one
can be diffed against `mvi` to show only the concept under experimentation.
