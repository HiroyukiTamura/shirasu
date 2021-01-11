import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/player_slider_track_shape.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view.dart';

class Styles {
  const Styles._();

  static final colorTextSub = Colors.white.withOpacity(.7);
  static const COLOR_TEXT_BLUE_WHITE = Color(0xffd9f9ff);
  static const BACK_COLOR = Color(0xff181818);
  static final colorPriceWhite = Colors.white.withOpacity(.85);

  // static const TWITTER_COLOR = Color(0xff1DA1F2);
  // static const FACEBOOK_COLOR = Color(0xff4267B2);
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
    primaryColor: PRIMARY_COLOR,
    accentColor: PRIMARY_COLOR,
    scaffoldBackgroundColor: BACK_COLOR,
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
    sliderTheme: ThemeData.dark().sliderTheme.copyWith(
          inactiveTrackColor: Colors.white30,
          trackHeight: 2,
          trackShape: const PlayerSliderTrackShape(),
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: Dimens.VIDEO_SLIDER_THUMB_RADIUS,
          ),
          // activeTrackColor: PRIMARY_COLOR,
          // activeTickMarkColor: PRIMARY_COLOR,
          // thumbColor: PRIMARY_COLOR,
        ),
  );
}
