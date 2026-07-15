import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class FavoritesStore {
  FavoritesStore(this._preferences);

  static const String _key = 'checklists.favoriteIds';

  final SharedPreferences _preferences;

  Set<String> get favoriteIds =>
      _preferences.getStringList(_key)?.toSet() ?? const <String>{};

  Future<void> save(Set<String> ids) async {
    await _preferences.setStringList(_key, ids.toList(growable: false));
  }
}
