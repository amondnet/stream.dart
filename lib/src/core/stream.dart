import 'dart:convert';

import 'package:quiver/check.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/http/response.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/data.dart';
import 'package:stream/src/core/options/custom_query_parameter.dart';
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
    final payload = ActivityRequest(activities);
    return httpClient.execute(Requests.buildPost(
        Routes.buildFeedURL(baseUri, feed, '/'), key, token, payload));
  }

  Future<Response> getActivities(
      Token token, FeedID feed, List<RequestOption> options) {
    checkNotNull(options, message: 'Missing request options');
    final url = Routes.buildFeedURL(baseUri, feed, '/');
    return httpClient.execute(Requests.buildGet(url, key, token, options));
  }

  Future<Response> getUser(Token token, String id, bool withFollowCounts) {
    checkNotNull(id, message: 'Missing user ID');
    checkArgument(id.isNotEmpty, message: 'Missing user ID');
    final url = Routes.buildUsersURL(baseUri, id + '/');
    return httpClient.execute(Requests.buildGet(url, key, token, [
      CustomQueryParameter('with_follow_counts', withFollowCounts.toString())
    ]));
  }

  Future<Response> createUser(
      Token token, String userId, Data userData, bool getOrCreate) {
    checkNotNull(userId, message: 'Missing user ID');
    checkNotNull(userData, message: 'Missing user data');
    checkArgument(userId.isNotEmpty, message: 'Missing user ID');

    final payload = {'id': userId, 'data': userData.data};
    final url = Routes.buildUsersURL(baseUri);

    return httpClient.execute(Requests.buildPost(url, key, token, payload,
        [CustomQueryParameter('get_or_create', getOrCreate.toString())]));
  }

  Future<Response> getEnrichedActivities(
      Token token, FeedID feed, List<RequestOption> options) {
    checkNotNull(options, message: 'Missing request options');

    final url = Routes.buildEnrichedFeedURL(baseUri, feed, '/');
    return httpClient.execute(Requests.buildGet(url, key, token, options));
  }
}
