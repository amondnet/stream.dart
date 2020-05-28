import 'dart:io';

import 'package:quiver/check.dart';

import 'http/token.dart';

class StreamAnalytics {
  final String key;
  final Uri baseUri;
  final HttpClient httpClient;

  StreamAnalytics(this.key, this.baseUri, this.httpClient);
}
