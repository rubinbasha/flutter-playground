import 'package:flutter/material.dart';
import 'package:flutter_playground/core/extensions/build_context_extensions.dart';
import 'package:flutter_playground/core/result/api_result.dart';

class PageStateView extends StatelessWidget {
  const PageStateView({
    required this.isLoading,
    required this.isEmpty,
    required this.onRetry,
    required this.emptyMessage,
    required this.child,
    this.failure,
    super.key,
  });

  final bool isLoading;
  final bool isEmpty;
  final FailureType? failure;
  final VoidCallback onRetry;
  final String emptyMessage;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(48),
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (failure != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.cloud_off_outlined, size: 40),
              const SizedBox(height: 12),
              Text(_failureMessage(context, failure!)),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(context.l10n.retry),
              ),
            ],
          ),
        ),
      );
    }
    if (isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(emptyMessage),
        ),
      );
    }
    return child;
  }

  String _failureMessage(BuildContext context, FailureType failure) {
    return switch (failure) {
      FailureType.network => context.l10n.networkError,
      FailureType.invalidResponse => context.l10n.invalidServerResponse,
      FailureType.validation ||
      FailureType.unauthorized ||
      FailureType.unknown => context.l10n.unknownError,
    };
  }
}
