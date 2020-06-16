import 'package:corsac_jwt/corsac_jwt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream/src/core/http/token.dart';
import 'package:stream/src/core/models/feed_id.dart';

part 'auth.freezed.dart';

@freezed
abstract class TokenAction implements _$TokenAction {
  const TokenAction._();
  factory TokenAction(String action) = _TokenAction;

  factory TokenAction.any() = TokenActionAny;

  factory TokenAction.read() = TokenActionRead;

  factory TokenAction.write() = TokenActionWrite;

  factory TokenAction.delete() = TokenActionDelete;

  static TokenAction ANY = TokenAction.any();
  static TokenAction READ = TokenAction.read();
  static TokenAction WRITE = TokenAction.write();
  static TokenAction DELETE = TokenAction.delete();

  @override
  String toString() {
    return when((action) => null,
        any: () => '*',
        read: () => 'read',
        write: () => 'write',
        delete: () => 'delete');
  }
}

//enum TokenAction { ANY, READ, WRITE, DELETE }

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

extension on TokenResource {
  String name() {
    switch (this) {
      case TokenResource.ANY:
        return '*';
      case TokenResource.ACTIVITIES:
        return 'activities';
      case TokenResource.ANALYTICS:
        return 'analytics';
      case TokenResource.ANALYTICS_REDIRECT:
        return 'redirect_and_track';
      case TokenResource.COLLECTIONS:
        return 'collections';
      case TokenResource.FILES:
        return 'files';
      case TokenResource.FEED:
        return 'feed';
      case TokenResource.FEED_TARGETS:
        return 'feed_targets';
      case TokenResource.FOLLOWER:
        return 'follower';
      case TokenResource.OPEN_GRAPH:
        return 'url';
      case TokenResource.PERSONALIZATION:
        return 'personalization';
      case TokenResource.REACTIONS:
        return 'reactions';
      case TokenResource.USERS:
        return 'users';
    }
    return null;
  }
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
      ..setClaim('resource', resource.name())
      ..setClaim('action', action.toString())
      ..setClaim('feed_id', feedID);
    if (userID != null) {
      builder.setClaim('user_id', userID);
    }
    return Token(builder.getSignedToken(signer).toString());
  }

  static Token buildUsersToken(String secret, TokenAction action) {
    return buildBackendToken(secret, TokenResource.USERS, action, '*');
  }

  static Token buildOpenGraphToken(String secret) {
    return buildBackendToken(
        secret, TokenResource.OPEN_GRAPH, TokenAction.READ, '*');
  }

  static Token buildFilesToken(String secret, TokenAction action) {
    return buildBackendToken(secret, TokenResource.FILES, action, '*');
  }

  static Token buildAnalyticsToken(String secret, TokenAction action) {
    return buildBackendToken(secret, TokenResource.ANALYTICS, action, '*');
  }

  static Token buildAnalyticsRedirectToken(String secret) {
    return buildBackendToken(
        secret, TokenResource.ANALYTICS_REDIRECT, TokenAction.ANY, '*');
  }

  static Token buildToTargetUpdateToken(
      String secret, FeedID feed, TokenAction action) {
    return buildBackendToken(
        secret, TokenResource.FEED_TARGETS, action, feed.slug + feed.userID);
  }

  static Token buildActivityToken(String secret, TokenAction action) {
    return buildBackendToken(secret, TokenResource.ACTIVITIES, action, '*');
  }

  static Token buildFollowToken(String secret, TokenAction action,
      [FeedID feed]) {
    if (feed != null) {
      return buildBackendToken(
          secret, TokenResource.FOLLOWER, action, feed.slug + feed.userID);
    }
    return buildBackendToken(secret, TokenResource.FOLLOWER, action, '*');
  }

  static Token buildCollectionsToken(String secret, TokenAction action) {
    return buildBackendToken(secret, TokenResource.COLLECTIONS, action, '*');
  }

  static Token buildPersonalizationToken(
      String secret, String userID, TokenAction action) {
    return buildBackendToken(
        secret, TokenResource.PERSONALIZATION, action, '*', userID ?? '*');
  }
}
