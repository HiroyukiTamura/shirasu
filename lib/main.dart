import 'package:flutter/material.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/screen_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.theme,
      home: ScreenDetail(),
    );
}
