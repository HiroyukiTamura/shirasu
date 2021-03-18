import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/repository/ntf_message_repository.dart';
import 'package:shirasu/repository/ntf_message_repository_impl.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/model/ntf_data.dart';

/// must via access from ViewModel
/// todo move
final kPrvSnackBar = StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
    (ref) => SnackBarMessageNotifier());

final kPrvAppRouterDelegate =
    Provider<AppRouterDelegate>((ref) => AppRouterDelegate(ref.read));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await runZonedGuarded(() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(HiveAuthDataAdapter())
      ..registerAdapter(HiveBodyAdapter())
      ..registerAdapter(HiveDecodedTokenAdapter())
      ..registerAdapter(HiveClaimsAdapter())
      ..registerAdapter(HiveHttpsShirasuIoUserAttributeAdapter())
      // ..registerAdapter(HiveEncodedAdapter())
      // ..registerAdapter(HiveHeaderAdapter())
      ..registerAdapter(HiveUserAdapter())
      ..registerAdapter(HiveFcmTopicAdapter())
      ..registerAdapter(HiveFcmChannelDataAdapter())
      ..registerAdapter(HiveFcmProgramDataAdapter());

    await HiveAuthRepositoryImpl.instance().init();
    await HivePrefRepositoryImpl.instance().init();
    await GraphQlRepositoryImpl.openHiveStore();

    runApp(
      ProviderScope(child: MyApp()),
    );
  }, FirebaseCrashlytics.instance.recordError);
}

class MyApp extends StatefulHookWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  static final _analytics = FirebaseAnalytics();

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getInitialMessage().then(_handleNtf);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNtf);
    context.read(kPrvNtfMessage).unsubscribeOutDatedPrgTopic();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: Strings.APP_NAME,
        theme: Styles.theme,
        home: Scaffold(
          body: Router(
            backButtonDispatcher: RootBackButtonDispatcher(),
            routerDelegate: useProvider(kPrvAppRouterDelegate),
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
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: _analytics),
        ],
      );

  Future<void> _handleNtf(RemoteMessage message) async => context.read(kPrvNtfMessage).handleNtf(message);
}
