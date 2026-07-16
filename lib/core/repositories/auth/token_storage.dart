import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class TokenStorage {
  TokenStorage(this._preferences);

  static const String _accessTokenKey = 'auth.accessToken';
  static const String _emailKey = 'auth.email';

  final SharedPreferences _preferences;

  String? get accessToken => _preferences.getString(_accessTokenKey);

  String? get email => _preferences.getString(_emailKey);

  Future<void> saveSession({
    required String accessToken,
    required String email,
  }) async {
    await _preferences.setString(_accessTokenKey, accessToken);
    await _preferences.setString(_emailKey, email);
  }

  Future<void> clearSession() async {
    await _preferences.remove(_accessTokenKey);
    await _preferences.remove(_emailKey);
  }
}
