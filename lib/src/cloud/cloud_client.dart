import 'package:quiver/check.dart';
import 'package:stream/src/cloud/cloud_flat_feed.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/response.dart';
import 'package:stream/src/core/http/restio_client_adaptor.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/options/request_option.dart';
import 'package:stream/src/core/region.dart';

import '../core/stream.dart';
import 'cloud_reactions_client.dart';

class CloudClient {
  final Token _token;
  final String _userID;
  final Stream _stream;

  CloudClient(
      String key, this._token, this._userID, Uri baseURL, HTTPClient httpClient)
      : _stream = Stream(key, baseURL, httpClient);

  static CloudClientBuilder builder(String apiKey, Token token, String userID) {
    return CloudClientBuilder(apiKey, token, userID);
  }

  T getHTTPClientImplementation<T>() {
    return _stream.getHTTPClientImplementation();
  }

  Token frontendToken(String userID, Date) {}

  CloudReactionsClient reactions() {
    return CloudReactionsClient(_token, _userID, _stream.reactions());
  }

  feed(String s, String t, Token token) {}

  Future<Response> addActivity(FeedID feed, Activity activity) {
    return _stream.addActivities(_token, feed, [activity]);
  }

  // TODO: add personalized feed versions
  CloudFlatFeed flatFeed(String slug, String userID) {
    return CloudFlatFeed(this, FeedID(slug, userID));
  }

  Future<Response> getActivities(FeedID feed, List<RequestOption> options) {
    return _stream.getActivities(_token, feed, options);
  }

  Future<Response> addActivities(FeedID feed, List<Activity> activities) {
    return _stream.addActivities(_token, feed, activities);
  }

  Future<Response> getEnrichedActivities(
      FeedID feed, List<RequestOption> options) {
    return _stream.getEnrichedActivities(_token, feed, options);
  }
}

class CloudClientBuilder {
  static final String DEFAULT_HOST = "stream-io-api.com";

  final String _apiKey;
  final Token _token;
  final String _userID;
  HTTPClient _httpClient;

  String _scheme = 'https';
  String _region = Region.US_EAST().toString();
  String _host = DEFAULT_HOST;
  int _port = 443;

  CloudClientBuilder(this._apiKey, this._token, this._userID) {
    checkNotNull(_apiKey, message: "API key can't be null");
    checkNotNull(_token, message: "Token can't be null");
    checkNotNull(_userID, message: "User ID can't be null");
    checkArgument(_apiKey.isNotEmpty, message: "API key can't be empty");
    checkArgument(_userID.isNotEmpty, message: "User ID can't be empty");
  }

  CloudClientBuilder httpClient(HTTPClient httpClient) {
    checkNotNull(httpClient, message: "HTTP client can't be null");
    _httpClient = httpClient;
    return this;
  }

  CloudClientBuilder scheme(String scheme) {
    checkNotNull(scheme, message: "Scheme can't be null");
    checkArgument(scheme.isNotEmpty, message: "Scheme can't be empty");
    _scheme = scheme;
    return this;
  }

  CloudClientBuilder host(String host) {
    checkNotNull(host, message: "Host can't be null");
    checkArgument(host.isNotEmpty, message: "Host can't be empty");
    _host = host;
    return this;
  }

  CloudClientBuilder port(int port) {
    checkArgument(port > 0,
        message: 'Port has to be a non-zero positive number');
    _port = port;
    return this;
  }

  CloudClientBuilder region(Region region) {
    checkNotNull(region, message: "Region can't be null");
    _region = region.toString();
    return this;
  }

  CloudClientBuilder regionString(String region) {
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

  CloudClient build() {
    _httpClient ??= RestioClientAdaptor();
    return CloudClient(_apiKey, _token, _userID,
        Uri(scheme: _scheme, host: buildHost(), port: _port), _httpClient);
  }
}
