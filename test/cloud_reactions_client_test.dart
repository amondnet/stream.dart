import 'package:stream/src/client/client.dart';
import 'package:stream/src/cloud/cloud_client.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/models/reaction.dart';
import 'package:stream/src/core/region.dart';
import 'package:test/test.dart';

void main() {
  group('CloudReactionsClientTest', () {
    setUp(() {});

    test('First Test', () async {
      var client = ClientBuilder(apiKey, secret).region(Region.TOKYO()).build();
      var token = client.frontendToken('user-id');
      var cloudClient = CloudClientBuilder(apiKey, token, 'user-id')
          .region(Region.TOKYO())
          .build();

      var data = Reaction(
          activityID: 'ed2837a6-0a3b-4679-adc1-778a1704852d', kind: 'like');
      var reply = await cloudClient
          .reactions()
          .add('user-id', data, [FeedID('flat', '1')]);

      var result = await cloudClient.reactions().get(reply.id);
    });
  });
}
