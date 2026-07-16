import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/core/widgets/page_state_view.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_playground/features/checklists/presentation/checklist_details_cubit.dart';

class ChecklistDetailsScreen extends StatelessWidget {
  const ChecklistDetailsScreen({super.key});

  static const String route = '/dashboard/checklists/:checklistId';

  static String path(String checklistId) =>
      '/dashboard/checklists/${Uri.encodeComponent(checklistId)}';

  @override
  Widget build(BuildContext context) {
    return const ChecklistDetailsView();
  }
}

class ChecklistDetailsView extends StatelessWidget {
  const ChecklistDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.checklistDetailsTitle)),
      body: SafeArea(
        child: BlocBuilder<ChecklistDetailsCubit, ChecklistDetailsState>(
          builder: (context, state) {
            return PageStateView(
              isLoading:
                  state.status == ChecklistDetailsStatus.loading ||
                  state.status == ChecklistDetailsStatus.initial,
              isEmpty: state.details == null,
              failure: state.failure,
              onRetry: context.read<ChecklistDetailsCubit>().load,
              emptyMessage: context.l10n.checklistNotFound,
              child: state.details == null
                  ? const SizedBox.shrink()
                  : _ChecklistDetailsContent(details: state.details!),
            );
          },
        ),
      ),
    );
  }
}

class _ChecklistDetailsContent extends StatelessWidget {
  const _ChecklistDetailsContent({required this.details});

  final ChecklistDetails details;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(details.name, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        _DetailRow(
          icon: Icons.category_outlined,
          label: context.l10n.categoryLabel,
          value: details.categoryName,
        ),
        _DetailRow(
          icon: Icons.groups_outlined,
          label: context.l10n.appGroupLabel,
          value: details.appGroupName,
        ),
        _DetailRow(
          icon: Icons.business_outlined,
          label: context.l10n.companyLabel,
          value: details.companyName,
        ),
        _DetailRow(
          icon: Icons.history_outlined,
          label: context.l10n.versionLabel,
          value: details.versionNumber,
        ),
        _DetailRow(
          icon: Icons.event_outlined,
          label: context.l10n.createdLabel,
          value: details.dateCreated,
        ),
        _DetailRow(
          icon: Icons.update_outlined,
          label: context.l10n.updatedLabel,
          value: details.lastUpdated,
        ),
        const SizedBox(height: 16),
        Text(
          details.description ?? context.l10n.notAvailable,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 24),
        Text(
          context.l10n.sectionsTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        if (details.sections.isEmpty)
          Text(context.l10n.noChecklistSections)
        else
          for (final section in details.sections)
            _ChecklistSectionCard(section: section),
      ],
    );
  }
}

class _ChecklistSectionCard extends StatelessWidget {
  const _ChecklistSectionCard({required this.section});

  final ChecklistSection section;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(section.name),
        subtitle: Text(context.l10n.fieldCount(section.fields.length)),
        children: [
          for (final field in section.fields)
            ListTile(
              leading: const Icon(Icons.text_fields_outlined),
              title: Text(field.name),
              subtitle: Text(
                field.fieldTypeName ??
                    field.fieldTypeId ??
                    context.l10n.notAvailable,
              ),
              trailing: Chip(
                label: Text(
                  field.isRequired
                      ? context.l10n.requiredFieldLabel
                      : context.l10n.optionalFieldLabel,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value ?? context.l10n.notAvailable),
    );
  }
}
