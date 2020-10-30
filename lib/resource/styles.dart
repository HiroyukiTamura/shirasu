import 'package:flutter/material.dart';

class Styles {

  static const TEXT_HEIGHT = 1.3;

  static final colorTextSub = Colors.white.withOpacity(.7);

  static final theme = ThemeData(
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: Color(0xff0057ff),
    accentColor: Color(0xffffa800),
    scaffoldBackgroundColor: Colors.black,
  );
}