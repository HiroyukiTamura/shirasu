import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/styles.dart';

@immutable
class TextStyles {
  const TextStyles._();

  static const TEXT_HEIGHT = 1.3;
  static const TEXT_H_SML = 1.2;

  static TextStyle introDesc = const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      height: TEXT_HEIGHT);

  static TextStyle introTitleStyle(BuildContext context) => const TextStyle(
        color: Colors.deepOrange,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );

  static TextStyle introTitleStyle2(Color color) => TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: TEXT_HEIGHT,
      );

  static const INTRO_ROW_TEXT_STYLE = TextStyle(
    fontSize: 18,
    height: 1.4,
  );

  static const DASHBOARD_BILLBOARD_TITLE = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: TEXT_HEIGHT,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static const DASHBOARD_BILLBOARD_TITLE_H = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: TEXT_HEIGHT,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static const DASHBOARD_BILLBOARD_CHANNEL_NAME_H = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: TEXT_HEIGHT,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static const DASHBOARD_BILLBOARD_CHANNEL_NAME = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: TEXT_HEIGHT,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static const DASHBOARD_BILLBOARD_DATETIME = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static const DASHBOARD_GRID_TITLE = TextStyle(
    fontWeight: FontWeight.bold,
    height: 1.35,
    fontSize: 14,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static final plain = TextStyle(
    color: Styles.colorTextSub,
    fontSize: 14,
  );

  static final plainSmall = TextStyle(
    color: Styles.colorTextSub,
    fontSize: 14,
  );

  static const CHANNEL_PLAIN = TextStyle(
    fontSize: 14,
    color: Colors.white,
    height: TextStyles.TEXT_HEIGHT,
  );

  static const CHANNEL_HEADING = TextStyle(
    fontWeight: FontWeight.bold,
    height: TextStyles.TEXT_HEIGHT,
    fontSize: 16,
  );

  static final channelTime = TextStyle(
    height: TextStyles.TEXT_HEIGHT,
    fontSize: 12,
    color: Styles.colorTextSub,
  );

  static const CHANNEL_NAME = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const PURCHASE_BTN = TextStyle(
    fontSize: 12,
    color: Colors.white,
    height: 1,
  );

  static const PURCHASED_BANNER = TextStyle(
    color: Colors.white,
    height: 1,
  );

  static const LIST_MOVIE_TITLE = TextStyle(
    height: TextStyles.TEXT_HEIGHT,
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static const LIST_MOVIE_TITLE_THICK = TextStyle(
    height: TextStyles.TEXT_H_SML,
    fontSize: 16,
  );

  static const LIST_MOVIE_TITLE_BIG = TextStyle(
    height: 1.3,
    fontSize: 14,
  );

  //region screen_detail
  static const DETAIL_CHANNEL_NAME = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );

  static const DETAIL_VIDEO_TITLE = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: TextStyles.TEXT_HEIGHT,
  );

  static const DETAIL_VIDEO_DESC = TextStyle(
    color: Colors.white,
    fontSize: 14,
    height: TextStyles.TEXT_HEIGHT,
  );

  static const DETAIL_VIDEO_DESC_LINK = TextStyle(
    color: Colors.deepOrange,
    fontSize: 14,
    height: TextStyles.TEXT_HEIGHT,
  );

  static const DETAIL_HEADER_MSG = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  static const SETTING_SUBTITLE = TextStyle(color: Colors.blueAccent);

  static const SETTING_COMPONENT_TITLE = TextStyle(height: 1);

  static const SETTING_SUBSCRIBED_CHANNEL = TextStyle(height: 1.3);

  //endregion

  static const DEFAULT_H = TextStyle(height: TEXT_HEIGHT);

  static const SINGLE_LINE_DEFAULT = TextStyle(height: 1, fontSize: 14);

  static const VIDEO_PAYMENT_BTN = TextStyle(fontSize: 18);
}
