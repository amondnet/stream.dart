import 'package:stream/src/cloud/cloud_client.dart';
import 'package:stream/src/cloud/cloud_feed.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/enriched_activity.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/options/enrichment_flags.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/options/offset.dart';
import 'package:stream/src/core/options/ranking.dart';
import 'package:stream/src/core/utils/default_options.dart';

class CloudFlatFeed extends CloudFeed {
  CloudFlatFeed(CloudClient client, FeedID id) : super(client, id);

  Future<List<Activity>> getActivities(
      Limit limit, Offset offset, Filter filter, String ranking) {
    final options = ranking == null
        ? [limit, offset, filter, DefaultOptions.DEFAULT_MARKER]
        : [
            limit,
            offset,
            filter,
            DefaultOptions.DEFAULT_MARKER,
            Ranking(ranking)
          ];

    return client.getActivities(id, options).then((value) async {
      final map = Map.from(await value.body.json());
      print(map);
      final results = List.from(map['results']);
      return results.map((e) => Activity.fromJson(e)).toList();
    });
  }

  Future<List<EnrichedActivity>> getEnrichedActivities(
      {Limit limit,
      Offset offset,
      Filter filter,
      String ranking,
      EnrichmentFlags enrichmentFlags}) {
    limit ??= DefaultOptions.DEFAULT_LIMIT;
    offset ??= DefaultOptions.DEFAULT_OFFSET;
    filter ??= DefaultOptions.DEFAULT_FILTER;
    enrichmentFlags ??= DefaultOptions.DEFAULT_ENRICHMENT_FLAGS;

    final options = ranking == null
        ? [
            limit,
            offset,
            filter,
            DefaultOptions.DEFAULT_MARKER,
            enrichmentFlags
          ]
        : [
            limit,
            offset,
            filter,
            DefaultOptions.DEFAULT_MARKER,
            Ranking(ranking),
            enrichmentFlags
          ];

    return client.getEnrichedActivities(id, options).then((value) async {
      final map = Map.from(await value.body.json());
      print(map);
      final results = List.from(map['results']);
      return results.map((e) => EnrichedActivity.fromJson(e)).toList();
    });
  }
}
