import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static final instance = Styles._();

  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff0D0E19),
  );
}
