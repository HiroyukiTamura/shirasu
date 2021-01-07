import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_router_asset.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';

final snackBarMsgProvider =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final pPlayerAnimationProvider = Provider<PlayerAnimationManagerHolder>((_) => PlayerAnimationManagerHolder());

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

  runApp(ProviderScope(child: MyApp()));
}

final appRouterProvider = Provider<AppRouterAsset>((ref) => AppRouterAsset());

class MyApp extends StatefulHookWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context.read(pPlayerAnimationProvider).init(this);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    context.read(pPlayerAnimationProvider).pam.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && HiveAuthClient.instance().maybeExpired)
      context
          .read(appRouterProvider)
          .delegate.pushPage(const GlobalRoutePath.auth());
  }


  // todo should be called on navigation listener
  @override
  void afterFirstLayout(BuildContext context) {
    if (HiveAuthClient.instance().maybeExpired)
      context
          .read(appRouterProvider)
          .delegate.pushPage(const GlobalRoutePath.auth());
  }

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
