import 'dart:convert';

import 'package:quiver/check.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/response.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/options/request_option.dart';
import 'package:stream/src/core/utils/requests.dart';

import 'models/activity.dart';
import 'models/feed_id.dart';
import 'stream_reactions.dart';
import 'utils/routes.dart';

class Stream {
  final String key;
  final Uri baseUri;
  final HTTPClient httpClient;

  Stream(this.key, this.baseUri, this.httpClient);

  getHTTPClientImplementation() {}

  StreamReactions reactions() {
    return StreamReactions(key, baseUri, httpClient);
  }

  Future<Response> addActivities(
      Token token, FeedID feed, List<Activity> activities) {
    checkNotNull(activities, message: 'No activities to add');
    final payload = jsonEncode({'activities': activities});
    return httpClient.execute(Requests.buildPost(
        Routes.buildFeedURL(baseUri, feed, '/'),
        key,
        token,
        utf8.encode(payload)));
  }

  Future<Response> getActivities(
      Token token, feed, List<RequestOption> options) {
    checkNotNull(options, message: 'Missing request options');
    final url = Routes.buildFeedURL(baseUri, feed, '/');
    return httpClient.execute(Requests.buildGet(url, key, token, options));
  }
}
