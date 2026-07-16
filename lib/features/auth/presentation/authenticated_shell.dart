import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/auth/presentation/login_screen.dart';
import 'package:go_router/go_router.dart';

class AuthenticatedShell extends StatelessWidget {
  const AuthenticatedShell({
    required this.navigationShell,
    required this.authCubit,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final AuthCubit authCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: authCubit,
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (previous, current) => previous.effect != current.effect,
        listener: (context, state) {
          switch (state.effect?.getContentIfNotConsumed()) {
            case AuthOpenLogin():
              context.go(LoginScreen.route);
            case _:
              break;
          }
        },
        child: Builder(
          builder: (context) {
            final currentIndex = navigationShell.currentIndex;
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  currentIndex == 0
                      ? context.l10n.dashboardTitle
                      : context.l10n.accountTitle,
                ),
                actions: [
                  IconButton(
                    key: const Key('signOutButton'),
                    tooltip: context.l10n.signOut,
                    onPressed: context.watch<AuthCubit>().state.isSubmitting
                        ? null
                        : context.read<AuthCubit>().logout,
                    icon: const Icon(Icons.logout),
                  ),
                ],
              ),
              body: navigationShell,
              bottomNavigationBar: PlaygroundBottomNavigationBar(
                currentIndex: currentIndex,
                onSelected: (index) {
                  navigationShell.goBranch(
                    index,
                    initialLocation: index == currentIndex,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlaygroundBottomNavigationBar extends StatelessWidget {
  const PlaygroundBottomNavigationBar({
    required this.currentIndex,
    required this.onSelected,
    super.key,
  });

  final int currentIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onSelected,
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
          label: context.l10n.homeLabel,
        ),
        NavigationDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: const Icon(Icons.person),
          label: context.l10n.accountLabel,
        ),
      ],
    );
  }
}
