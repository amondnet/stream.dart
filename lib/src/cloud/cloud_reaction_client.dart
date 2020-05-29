import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/stream_reactions.dart';

class CloudReactionClient {
  final Token token;
  final String userID;
  final StreamReactions reactions;

  CloudReactionClient(this.token, this.userID, this.reactions);
}
