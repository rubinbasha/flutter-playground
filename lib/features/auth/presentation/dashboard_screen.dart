import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/core/widgets/page_state_view.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_screen.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({required this.checklistListCubit, super.key});

  static const String route = '/dashboard';

  final ChecklistListCubit checklistListCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: checklistListCubit,
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ChecklistListCubit, ChecklistListState>(
        builder: (context, state) {
          return ChecklistListContent(
            state: state,
            email: context.watch<AuthCubit>().state.email,
            onRetry: context.read<ChecklistListCubit>().load,
            onSelected: (id) => context.go(ChecklistDetailsScreen.path(id)),
          );
        },
      ),
    );
  }
}

class ChecklistListContent extends StatelessWidget {
  const ChecklistListContent({
    required this.state,
    required this.email,
    required this.onRetry,
    required this.onSelected,
    super.key,
  });

  final ChecklistListState state;
  final String email;
  final VoidCallback onRetry;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(
          context.l10n.dashboardHeadline,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(context.l10n.checklistDashboardBody),
        const SizedBox(height: 16),
        Card(
          child: ListTile(
            leading: const Icon(Icons.verified_user_outlined),
            title: Text(context.l10n.sessionStored),
            subtitle: Text(context.l10n.signedInAs(email)),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          context.l10n.checklistsTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        PageStateView(
          isLoading:
              state.status == ChecklistListStatus.initial ||
              state.status == ChecklistListStatus.loading,
          isEmpty: state.items.isEmpty,
          failure: state.failure,
          onRetry: onRetry,
          emptyMessage: context.l10n.noChecklists,
          child: Column(
            children: [
              for (final item in state.items)
                _ChecklistCard(item: item, onSelected: onSelected),
            ],
          ),
        ),
      ],
    );
  }
}

class _ChecklistCard extends StatelessWidget {
  const _ChecklistCard({required this.item, required this.onSelected});

  final ChecklistSummary item;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        key: Key('checklist-${item.id}'),
        title: Text(item.name),
        subtitle: Text(
          [
            item.categoryName,
            item.appGroupName,
          ].whereType<String>().join(' • '),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => onSelected(item.id),
      ),
    );
  }
}
