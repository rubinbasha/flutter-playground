# Authenticated bottom navigation

The `bottom-navigation` branch demonstrates persistent mobile tabs with
`StatefulShellRoute.indexedStack`.

- Login remains outside the authenticated shell.
- Dashboard and account are independent shell branches whose navigation stacks
  are retained when switching tabs.
- `AuthenticatedShell` owns the shared app bar, logout action, auth listener,
  and Material 3 `NavigationBar`.
- Tapping the selected tab again returns that branch to its initial location.
- Checklist details remain a full-screen route above the shell.

`PlaygroundBottomNavigationBar` is a small presentational contract, so its labels
and selection callback can be widget-tested without constructing a router.
