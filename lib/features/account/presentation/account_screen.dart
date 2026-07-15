import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const String route = '/account';

  @override
  Widget build(BuildContext context) {
    final email = context.select((AuthCubit cubit) => cubit.state.email);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          CircleAvatar(
            radius: 36,
            child: Text(
              email.isEmpty ? '?' : email.characters.first.toUpperCase(),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            context.l10n.accountTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(email, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          Card(
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(context.l10n.aboutThisPlayground),
              subtitle: Text(context.l10n.aboutThisPlaygroundBody),
            ),
          ),
        ],
      ),
    );
  }
}
