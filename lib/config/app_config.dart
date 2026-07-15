abstract final class AppConfig {
  static const bool useRealApi = bool.fromEnvironment('USE_REAL_API');

  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://checkitonline.de/apicheckittest/api/',
  );

  static const String checklistItemsWebSocketUrl = String.fromEnvironment(
    'CHECKLIST_ITEMS_WS_URL',
    defaultValue: 'wss://example.invalid/checklists/updates',
  );

  static const String checklistDetailsWebSocketUrl = String.fromEnvironment(
    'CHECKLIST_DETAILS_WS_URL',
    defaultValue: 'wss://example.invalid/checklists/{checklistId}/updates',
  );

  static const String environment = useRealApi ? 'production' : 'demo';
}
