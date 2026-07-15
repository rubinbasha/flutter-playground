import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/core/widgets/page_state_view.dart';
import 'package:flutter_playground/features/auth/presentation/auth_cubit.dart';
import 'package:flutter_playground/features/auth/presentation/login_screen.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_screen.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_list_cubit.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    required this.authCubit,
    required this.checklistListCubit,
    super.key,
  });

  static const String route = '/dashboard';

  final AuthCubit authCubit;
  final ChecklistListCubit checklistListCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: authCubit),
        BlocProvider.value(value: checklistListCubit),
      ],
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == AuthStatus.unauthenticated) {
          context.go(LoginScreen.route);
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
        body: SafeArea(
          child: BlocConsumer<ChecklistListCubit, ChecklistListState>(
            listenWhen: (previous, current) =>
                previous.isRefreshing &&
                !current.isRefreshing &&
                current.failure != null,
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(context.l10n.refreshFailed)),
              );
            },
            builder: (context, state) {
              final cubit = context.read<ChecklistListCubit>();
              return ChecklistListContent(
                state: state,
                email: context.watch<AuthCubit>().state.email,
                onRetry: cubit.load,
                onRefresh: cubit.refresh,
                onLoadMore: cubit.loadNextPage,
                onQueryChanged: cubit.searchChanged,
                onToggleFavorite: cubit.toggleFavorite,
                onSelected: (id) => context.go(ChecklistDetailsScreen.path(id)),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ChecklistListContent extends StatelessWidget {
  const ChecklistListContent({
    required this.state,
    required this.email,
    required this.onRetry,
    required this.onRefresh,
    required this.onLoadMore,
    required this.onQueryChanged,
    required this.onToggleFavorite,
    required this.onSelected,
    super.key,
  });

  final ChecklistListState state;
  final String email;
  final VoidCallback onRetry;
  final Future<void> Function() onRefresh;
  final VoidCallback onLoadMore;
  final ValueChanged<String> onQueryChanged;
  final ValueChanged<String> onToggleFavorite;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.extentAfter < 240) {
          onLoadMore();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
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
            TextField(
              key: const Key('checklistSearchField'),
              decoration: InputDecoration(
                labelText: context.l10n.searchChecklists,
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: onQueryChanged,
            ),
            const SizedBox(height: 8),
            PageStateView(
              isLoading:
                  state.status == ChecklistListStatus.initial ||
                  state.status == ChecklistListStatus.loading,
              isEmpty: state.items.isEmpty,
              failure: state.items.isEmpty ? state.failure : null,
              onRetry: onRetry,
              emptyMessage: context.l10n.noChecklists,
              child: Column(
                children: [
                  for (final item in state.items)
                    _ChecklistCard(
                      item: item,
                      isFavorite: state.favoriteIds.contains(item.id),
                      onToggleFavorite: onToggleFavorite,
                      onSelected: onSelected,
                    ),
                  if (state.isLoadingMore)
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChecklistCard extends StatelessWidget {
  const _ChecklistCard({
    required this.item,
    required this.isFavorite,
    required this.onToggleFavorite,
    required this.onSelected,
  });

  final ChecklistSummary item;
  final bool isFavorite;
  final ValueChanged<String> onToggleFavorite;
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
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              key: Key('favorite-${item.id}'),
              tooltip: isFavorite
                  ? context.l10n.removeFavorite
                  : context.l10n.addFavorite,
              onPressed: () => onToggleFavorite(item.id),
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
        onTap: () => onSelected(item.id),
      ),
    );
  }
}
