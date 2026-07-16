import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Playground'**
  String get appTitle;

  /// No description provided for @signInTitle.
  ///
  /// In en, this message translates to:
  /// **'Learn with a real app flow'**
  String get signInTitle;

  /// No description provided for @signInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Start with authentication on main, then explore one focused concept per branch.'**
  String get signInSubtitle;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @demoCredentials.
  ///
  /// In en, this message translates to:
  /// **'Demo: {email} / {password}'**
  String demoCredentials(String email, String password);

  /// No description provided for @requiredCredentials.
  ///
  /// In en, this message translates to:
  /// **'Email and password are required.'**
  String get requiredCredentials;

  /// No description provided for @invalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Those credentials are not valid.'**
  String get invalidCredentials;

  /// No description provided for @invalidServerResponse.
  ///
  /// In en, this message translates to:
  /// **'The server returned an incomplete response.'**
  String get invalidServerResponse;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Check your connection and try again.'**
  String get networkError;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get unknownError;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @homeLabel.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeLabel;

  /// No description provided for @accountLabel.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountLabel;

  /// No description provided for @accountTitle.
  ///
  /// In en, this message translates to:
  /// **'Your account'**
  String get accountTitle;

  /// No description provided for @aboutThisPlayground.
  ///
  /// In en, this message translates to:
  /// **'About this playground'**
  String get aboutThisPlayground;

  /// No description provided for @aboutThisPlaygroundBody.
  ///
  /// In en, this message translates to:
  /// **'A mobile-only branch-driven app for learning production Flutter patterns.'**
  String get aboutThisPlaygroundBody;

  /// No description provided for @dashboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Playground'**
  String get dashboardTitle;

  /// No description provided for @dashboardHeadline.
  ///
  /// In en, this message translates to:
  /// **'Authentication foundation complete'**
  String get dashboardHeadline;

  /// No description provided for @dashboardBody.
  ///
  /// In en, this message translates to:
  /// **'This branch demonstrates routing, MVVM Cubit state, dependency injection, token persistence, Dio interceptors, Retrofit DTOs, localization, and focused tests.'**
  String get dashboardBody;

  /// No description provided for @checklistDashboardBody.
  ///
  /// In en, this message translates to:
  /// **'Checklist data now flows from a guarded API boundary through repositories and immutable Cubit state into stateless widgets.'**
  String get checklistDashboardBody;

  /// No description provided for @sessionStored.
  ///
  /// In en, this message translates to:
  /// **'Session stored locally'**
  String get sessionStored;

  /// No description provided for @signedInAs.
  ///
  /// In en, this message translates to:
  /// **'Signed in as {email}'**
  String signedInAs(String email);

  /// No description provided for @checklistsTitle.
  ///
  /// In en, this message translates to:
  /// **'Checklists'**
  String get checklistsTitle;

  /// No description provided for @searchChecklists.
  ///
  /// In en, this message translates to:
  /// **'Search checklists'**
  String get searchChecklists;

  /// No description provided for @noChecklists.
  ///
  /// In en, this message translates to:
  /// **'No checklists are available.'**
  String get noChecklists;

  /// No description provided for @addFavorite.
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get addFavorite;

  /// No description provided for @removeFavorite.
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get removeFavorite;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get retry;

  /// No description provided for @refreshFailed.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed. Existing content is still available.'**
  String get refreshFailed;

  /// No description provided for @checklistDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Checklist details'**
  String get checklistDetailsTitle;

  /// No description provided for @checklistNotFound.
  ///
  /// In en, this message translates to:
  /// **'This checklist could not be found.'**
  String get checklistNotFound;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @appGroupLabel.
  ///
  /// In en, this message translates to:
  /// **'App group'**
  String get appGroupLabel;

  /// No description provided for @createdLabel.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get createdLabel;

  /// No description provided for @updatedLabel.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updatedLabel;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'Not available'**
  String get notAvailable;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
