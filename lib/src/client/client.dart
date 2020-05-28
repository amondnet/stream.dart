import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/token.dart';

import '../core/stream.dart';

class Client {
  final String secret;
  final Stream stream;

  Client(String key, this.secret, Uri baseURL, HTTPClient httpClient)
      : stream = Stream(key, baseURL, httpClient);

  T getHTTPClientImplementation<T>() {
    return stream.getHTTPClientImplementation();
  }

  Token frontendToken(String userID, Date) {}
}
