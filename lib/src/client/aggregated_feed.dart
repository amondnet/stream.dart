import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/models/group.dart';
import 'package:stream/src/core/options/activity_marker.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/options/offset.dart';
import 'package:stream/src/core/utils/default_options.dart';

import 'client.dart';
import 'feed.dart';

class AggregatedFeed extends Feed {
  AggregatedFeed(Client client, FeedID id) : super(client, id);

  Future<List<Group>> getActivities(
      {Limit limit = DefaultOptions.DEFAULT_LIMIT,
      Offset offset = DefaultOptions.DEFAULT_OFFSET,
      Filter filter,
      ActivityMarker marker}) {
    filter ??= DefaultOptions.DEFAULT_FILTER;
    marker ??= DefaultOptions.DEFAULT_MARKER;

    var options = [limit, offset, filter, marker];
    options.removeWhere((element) => element == null);
    return client.getActivities(id, options).then((response) async {
      var list = List.from(await response.body.json());
      return list.map((e) => Group.fromJson(e)).toList();
    });
  }

  Future<List<Group>> getCustomActivities(Type type,
      {Limit limit = DefaultOptions.DEFAULT_LIMIT,
      Offset offset = DefaultOptions.DEFAULT_OFFSET,
      Filter filter,
      ActivityMarker marker}) {
    filter ??= DefaultOptions.DEFAULT_FILTER;
    marker ??= DefaultOptions.DEFAULT_MARKER;

    var options = [limit, offset, filter, marker];
    options.removeWhere((element) => element == null);
    return client.getActivities(id, options).then((response) async {
      var list = List.from(await response.body.json());
      return list.map((e) => Group.fromJson(e)).toList();
    });
  }

  Future<List<Group>> getEnrichedActivities(Type type,
      {Limit limit = DefaultOptions.DEFAULT_LIMIT,
      Offset offset = DefaultOptions.DEFAULT_OFFSET,
      Filter filter,
      ActivityMarker marker}) {
    filter ??= DefaultOptions.DEFAULT_FILTER;
    marker ??= DefaultOptions.DEFAULT_MARKER;

    var options = [limit, offset, filter, marker];
    options.removeWhere((element) => element == null);
    return client.getActivities(id, options).then((response) async {
      var list = List.from(await response.body.json());
      return list.map((e) => Group.fromJson(e)).toList();
    });
  }
}
