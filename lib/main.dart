import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/app_router_delegate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await HiveClient.init();

  runApp(ProviderScope(child: MyApp()));
}

final routerDelegate = AppRouterDelegate();

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  final informationParser = AppRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    // final isInitialLaunch = HiveClient.isInitialLaunchApp();
    // if (isInitialLaunch)
    //   HiveClient.setInitialLaunchApp();

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: Styles.theme,
      routerDelegate: routerDelegate,
      routeInformationParser: informationParser,
    );
  }
}
