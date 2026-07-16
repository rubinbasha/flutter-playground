import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_playground/features/auth/data/auth_service.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/auth/presentation/dashboard_screen.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    final cubit = context.read<AuthCubit>();
    _emailController = TextEditingController(text: cubit.state.email);
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous.effect != current.effect,
      listener: (context, state) {
        switch (state.effect?.getContentIfNotConsumed()) {
          case AuthOpenDashboard():
            context.go(DashboardScreen.route);
          case _:
            break;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: AutofillGroup(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Icon(
                            Icons.flutter_dash,
                            size: 56,
                            color: Theme.of(context).colorScheme.primary,
                            semanticLabel: context.l10n.appTitle,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            context.l10n.signInTitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(context.l10n.signInSubtitle),
                          const SizedBox(height: 24),
                          TextField(
                            key: const Key('emailField'),
                            controller: _emailController,
                            enabled: !context
                                .watch<AuthCubit>()
                                .state
                                .isSubmitting,
                            autofillHints: const [AutofillHints.email],
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: context.l10n.emailLabel,
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                            onChanged: context.read<AuthCubit>().emailChanged,
                          ),
                          const SizedBox(height: 16),
                          TextField(
                            key: const Key('passwordField'),
                            controller: _passwordController,
                            enabled: !context
                                .watch<AuthCubit>()
                                .state
                                .isSubmitting,
                            autofillHints: const [AutofillHints.password],
                            obscureText: true,
                            onSubmitted: (_) =>
                                context.read<AuthCubit>().login(),
                            decoration: InputDecoration(
                              labelText: context.l10n.passwordLabel,
                              prefixIcon: const Icon(Icons.lock_outline),
                            ),
                            onChanged: context
                                .read<AuthCubit>()
                                .passwordChanged,
                          ),
                          const SizedBox(height: 12),
                          const _AuthError(),
                          const SizedBox(height: 12),
                          FilledButton(
                            key: const Key('signInButton'),
                            onPressed:
                                context.watch<AuthCubit>().state.isSubmitting
                                ? null
                                : context.read<AuthCubit>().login,
                            child: context.watch<AuthCubit>().state.isSubmitting
                                ? const SizedBox.square(
                                    dimension: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(context.l10n.signIn),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            context.l10n.demoCredentials(
                              FakeAuthService.demoEmail,
                              FakeAuthService.demoPassword,
                            ),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AuthError extends StatelessWidget {
  const _AuthError();

  @override
  Widget build(BuildContext context) {
    final failure = context.select((AuthCubit cubit) => cubit.state.failure);
    final message = switch (failure) {
      null => null,
      FailureType.validation => context.l10n.requiredCredentials,
      FailureType.unauthorized => context.l10n.invalidCredentials,
      FailureType.invalidResponse => context.l10n.invalidServerResponse,
      FailureType.network => context.l10n.networkError,
      FailureType.unknown => context.l10n.unknownError,
    };
    if (message == null) {
      return const SizedBox.shrink();
    }

    return Semantics(
      liveRegion: true,
      child: Text(
        message,
        key: const Key('authError'),
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
