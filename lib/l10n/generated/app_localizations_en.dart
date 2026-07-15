// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Playground';

  @override
  String get signInTitle => 'Learn with a real app flow';

  @override
  String get signInSubtitle =>
      'Start with authentication on main, then explore one focused concept per branch.';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get signIn => 'Sign in';

  @override
  String demoCredentials(String email, String password) {
    return 'Demo: $email / $password';
  }

  @override
  String get requiredCredentials => 'Email and password are required.';

  @override
  String get invalidCredentials => 'Those credentials are not valid.';

  @override
  String get invalidServerResponse =>
      'The server returned an incomplete response.';

  @override
  String get networkError => 'Check your connection and try again.';

  @override
  String get unknownError => 'Something went wrong. Please try again.';

  @override
  String get signOut => 'Sign out';

  @override
  String get dashboardTitle => 'Playground';

  @override
  String get dashboardHeadline => 'Authentication foundation complete';

  @override
  String get dashboardBody =>
      'This branch demonstrates routing, Cubit state, dependency injection, token persistence, Dio interceptors, Retrofit DTOs, localization, and focused tests.';

  @override
  String get checklistDashboardBody =>
      'Checklist data now flows from a guarded API boundary through repositories and immutable Cubit state into stateless widgets.';

  @override
  String get sessionStored => 'Session stored locally';

  @override
  String signedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get checklistsTitle => 'Checklists';

  @override
  String get noChecklists => 'No checklists are available.';

  @override
  String get retry => 'Try again';

  @override
  String get checklistDetailsTitle => 'Checklist details';

  @override
  String get checklistNotFound => 'This checklist could not be found.';

  @override
  String get categoryLabel => 'Category';

  @override
  String get appGroupLabel => 'App group';

  @override
  String get createdLabel => 'Created';

  @override
  String get updatedLabel => 'Updated';

  @override
  String get notAvailable => 'Not available';
}
