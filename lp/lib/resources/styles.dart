import 'package:flutter/material.dart';
import 'package:lp/gen/fonts.gen.dart';

class Styles {
  Styles._();

  static final instance = Styles._();

  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: CustomColor.BACK_GROUND,
    textTheme: ThemeData.dark()
        .textTheme
        .copyWith(
            bodyText2: const TextStyle(
          color: CustomColor.TEXT_SUB,
          height: 1.7,
        ))
        .apply(
          fontFamily: FontFamily.notoSansJp,
        ),
    primaryTextTheme: ThemeData.dark()
        .primaryTextTheme
        .apply(fontFamily: FontFamily.notoSansJp),
    accentTextTheme: ThemeData.dark()
        .accentTextTheme
        .apply(fontFamily: FontFamily.notoSansJp),
  );

  static const BODY_TEXT_LINK = TextStyle(
    color: CustomColor.LINK,
    height: 1.7,
    fontFamily: FontFamily.shingo,
  );

  static const APP_TITLE = TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamily.shingo,
  );

  static const HEADING = TextStyle(
    height: 1.7,
    fontSize: 24,
    color: Colors.white,
  );

  static const BUTTON_CONTACT = TextStyle(
    color: CustomColor.TEXT_SUB,
    fontFamily: FontFamily.notoSansJp,
  );

  static const BUTTON_DEV_RESOURCE = TextStyle(
    color: Colors.white,
    fontFamily: FontFamily.notoSansJp,
  );
}

class CustomColor {
  CustomColor._();

  static const BACK_GROUND = Color(0xff0D0E19);
  static const BACK_GROUND_CARD = Color(0xff1A1D2B);
  static const SWIFT = Color(0xfffc3d39);
  static const TEXT_SUB = Color(0xffcdcfd5);
  static const LINK = Colors.blue;
}
