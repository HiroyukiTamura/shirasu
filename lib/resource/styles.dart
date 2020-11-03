import 'package:flutter/material.dart';

class Styles {
  static const TEXT_HEIGHT = 1.3;
  static const TEXT_H_SML = 1.2;

  static final colorTextSub = Colors.white.withOpacity(.7);
  static const BACK_COLOR = Color(0xff1a1a1f);
  static const PRIMARY_COLOR = Color(0xff50e6ff);
  static const PRIMARY_COLOR_DARK = Color(0xff0078D4);
  static const ACCENT_COLOR_DARK = Color(0xffd45c00);

  static const COLOR = Color(0xff0057ff);
  static const COLOR_2 = Color(0xffffa800);

  static final theme = ThemeData(
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: Color(0xff50e6ff),
    accentColor: Color(0xff50e6ff),
    scaffoldBackgroundColor: Colors.black,
  );

  static TextStyle introTitleStyle(BuildContext context) => TextStyle(
        color: Colors.deepOrange,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );

  static TextStyle introTitleStyle2(Color color) => TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );

  static const INTRO_ROW_TEXT_STYLE = TextStyle(
    fontSize: 18,
    height: 1.4,
  );
}
