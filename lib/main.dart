import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

/// must via access from ViewModel
final kPrvSnackBar =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final kPrvAppRouterDelegate = Provider<AppRouterDelegate>((ref) =>
    AppRouterDelegate(
        ref.read));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runZonedGuarded(() async {

    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);
    await Hive.initFlutter();
    Hive
      ..registerAdapter(HiveAuthDataAdapter())
      ..registerAdapter(HiveBodyAdapter())
      ..registerAdapter(HiveDecodedTokenAdapter())
      ..registerAdapter(HiveClaimsAdapter())
      ..registerAdapter(HiveHttpsShirasuIoUserAttributeAdapter())
    // ..registerAdapter(HiveEncodedAdapter())
    // ..registerAdapter(HiveHeaderAdapter())
      ..registerAdapter(HiveUserAdapter());

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

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: Strings.APP_NAME,
        theme: Styles.theme,
        home: Scaffold(
          body: Router(
            backButtonDispatcher: RootBackButtonDispatcher(),
            routerDelegate: useProvider(kPrvAppRouterDelegate),
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
