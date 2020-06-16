import 'dart:async';
import 'dart:convert';

import 'package:quiver/check.dart';
import 'package:quiver/strings.dart';
import 'package:stream/src/core/http/http_client.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/models/reaction.dart';

import 'http/request.dart';
import 'http/token.dart';
import 'lookup_kind.dart';
import 'lookup_kind.dart';
import 'options/custom_query_parameter.dart';
import 'options/filter.dart';
import 'options/limit.dart';
import 'options/request_option.dart';
import 'utils/requests.dart';
import 'utils/routes.dart';

class StreamReactions {
  final String key;
  final Uri baseURL;
  final HTTPClient httpClient;

  StreamReactions(this.key, this.baseURL, this.httpClient);

  Future<Reaction> get(Token token, String id) {
    checkNotNull(id, message: "Reaction id can't be null");
    checkArgument(isNotBlank(id), message: "Reaction id can't be empty");

    final url = Routes.buildReactionsURL(baseURL, id + '/');
    return httpClient
        .execute(Requests.buildGet(url, key, token))
        .then((value) async {
      return Reaction.fromJson(await value.body.json());
    });
  }

  Future<List<Reaction>> filter(Token token, LookupKind lookup, String id,
      Filter filter, Limit limit, String kind) {
    checkNotNull(lookup, message: "Lookup kind can't be null");
    checkNotNull(id, message: "Reaction ID can't be null");
    checkArgument(id.isNotEmpty, message: "Reaction ID can't be empty");
    checkNotNull(filter, message: "Filter can't be null");
    checkNotNull(kind, message: "Kind can't be null");

    try {
      final url = Routes.buildReactionsURL(
          baseURL, lookup.kind + '/' + id + '/' + kind);
      RequestOption withActivityData = CustomQueryParameter(
          'with_activity_data', (lookup is ACTIVITY_WITH_DATA).toString());
      return httpClient
          .execute(Requests.buildGet(
              url, key, token, [filter, limit, withActivityData]))
          .then((response) async {
        final List list = await response.body.json();
        return list.map((e) => Reaction.fromJson(e)).toList();
      });
    } catch (e) {
      //throw  StreamException(e);
      throw e;
    }
  }

  Future<Reaction> add(
      Token token, String userID, Reaction reaction, List<FeedID> targetFeeds) {
    checkNotNull(reaction, message: "Reaction can't be null");
    checkArgument(reaction.activityID != null || reaction.parent != null,
        message: 'Reaction has to either have and activity ID or parent');
    checkArgument(reaction.activityID == null || reaction.parent == null,
        message: "Reaction can't have both activity ID and parent");
    if (reaction.activityID != null) {
      checkArgument(reaction.activityID.isNotEmpty,
          message: "Reaction activity ID can't be empty");
    }
    if (reaction.parent != null) {
      checkArgument(reaction.parent.isNotEmpty,
          message: "Reaction parent can't be empty");
    }
    checkNotNull(reaction.kind, message: "Reaction kind can't be null");
    checkArgument(reaction.kind.isNotEmpty,
        message: "Reaction kind can't be empty");

    var targetFeedIds = targetFeeds.map((e) => e.toString()).toList();

    var payload = <String, dynamic>{};

    payload['kind'] = reaction.kind;
    payload['target_feeds'] = targetFeedIds;
    if (reaction.activityID != null) {
      payload['activity_id'] = reaction.activityID;
    }
    if (userID != null || reaction.userID != null) {
      payload['user_id'] = userID ?? reaction.userID;
    }
    if (reaction.parent != null) {
      payload['parent'] = reaction.parent;
    }
    if (reaction.id != null) {
      payload['id'] = reaction.id;
    }
    if (reaction.extra != null) {
      payload['data'] = reaction.extra;
    }
    final json = payload;
    final url = Routes.buildReactionsURL(baseURL);
    return httpClient
        .execute(Requests.buildPost(url, key, token, json))
        .then((value) async => Reaction.fromJson(await value.body.json()));
  }

  Future<void> delete(Token token, String id) {
    checkNotNull(id, message: "Reaction id can't be null");
    checkArgument(id.isNotEmpty, message: "Reaction id can't be empty");

    try {
      final url = Routes.buildReactionsURL(baseURL, id + '/');
      return httpClient
          .execute(Requests.buildDelete(url, key, token))
          .then((response) {
        return response;
      });
    } catch (e) {
      throw e;
    }
  }
}
