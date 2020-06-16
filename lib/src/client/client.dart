import 'package:quiver/check.dart';
import 'package:stream/src/client/user.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/response.dart';
import 'package:stream/src/core/http/restio_client_adaptor.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/data.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/options/activity_marker.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/options/offset.dart';
import 'package:stream/src/core/options/request_option.dart';
import 'package:stream/src/core/region.dart';
import 'package:stream/src/core/utils/auth.dart';

import '../core/stream.dart';

class Client {
  final String secret;
  final Stream stream;

  Client(String key, this.secret, Uri baseURL, HTTPClient httpClient)
      : stream = Stream(key, baseURL, httpClient);

  T getHTTPClientImplementation<T>() {
    return stream.getHTTPClientImplementation();
  }

  Token frontendToken(String userID, [DateTime expiresAt]) {
    return Auth.buildFrontendToken(secret, userID, expiresAt);
  }

  Future<Response> addActivity(FeedID feed, Activity activity) {
    return addActivities(feed, [activity]);
  }

  Future<Response> addActivities(FeedID feed, List<Activity> activities) {
    final token = Auth.buildFeedToken(secret, TokenAction.WRITE, feed);
    return stream.addActivities(token, feed, activities);
  }

  Future<Response> getActivities(
    FeedID feed,
    List<RequestOption> options,
  ) {
    final token = Auth.buildFeedToken(secret, TokenAction.READ, feed);
    return stream.getActivities(token, feed, options);
  }

  static ClientBuilder builder(String apiKey, String secret) {
    return ClientBuilder(apiKey, secret);
  }

  User user(String userID) {
    return User(this, userID);
  }

  Future<Response> getUser(String id) {
    final token = Auth.buildUsersToken(secret, TokenAction.READ);
    return stream.getUser(token, id, false);
  }

  Future<Response> getOrCreateUser(String id, Data data) {
    final token = Auth.buildUsersToken(secret, TokenAction.WRITE);
    return stream.createUser(token, id, data, true);
  }

  reactions() {}
}

class ClientBuilder {
  static final String DEFAULT_HOST = "stream-io-api.com";

  final String _apiKey;
  final String _secret;
  HTTPClient _httpClient;

  String _scheme = 'https';
  String _region = Region.US_EAST().toString();
  String _host = DEFAULT_HOST;
  int _port = 443;

  ClientBuilder(this._apiKey, this._secret) {
    checkNotNull(_apiKey, message: "API key can't be null");
    checkNotNull(_secret, message: "Secret can't be null");
    checkArgument(_apiKey.isNotEmpty, message: "API key can't be empty");
    checkArgument(_secret.isNotEmpty, message: "Secret can't be empty");
  }

  ClientBuilder httpClient(HTTPClient httpClient) {
    checkNotNull(httpClient, message: "HTTP client can't be null");
    _httpClient = httpClient;
    return this;
  }

  ClientBuilder scheme(String scheme) {
    checkNotNull(scheme, message: "Scheme can't be null");
    checkArgument(scheme.isNotEmpty, message: "Scheme can't be empty");
    _scheme = scheme;
    return this;
  }

  ClientBuilder host(String host) {
    checkNotNull(host, message: "Host can't be null");
    checkArgument(host.isNotEmpty, message: "Host can't be empty");
    _host = host;
    return this;
  }

  ClientBuilder port(int port) {
    checkArgument(port > 0,
        message: 'Port has to be a non-zero positive number');
    _port = port;
    return this;
  }

  ClientBuilder region(Region region) {
    checkNotNull(region, message: "Region can't be null");
    _region = region.toString();
    return this;
  }

  ClientBuilder regionString(String region) {
    checkNotNull(region, message: "Region can't be null");
    checkArgument(region.isNotEmpty, message: "Region can't be empty");
    _region = region;
    return this;
  }

  String buildHost() {
    final sb = StringBuffer();
    if (_host == DEFAULT_HOST) {
      sb.write(_region);
      sb.write('.');
    }
    sb.write(_host);
    return sb.toString();
  }

  Client build() {
    _httpClient ??= RestioClientAdaptor();
    return Client(_apiKey, _secret,
        Uri(scheme: _scheme, host: buildHost(), port: _port), _httpClient);
  }
}
