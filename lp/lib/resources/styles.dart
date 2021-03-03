import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lp/gen/fonts.gen.dart';

class Styles {
  Styles._();

  static final instance = Styles._();

  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff0D0E19),
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: FontFamily.shingo),
  );
}
