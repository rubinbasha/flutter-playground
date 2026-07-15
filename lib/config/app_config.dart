abstract final class AppConfig {
  static const bool useRealApi = bool.fromEnvironment(
    'USE_REAL_API',
    defaultValue: true,
  );

  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://checkitonline.de/apicheckittest/api/',
  );

  static const String environment = useRealApi ? 'production' : 'demo';
}
