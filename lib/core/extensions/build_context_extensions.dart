import 'package:flutter/widgets.dart';
import 'package:flutter_playground/l10n/generated/app_localizations.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
