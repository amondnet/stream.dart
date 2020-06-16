class StreamError extends Error {
  final Object message;

  StreamError([this.message]);

  @override
  String toString() {
    if (message != null) {
      return 'StreamError : ${Error.safeToString(message)}';
    }
    return 'StreamError';
  }
}
