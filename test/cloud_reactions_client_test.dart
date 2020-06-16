import 'dart:io';

import 'package:stream/src/client/client.dart';
import 'package:stream/src/cloud/cloud_client.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/activity.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/models/reaction.dart';
import 'package:stream/src/core/options/enrichment_flags.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/options/offset.dart';
import 'package:stream/src/core/region.dart';
import 'package:stream/src/core/utils/enrichment.dart';
import 'package:test/test.dart';

final apiKey = 'gp6e8sxxzud6';
final secret =
    '7j7exnksc4nxy399fdxvjqyqsqdahax3nfgtp27pumpc7sfm9um688pzpxjpjbf2';
final userID = 'db07b4a3-8f48-41f7-950c-b228364496e1';
final token = buildToken();

void main() {
  String actorID;

  group('CloudReactionsClientTest', () {
    setUp(() async {
      var user = await Client.builder(apiKey, secret)
          .build()
          .user(userID)
          .getOrCreate();

      actorID = Enrichment.createUserReference(user.id);
    });
    test('addActivity', () async {
      var client = CloudClient.builder(apiKey, token, userID).build();

      var activity = Activity(actor: actorID, verb: 'test', object: "test");
      final feed = client.flatFeed('flat', userID);
      var result = await feed.addActivity(activity);
      expect(result, isNotNull);
      print(result.id);
    });

    test('get', () async {
      var client = CloudClient.builder(apiKey, token, userID).build();
      var activities = await client
          .flatFeed('flat', userID)
          .getActivities(Limit(1), Offset(0), Filter(), null);

      print(activities.first);
      print(activities.first.id);
      print(activities.first.extra);
    });

    test('First Test', () async {
      var cloudClient = CloudClientBuilder(apiKey, token, 'user-id')
          //.region(Region.TOKYO())
          .build();
      var data = Reaction(
          activityID: '1eb19c99-af8e-11ea-9281-1231d51167b4', kind: 'like');
      var reply = await cloudClient
          .reactions()
          .add(userID, data, [FeedID('flat', userID)]);

      var result = await cloudClient.reactions().get(reply.id);
      print(result);
    });

    test('get Test', () async {
      var cloudClient = CloudClientBuilder(apiKey, token, 'user-id')
          //.region(Region.TOKYO())
          .build();
      var data = Reaction(
          activityID: '1eb19c99-af8e-11ea-9281-1231d51167b4', kind: 'like');
      var enrichedActivities = await cloudClient
          .flatFeed('flat', userID)
          .getEnrichedActivities(
              enrichmentFlags: EnrichmentFlags().withReactionCounts());

      print(enrichedActivities);
    });
  });
}

Token buildToken() {
  try {
    return ClientBuilder(apiKey, secret).build().frontendToken(userID);
  } catch (e) {
    return null;
  }
}
