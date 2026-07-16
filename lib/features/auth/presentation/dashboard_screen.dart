import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/auth/presentation/login_screen.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const String route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous.effect != current.effect,
      listener: (context, state) {
        switch (state.effect?.getContentIfNotConsumed()) {
          case AuthOpenLogin():
            context.go(LoginScreen.route);
          case _:
            break;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.dashboardTitle),
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
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                Text(
                  context.l10n.dashboardHeadline,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(context.l10n.dashboardBody),
                const SizedBox(height: 24),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.verified_user_outlined),
                    title: Text(context.l10n.sessionStored),
                    subtitle: Text(
                      context.l10n.signedInAs(
                        context.watch<AuthCubit>().state.email,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
