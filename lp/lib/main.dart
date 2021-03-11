import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/ui/screen_main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runZonedGuarded(() {
    runApp(MyApp());
  }, (err, stack) {
    //todo log error
  });
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: Styles.theme,
        themeMode: ThemeMode.dark,
        title: Strings.APP_NAME,
        home: Scaffold(
          body: ScreenMain(),
          // body: Router(
          //   backButtonDispatcher: RootBackButtonDispatcher(),
          //   routerDelegate: MainRouter.instance,
          //   // routeInformationParser: AppRouteInformationParser.instance,
          //   // routeInformationProvider: InfoProvider.instance,
          // ),
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ja'),
        ],
      );
}
