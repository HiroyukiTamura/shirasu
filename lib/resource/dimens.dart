import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class Dimens {

  const Dimens._();

  static const double CHANNEL_PAGE_VERTICAL_MARGIN = 24;
  static const double MARGIN_OUTLINE = 16;
  static const double DASHBOARD_OUTER_MARGIN = 8;
  static const IMG_RATIO = 1920 / 1080;
  static const DASHBOARD_GRID_RATIO = 4/3;
  static const double DASHBOARD_ITEM_RADIUS = 8;
  static const double HEADER_ASPECT = 6;
  static const double SETTING_OUTER_MARGIN = 16;
  static const double CIRCULAR_HEIGHT = 36;
  /// @see assets\undraw_warning_cyit.svg
  static const double ERROR_WIDGET_RATIO = 832.63 / 1032.24;
  static const double HANDOUT_THUMBNAIL_RATIO = 16/9;

  static const double VIDEO_PLAY_BTN_ICON_SIZE = 72;
  static const double VIDEO_SEEK_BTN_ICON_SIZE = 56;
  static const double VIDEO_SLIDER_THUMB_RADIUS = 6;
  static const double VIDEO_DOUBLE_TAP_IGNORE_FROM_CENTER = 64;

  static const double VIDEO_SEEK_BAR_HOVER_STYLE_H = 36;

  /// same as default value of [IconButton.iconSize]
  static const double VIDEO_FULLSCREEN_BTN_SIZE = 24;
  static const double VIDEO_FULLSCREEN_BTN_SIZE_BIG = 36;

  static const double VIDEO_PLAY_PAUSE_BTN_W = 108;
  // ref: CircularProgressIndicator._kMinCircularProgressIndicatorSize
  static const double MIN_CIRCULAR_PROGRESS_INDICATOR_H = 36;

  /// ref: [SnackBar.margin]
  static const EdgeInsets SNACK_BAR_DEFAULT_MARGIN = EdgeInsets.fromLTRB(15, 5, 15, 10);

  static const double CAROUSEL_DETAIL_CAPTION_H = 108;

  static const double SCREEN_BREAK_POINT = 600;
}