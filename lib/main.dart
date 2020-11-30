import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_router_asset.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

// todo should dispose?
final snackBarMsgProvider = ChangeNotifierProvider<SnackBarMessageNotifier>(
    (_) => SnackBarMessageNotifier());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await HiveClient.init();
  await ApiClient.openHiveStore();

  runApp(ProviderScope(child: MyApp()));
}

final appRouterProvider = Provider<AppRouterAsset>((ref) => AppRouterAsset());

class MyApp extends StatefulHookWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // final isInitialLaunch = HiveClient.isInitialLaunchApp();
    // if (isInitialLaunch)
    //   HiveClient.setInitialLaunchApp();

    final router = useProvider(appRouterProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: Styles.theme,
      routerDelegate: router.delegate,
      routeInformationParser: router.parser,
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
}
