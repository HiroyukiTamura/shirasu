import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/styles.dart';

import 'font_size.dart';

class TextHeight {
  static const TEXT_HEIGHT = 1.3;
  static const TEXT_H_SML = 1.2;
  static const double TEXT_H_SINGLE = 1;
}

class TextStyles {
  const TextStyles._();

  static TextStyle introDesc = const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      height: TextHeight.TEXT_HEIGHT);

  static TextStyle introTitleStyle(BuildContext context) => const TextStyle(
        color: Colors.deepOrange,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );

  static TextStyle introTitleStyle2(Color color) => TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: TextHeight.TEXT_HEIGHT,
      );

  static const INTRO_ROW_TEXT_STYLE = TextStyle(
    fontSize: 18,
    height: 1.4,
  );

  static const DASHBOARD_BILLBOARD_TITLE = TextStyle(
    fontSize: FontSize.S16,
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
    color: Colors.white,
  );

  static const DASHBOARD_BILLBOARD_CHANNEL_NAME_H = TextStyle(
    fontSize: FontSize.DEFAULT,
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
    color: Colors.white,
  );

  static const DASHBOARD_BILLBOARD_CHANNEL_NAME = TextStyle(
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
    color: Colors.white,
  );

  static const DASHBOARD_BILLBOARD_DATETIME = TextStyle(
    fontSize: FontSize.S24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const CHANNEL_HEADING = TextStyle(
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
    fontSize: FontSize.S16,
  );

  static final channelTime = TextStyle(
    height: TextHeight.TEXT_HEIGHT,
    fontSize: FontSize.SMALL,
    color: Styles.colorTextSub,
  );

  static const LIST_MOVIE_TITLE = TextStyle(
    height: TextHeight.TEXT_HEIGHT,
    fontSize: FontSize.S13,
    fontWeight: FontWeight.bold,
  );

  static const LIST_MOVIE_TITLE_THICK = TextStyle(
    height: TextHeight.TEXT_H_SML,
    fontSize: FontSize.S16,
  );

  //region screen_detail

  static const DETAIL_VIDEO_TITLE = TextStyle(
    color: Colors.white,
    fontSize: FontSize.S16,
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
  );

  static const SETTING_SUBTITLE = TextStyle(color: Colors.blueAccent);

  //endregion

  static const DEFAULT_H = TextStyle(height: TextHeight.TEXT_HEIGHT);

  static const SINGLE_H = TextStyle(height: TextHeight.TEXT_H_SINGLE);

  static TextStyle defaultFontSizeAndHeight({Color color}) => TextStyle(
        height: TextHeight.TEXT_HEIGHT,
        fontSize: FontSize.DEFAULT,
        color: color,
      );

  static const SINGLE_LINE_DEFAULT = TextStyle(
    height: TextHeight.TEXT_H_SINGLE,
    fontSize: FontSize.DEFAULT,
  );

  static TextStyle pageHandoutSubtitle({Color color}) => TextStyle(
        fontSize: FontSize.SMALL,
        height: TextHeight.TEXT_H_SINGLE,
        color: color,
      );

  static TextStyle itemNote({Color color}) => TextStyle(
        height: TextHeight.TEXT_HEIGHT,
        fontSize: FontSize.S13,
        color: color,
      );

  static final videoTag = TextStyle(
    color: Styles.colorTextSub,
    height: TextHeight.TEXT_HEIGHT,
    fontSize: FontSize.S13,
  );

  static TextStyle horizontalCarouselDetailCaption({Color color}) => TextStyle(
        height: TextHeight.TEXT_H_SINGLE,
        fontSize: FontSize.S13,
        color: color,
      );

  static TextStyle s13TextHSingle({Color color}) => TextStyle(
        fontSize: FontSize.S13,
        height: TextHeight.TEXT_H_SINGLE,
        color: color,
      );
}
