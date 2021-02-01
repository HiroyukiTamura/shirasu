import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as p;

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
  static const URL_HEADER_BACKDROP =
      'https://shirasu.io/top/kv_mix.a70089e9.jpg';
  static const URL_GITHUB = 'https://github.com/HiroyukTamura/shirasu';
  static const URL_DEFAULT_HANDOUT_THUMBNAIL = 'https://shirasu.io/static/img/defaultImage/default-handout-thumbnail.jpeg';
  static const URL_IMG_LICENSE_ROBOTO = 'https://iconscout.com/icons/roboto';
  static const URL_IMG_LICENSE_ICONS_MIND = 'https://iconscout.com/contributors/icons-mind';

  static String getThumbnailUrl(String itemId) =>
      p.join(_URL_BASE, 'public/programs', itemId, 'thumbnail');

  static String getChannelLogoUrl(String channelId) =>
      p.join(_URL_BASE, 'public/channels', channelId, 'icon');

  static String getChannelHeaderUrl(String channelId) =>
      p.join(_URL_BASE, 'public/channels', channelId, 'header');

  static String getHandoutThumbnailUrl(String programId, String handoutId) =>
      p.join(_URL_BASE, 'public/programs', programId, 'handouts', handoutId,
          'thumbnail');

  static String getHandoutUrl(String programId, String handoutId) =>
      p.join(_URL_BASE, 'private/programs', programId, 'handouts', handoutId);

  static String programId2UrlSegment(String programId) {
    final list = programId.split('-');
    return p.join('t', list[0], 'c', list[1], 'p', list[2]);
  }

  static String channelId2Url(String channelId) =>
      p.join(URL_HOME, 'c', channelId);

  static String programId2Url(String programId) =>
      p.join(URL_HOME, programId2UrlSegment(programId));

  /// ```
  /// return s()(a = s()(r = "https://twitter.com/intent/tweet?text=".concat(encodeURIComponent(e), " ")).call(r, encodeURIComponent(n + "?utm_source=twitter&utm_medium=organic&utm_campaign=share"), " ")).call(a, encodeURIComponent("#".concat(t)), " @shirasu_io")
  /// ```
  /// todo detect hashTag
  static Uri programId2TwitterUrl(String title, String programId,
      {String hashTag = 'シラス'}) {
    final url = Uri.parse(programId2Url(programId)).replace(queryParameters: {
      'utm_source': 'twitter',
      'utm_medium': 'organic',
      'utm_campaign': 'share',
    });
    final tweet = '$title $url #$hashTag @shirasu_io';
    return Uri.parse('https://twitter.com/intent/tweet').replace(
        queryParameters: {
          'text': tweet,
        });
  }

  ///
  /// ```
  /// "https://www.facebook.com/share.php?u=".concat(encodeURIComponent(e + "?utm_source=facebook&utm_medium=organic&utm_campaign=share"))
  /// ```
  static Uri programId2FaceBookUrl(String programId) {
    final url = Uri.parse(programId2Url(programId)).replace(
        queryParameters: {
          'utm_source': 'facebook',
          'utm_medium': 'organic',
          'utm_campaign': 'share',
        }
    ).toString();
    return Uri.parse('https://www.facebook.com/share.php').replace(
      queryParameters: {
        'u': url,
      }
    );
  }

  static String programId2channelId(String programId) =>
      programId.split('-')[1];
}
