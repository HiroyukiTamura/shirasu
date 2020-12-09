import 'package:flutter/cupertino.dart';

@immutable
class UrlUtil {

  const UrlUtil._();

  static const _URL_BASE = 'https://shirasu-storage-product.s3.amazonaws.com';
  static const URL_GRAPHQL =
      'https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql';
  static const URL_HOME = 'https://shirasu.io/';
  static const URL_AUTH_BASE = 'https://shirasu.auth0.com/';
  static const URL_AUTH_GOOGLE_BASE = 'https://accounts.google.com/';
  static const URL_ACCOUNT = 'https://shirasu.io/account';
  static const URL_DASHBOARD = 'https://shirasu.io/dashboard';

  static String getThumbnailUrl(String itemId) =>
      '$_URL_BASE/public/programs/$itemId/thumbnail';

  static String getChannelLogoUrl(String channelId) =>
      '$_URL_BASE/public/channels/$channelId/icon';

  static String getChannelHeaderUrl(String channelId) =>
      '$_URL_BASE/public/channels/$channelId/header';

  static String getHandoutThumbnailUrl(String programId, String handoutId) =>
      '$_URL_BASE/public/programs/$programId/handouts/$handoutId/thumbnail';

  static String getHandoutUrl(String programId, String handoutId) =>
      '$_URL_BASE/private/programs/$programId/handouts/$handoutId';

  static String programId2UrlSegment(String programId) {
    final list = programId.split('-');
    return '/t/${list[0]}/c/${list[1]}/p/${list[2]}';
  }
}
