import 'package:flutter_playground/features/checklists/data/checklist_updates_repository.dart';
import 'package:flutter_playground/features/checklists/data/checklist_updates_socket.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockChecklistUpdatesSocket extends Mock
    implements ChecklistUpdatesSocket {}

void main() {
  test('drops malformed messages and maps a valid item update', () async {
    final socket = _MockChecklistUpdatesSocket();
    when(socket.watchItems).thenAnswer(
      (_) => Stream.fromIterable(['not-json', '{"id":"one","name":"Updated"}']),
    );
    final repository = ChecklistUpdatesRepository(socket);

    final updates = await repository.watchItems().toList();

    expect(updates, hasLength(1));
    expect(updates.single.id, 'one');
    expect(updates.single.name, 'Updated');
  });

  test('filters details updates for another checklist', () async {
    final socket = _MockChecklistUpdatesSocket();
    when(
      () => socket.watchDetails('one'),
    ).thenAnswer((_) => Stream.value('{"id":"two","name":"Other"}'));
    final repository = ChecklistUpdatesRepository(socket);

    final updates = await repository.watchDetails('one').toList();

    expect(updates, isEmpty);
  });
}
