import 'package:stream/src/client/client.dart';
import 'package:stream/src/cloud/cloud_client.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/activity.dart';
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

  group('cloud feed ', () {
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
    });

    test('addActivities', () async {
      var client = CloudClient.builder(apiKey, token, userID).build();

      var activity = Activity(actor: actorID, verb: 'test', object: "test");
      final feed = client.flatFeed('flat', userID);
      var result = await feed.addActivities([activity]);
      expect(result, isNotNull);
    });

    test('reaction', () async {
      var client = CloudClient.builder(apiKey, token, userID).build();
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
