import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/lookup_kind.dart';
import 'package:stream/src/core/models/feed_id.dart';
import 'package:stream/src/core/models/reaction.dart';
import 'package:stream/src/core/options/filter.dart';
import 'package:stream/src/core/options/limit.dart';
import 'package:stream/src/core/stream_reactions.dart';

class CloudReactionsClient {
  final Token token;
  final String userID;
  final StreamReactions reactions;

  CloudReactionsClient(this.token, this.userID, this.reactions);

  Future<Reaction> get(String id) {
    return reactions.get(token, id);
  }

  Future<List<Reaction>> filter(LookupKind lookup, String id,
      {Limit limit, Filter filter, String kind}) {
    return reactions.filter(token, lookup, id, filter, limit, kind);
  }

  Future<Reaction> add(
      String userID, Reaction reaction, List<FeedID> targetFeeds) {
    return reactions.add(token, userID, reaction, targetFeeds);
  }
}
