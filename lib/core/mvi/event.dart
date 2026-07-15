/// Wraps a one-off UI effect so only one listener handles it.
final class Event<T extends Object> {
  Event(this._content);

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
