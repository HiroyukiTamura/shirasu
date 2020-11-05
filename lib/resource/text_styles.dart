import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles {
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
}
