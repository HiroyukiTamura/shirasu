import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class Styles {
  const Styles._();

  static final colorTextSub = Colors.white.withOpacity(.7);
  static const BACK_COLOR = Color(0xff1a1a1f);
  static const PRIMARY_COLOR = Color(0xff50e6ff);
  static const PRIMARY_COLOR_DARK = Color(0xff0078D4);
  static const ACCENT_COLOR_DARK = Color(0xffd45c00);
  static final cardBackground = Colors.white.withOpacity(.1);

  static const COLOR = Color(0xff0057ff);
  static const COLOR_2 = Color(0xffffa800);
  static final introDot = Colors.white.withOpacity(.8);

  static final theme = ThemeData.dark().copyWith(
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColorBrightness: Brightness.dark,
    primaryColor: const Color(0xff50e6ff),
    accentColor: const Color(0xff50e6ff),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(color: Colors.black),
    textTheme: GoogleFonts.latoTextTheme(
      ThemeData.dark().textTheme,
    ),
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF323232),
      contentTextStyle: TextStyle(
        color: Colors.white,
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
