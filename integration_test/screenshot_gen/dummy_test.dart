import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';

const _kLocale = Locale('ja');

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button; verify counter',
        (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [_kLocale],
            locale: _kLocale,
            theme: Styles.theme,
            home: const Material(
              child: SafeArea(
                child: Scaffold(
                  body: PageDashboardInMainScreen(),
                ),
              ),
            ),
          ),
        ),
      );
    });
  });
}
