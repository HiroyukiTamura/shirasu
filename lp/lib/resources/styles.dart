import 'package:flutter/material.dart';
import 'package:lp/gen/fonts.gen.dart';

class Styles {
  Styles._();

  static final instance = Styles._();

  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: CustomColor.BACK_GROUND,
    textTheme: ThemeData.dark()
        .textTheme
        .apply(fontFamily: FontFamily.shingo)
        .copyWith(
            bodyText2: const TextStyle(
          color: CustomColor.TEXT_SUB,
          height: 1.7,
        )),
  );

  static const BODY_TEXT_LINK = TextStyle(
    color: Colors.blue,
    height: 1.7,
    fontFamily: FontFamily.shingo,
  );
}

class CustomColor {
  CustomColor._();

  static const BACK_GROUND = Color(0xff0D0E19);
  static const BACK_GROUND_CARD = Color(0xff1A1D2B);
  static const SWIFT = Color(0xfffc3d39);
  static const TEXT_SUB = Color(0xffcdcfd5);
}
