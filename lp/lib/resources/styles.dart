import 'package:flutter/material.dart';
import 'package:lp/gen/fonts.gen.dart';

class Styles {
  Styles._();

  static final instance = Styles._();

  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff0D0E19),
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: FontFamily.shingo),
  );
}

class CustomColor {

  CustomColor._();

  static const SWIFT = Color(0xfffc3d39);
  static const TEXT_SUB = Color(0xffcdcfd5);
}
