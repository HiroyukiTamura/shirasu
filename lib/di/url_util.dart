import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;

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
  static const URL_HEADER_BACKDROP = 'https://shirasu.io/top/kv_mix.a70089e9.jpg';
  static const URL_GITHUB = 'https://github.com/HiroyukTamura/shirasu';

  static String getThumbnailUrl(String itemId) =>
      p.join(_URL_BASE, 'public/programs', itemId, 'thumbnail');

  static String getChannelLogoUrl(String channelId) =>
      p.join(_URL_BASE, 'public/channels', channelId, 'icon');

  static String getChannelHeaderUrl(String channelId) =>
      p.join(_URL_BASE, 'public/channels', channelId, 'header');

  static String getHandoutThumbnailUrl(String programId, String handoutId) =>
      p.join(_URL_BASE, 'public/programs', programId, 'handouts', handoutId, 'thumbnail');

  static String getHandoutUrl(String programId, String handoutId) =>
      p.join(_URL_BASE, 'private/programs', programId, 'handouts', handoutId);

  static String programId2UrlSegment(String programId) {
    final list = programId.split('-');
    return p.join('t', list[0], 'c', list[1], 'p', list[2]);
  }

  static String channelId2Url(String channelId) => p.join(URL_HOME, 'c', channelId);

  static String programId2Url(String programId) => p.join(URL_HOME, programId2UrlSegment(programId));

  static String programId2channelId(String programId) => programId.split('-')[1];
}
