import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TEXT_HEIGHT = 1.3;
  static const TEXT_H_SML = 1.2;

  static TextStyle introDesc = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    height: TEXT_HEIGHT
  );

  static TextStyle introTitleStyle(BuildContext context) => TextStyle(
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
}