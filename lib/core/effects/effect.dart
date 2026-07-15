/// Wraps a one-off UI command so it is handled only once.
final class Effect<T extends Object> {
  Effect(this._content);

  final T _content;
  bool _isConsumed = false;

  /// Returns the content once, then returns `null` to later consumers.
  T? getContentIfNotConsumed() {
    if (_isConsumed) {
      return null;
    }
    _isConsumed = true;
    return _content;
  }

  /// Returns the content without consuming it.
  T peekContent() => _content;

  /// Prevents future consumption.
  void invalidate() => _isConsumed = true;

  bool isConsumed() => _isConsumed;
}
