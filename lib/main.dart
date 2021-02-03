import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/api_client.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

final snackBarMsgProvider =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final pAppRouterDelegate =
    Provider<AppRouterDelegate>((ref) => AppRouterDelegate(ref));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive
    ..registerAdapter(HiveAuthDataAdapter())
    ..registerAdapter(HiveBodyAdapter())
    ..registerAdapter(HiveDecodedTokenAdapter())
    ..registerAdapter(HiveClaimsAdapter())
    ..registerAdapter(HiveHttpsShirasuIoUserAttributeAdapter())
    ..registerAdapter(HiveEncodedAdapter())
    ..registerAdapter(HiveHeaderAdapter())
    ..registerAdapter(HiveUserAdapter());

  await HiveAuthClient.instance().init();
  await HivePrefectureClient.instance().init();
  await ApiClient.openHiveStore();

  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatefulHookWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
    with WidgetsBindingObserver, TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed &&
        HiveAuthClient.instance().maybeExpired)
      context.read(pAppRouterDelegate).pushPage(const GlobalRoutePath.auth());
  }

  @override
  Widget build(BuildContext context) {
    // final isInitialLaunch = HiveClient.isInitialLaunchApp();
    // if (isInitialLaunch)
    //   HiveClient.setInitialLaunchApp();

    final delegate = useProvider(pAppRouterDelegate);

    return MaterialApp(
      title: Strings.APP_NAME,
      theme: Styles.theme,
      home: Scaffold(
        body: Router(
          backButtonDispatcher: RootBackButtonDispatcher(),
          routerDelegate: delegate,
          routeInformationParser: AppRouteInformationParser.instance,
        ),
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
}
