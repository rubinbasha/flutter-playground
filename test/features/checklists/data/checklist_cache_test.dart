import 'package:flutter_playground/features/checklists/data/checklist_cache.dart';
import 'package:flutter_playground/features/checklists/domain/checklist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('round-trips validated checklist summaries', () async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();
    final cache = ChecklistCache(preferences);
    const items = [
      ChecklistSummary(id: 'one', name: 'One', categoryName: 'Safety'),
    ];

    await cache.save(items);
    final restored = cache.load();

    expect(restored, items);
  });
}
