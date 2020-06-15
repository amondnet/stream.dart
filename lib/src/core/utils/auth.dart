import 'package:corsac_jwt/corsac_jwt.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/feed_id.dart';

enum TokenAction { ANY, READ, WRITE, DELETE }

enum TokenResource {
  ANY,
  ACTIVITIES,
  ANALYTICS,
  ANALYTICS_REDIRECT,
  COLLECTIONS,
  FILES,
  FEED,
  FEED_TARGETS,
  FOLLOWER,
  OPEN_GRAPH,
  PERSONALIZATION,
  REACTIONS,
  USERS
}

class Auth {
  Auth._();

  static Token buildFrontendToken(String secret, String userID,
      [DateTime expiresAt]) {
    var signer = JWTHmacSha256Signer(secret);
    var builder = JWTBuilder()..setClaim('user_id', userID);
    if (expiresAt != null) {
      builder.expiresAt = expiresAt;
    }
    return Token(builder.getSignedToken(signer).toString());
  }

  static Token buildFeedToken(String secret, TokenAction action,
      [FeedID feed]) {
    if (feed == null) {
      return buildBackendToken(secret, TokenResource.FEED, action, '*');
    }
    return buildBackendToken(
        secret, TokenResource.FEED, action, feed.slug + feed.userID);
  }

  static Token buildBackendToken(
      String secret, TokenResource resource, TokenAction action, String feedID,
      [String userID]) {
    var signer = JWTHmacSha256Signer(secret);
    var builder = JWTBuilder()
      ..setClaim('resource', resource.toString())
      ..setClaim('action', action.toString())
      ..setClaim('feed_id', feedID);
    if (userID != null) {
      builder.setClaim('user_id', userID);
    }
    return Token(builder.getSignedToken(signer).toString());
  }
}
