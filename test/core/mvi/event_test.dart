import 'package:flutter_playground/core/mvi/event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('content can be consumed only once', () {
    final event = Event('open-dashboard');

    expect(event.getContentIfNotConsumed(), 'open-dashboard');
    expect(event.getContentIfNotConsumed(), isNull);
    expect(event.isConsumed(), isTrue);
  });

  test('peek does not consume content', () {
    final event = Event('show-message');

    expect(event.peekContent(), 'show-message');
    expect(event.isConsumed(), isFalse);
  });
}
