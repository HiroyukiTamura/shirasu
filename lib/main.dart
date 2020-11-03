import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/screen_dashboard.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.theme,
      home: Navigator(pages: [
        MaterialPage(child: ScreenDashboard()),
        if (true)
          MaterialPage(child: ScreenIntro())
      ], onPopPage: (route, result) {
        return route.didPop(result);
      },),
    );
  }
}
