import 'package:stream/src/core/models/feed_id.dart';

class Routes {
  static final String basePath = '/api/v1.0/';
  static final String analyticsPath = '/analytics/v1.0/';
  static final String personalizationPath = '/personalization/v1.0/';
  static final String analyticsSubdomain = 'analytics';
  static final String personalizationSubdomain = 'personalization';
  static final String activitiesPath = 'activities/';
  static final String activityUpdatePath = 'activity/';
  static final String addToManyPath = 'feed/add_to_many/';
  static final String followManyPath = 'follow_many/';
  static final String unfollowManyPath = 'unfollow_many/';
  static final String collectionsPath = 'collections/';
  static final String filesPath = 'files/';
  static final String imagesPath = 'images/';
  static final String openGraphPath = 'og/';
  static final String reactionsPath = 'reaction/';
  static final String toTargetUpdatePath = '/activity_to_targets/';
  static final String usersPath = 'user/';

  Routes._();

  static Uri buildFeedURL(Uri baseURL, FeedID feed, String path) {
    return baseURL.replace(path: basePath + _feedPath(feed) + path);
  }

  static Uri buildEnrichedFeedURL(Uri baseURL, FeedID feed, String path) {
    return baseURL.replace(path: basePath + _enrichedFeedPath(feed) + path);
  }

  static Uri buildToTargetUpdateURL(Uri baseURL, FeedID feed) {
    return baseURL.replace(
        path: basePath + _feedTargetsPath(feed) + toTargetUpdatePath);
  }

  static Uri buildActivitiesURL(Uri baseURL) {
    return baseURL.replace(path: basePath + activitiesPath);
  }

  static Uri buildEnrichedActivitiesURL(Uri baseURL) {
    return baseURL.replace(path: basePath + _enriched(activitiesPath));
  }

  static Uri buildCollectionsURL(Uri baseURL, String path) {
    return baseURL.replace(path: basePath + collectionsPath + path);
  }

  static Uri buildReactionsURL(Uri baseURL, [String path]) {
    return baseURL.replace(path: basePath + reactionsPath + path);
  }

  static Uri buildUsersURL(Uri baseURL, [String path]) {
    return baseURL.replace(path: basePath + usersPath + path);
  }

  static Uri buildBatchCollectionsURL(Uri baseURL) {
    return baseURL.replace(path: basePath + collectionsPath);
  }

  static Uri buildOpenGraphURL(Uri baseURL) {
    return baseURL.replace(path: basePath + openGraphPath);
  }

  static Uri buildFilesURL(Uri baseURL) {
    return baseURL.replace(path: basePath + filesPath);
  }

  static Uri buildImagesURL(Uri baseURL) {
    return baseURL.replace(path: basePath + imagesPath);
  }

  static Uri buildPersonalizationURL(Uri baseURL, String path) {
    return _buildSubdomainPath(
        baseURL, personalizationSubdomain, personalizationPath, path);
  }

  static Uri buildAnalyticsURL(Uri baseURL, String path) {
    return _buildSubdomainPath(
        baseURL, analyticsSubdomain, analyticsPath, path);
  }

  static Uri buildActivityUpdateURL(Uri baseURL) {
    return baseURL.replace(path: basePath + activityUpdatePath);
  }

  static Uri buildAddToManyURL(Uri baseURL) {
    return baseURL.replace(path: basePath + addToManyPath);
  }

  static Uri buildFollowManyURL(Uri baseURL) {
    return baseURL.replace(path: basePath + followManyPath);
  }

  static Uri buildUnfollowManyURL(Uri baseURL) {
    return baseURL.replace(path: basePath + unfollowManyPath);
  }

  static Uri _buildSubdomainPath(
      Uri baseURL, String subdomain, String apiPath, String path) {
    var parts = baseURL.host.split('\\.');
    // assume at minimum host will have name and TLD parts
    if (parts.length > 2) {
      // replace first subdomain
      parts[0] = subdomain;
    }

    return baseURL.replace(
        host: parts.join('.'), path: baseURL.path + apiPath + path);
  }

  static String _feedPath(FeedID feed) {
    return 'feed/${feed.slug}/${feed.userID}';
  }

  static String _feedTargetsPath(FeedID feed) {
    return 'feed_targets/${feed.slug}/${feed.userID}';
  }

  static String _enrichedFeedPath(FeedID feed) {
    return 'enrich/feed/${feed.slug}/${feed.userID}';
  }

  static String _enriched(String url) {
    return 'enrich/$url';
  }
}
