import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/font_size.dart';

class TextHeight {
  static const TEXT_H_DETAIL = 1.7;
  static const TEXT_HEIGHT = 1.3;
  static const TEXT_H_SML = 1.2;
  static const double TEXT_H_SINGLE = 1;
}

class TextStyles {
  const TextStyles._();

  static TextStyle introDesc = const TextStyle(
    fontSize: FontSize.S20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    height: TextHeight.TEXT_HEIGHT,
  );

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

  static final dashboardBillboardTitle = s16TextHMulti(
    fontWeight: FontWeight.bold,
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

  static final channelHeading = s16TextHMulti(
    fontWeight: FontWeight.bold,
  );

  static const CHANNEL_TIME = TextStyle(
    height: TextHeight.TEXT_HEIGHT,
    fontSize: FontSize.SMALL,
    color: Styles.COLOR_TEXT_SUB,
  );

  static final listMovieTitle = s13TextHMulti(
    fontWeight: FontWeight.bold,
  );

  static const LIST_MOVIE_TITLE_THICK = TextStyle(
    height: TextHeight.TEXT_H_SML, //todo fix??
    fontSize: FontSize.S16,
  );

  //region screen_detail

  static final detailVideoTitle = s16TextHMulti(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  //endregion

  static const DEFAULT_H = TextStyle(height: TextHeight.TEXT_HEIGHT);

  static const SINGLE_H = TextStyle(height: TextHeight.TEXT_H_SINGLE);

  static TextStyle defaultFontSizeAndHeight({
    Color color,
    FontWeight fontWeight,
  }) =>
      TextStyle(
        height: TextHeight.TEXT_HEIGHT,
        fontSize: FontSize.DEFAULT,
        color: color,
        fontWeight: fontWeight,
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

  static final videoTag = s13TextHMulti(
    color: Styles.COLOR_TEXT_SUB,
  );

  static TextStyle s13TextHMulti({Color color, FontWeight fontWeight}) =>
      TextStyle(
        fontSize: FontSize.S13,
        height: TextHeight.TEXT_HEIGHT,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle s16TextHMulti({Color color, FontWeight fontWeight}) =>
      TextStyle(
        fontSize: FontSize.S16,
        height: TextHeight.TEXT_HEIGHT,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle s13TextHSingle({Color color}) => TextStyle(
        fontSize: FontSize.S13,
        height: TextHeight.TEXT_H_SINGLE,
        color: color,
      );
}
