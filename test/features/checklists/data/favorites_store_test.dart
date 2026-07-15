import 'package:flutter_playground/features/checklists/data/favorites_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('persists favorite checklist ids', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final store = FavoritesStore(preferences);

    await store.save({'one', 'two'});

    expect(store.favoriteIds, {'one', 'two'});
  });
}
