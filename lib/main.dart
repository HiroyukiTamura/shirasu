import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/screen_dashboard.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await HiveClient.init();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final isInitialLaunch = HiveClient.isInitialLaunchApp();
    if (isInitialLaunch)
      HiveClient.setInitialLaunchApp();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.theme,
      home: Navigator(pages: [
        MaterialPage(child: ScreenDashboard()),
        if (isInitialLaunch)
          MaterialPage(child: ScreenIntro())
      ], onPopPage: (route, result) {
        return route.didPop(result);
      },),
    );
  }
}
