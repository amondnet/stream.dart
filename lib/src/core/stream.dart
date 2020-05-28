import 'package:stream/src/core/http/http_client.dart';

class Stream {
  final String key;
  final Uri baseUri;
  final HTTPClient httpClient;

  Stream(this.key, this.baseUri, this.httpClient);

  getHTTPClientImplementation() {}
}
