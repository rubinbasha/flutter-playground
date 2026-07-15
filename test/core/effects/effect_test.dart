import 'package:flutter_playground/core/effects/effect.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('content can be consumed only once', () {
    final effect = Effect('open-dashboard');

    expect(effect.getContentIfNotConsumed(), 'open-dashboard');
    expect(effect.getContentIfNotConsumed(), isNull);
    expect(effect.isConsumed(), isTrue);
  });

  test('peek does not consume content', () {
    final effect = Effect('show-message');

    expect(effect.peekContent(), 'show-message');
    expect(effect.isConsumed(), isFalse);
  });
}
