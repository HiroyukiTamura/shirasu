import 'package:flutter/cupertino.dart';

@immutable
class UrlUtil {
  UrlUtil() {
    throw Exception('this class must be used as static');
  }

  static const _URL_BASE = 'https://shirasu-storage-product.s3.amazonaws.com';

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
}
