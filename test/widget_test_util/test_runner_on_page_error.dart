import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';
import '../mock_repository/network_image_error.dart';
import 'override_util.dart';
import 'test_runner_base.dart';
import 'test_util.dart';

typedef WidgetBuilder = Widget Function();

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';
const _kTestNameErrorUnAuth = 'ErrorUnAuth';
const _kTestNameErrorUnknown = 'ErrorUnknown';

typedef OnScenarioCreateTest = Future<void> Function(
    WidgetTester tester, Key scenarioWidgetKey);

mixin TestRunnerOnPageError on TestRunnerBase {

  void runTestGroup(String prefix, {String goldenNamePrefix = ''}) =>
      group('$prefix error screen', () {
        setUpAll(() async {
          await TestUtil.loadFonts();
        });

        testGoldensSimple(
          testName: _kTestNameErrorNetworkDisconnected,
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_NETWORK_DISCONNECTED),
              matcher: findsOneWidget,
            );
          },
          overrides: [kOverrideDisconnected],
        );
        testGoldensSimple(
          testName: _kTestNameErrorNetworkTimeout,
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            await tester.pump(GraphQlRepositoryTimeoutImpl.DELAY + 5.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_NETWORK_TIMEOUT),
              matcher: findsOneWidget,
            );
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlTimeout,
          ],
        );
        testGoldensSimple(
          testName: _kTestNameErrorAuthExpired,
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_AUTH_EXPIRED),
              matcher: findsOneWidget,
            );
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthDetectedByTime,
            kOverrideEmptyHiveAuthRepository,
            kPrvHivePrefRepository.overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
          ],
        );
        testGoldensSimple(
          testName: _kTestNameErrorUnAuth,
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.ERR_UN_AUTH),
              matcher: findsOneWidget,
            );
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthNotDetectedByTime,
            kOverrideEmptyHiveAuthRepository,
            kPrvHivePrefRepository.overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
          ],
        );
        testGoldensSimple(
          testName: _kTestNameErrorUnknown,
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            await tester.pump(3.seconds);
            TestUtil.expectFind(
              scenarioWidgetKey: scenarioWidgetKey,
              matching: find.text(Strings.SNACK_ERR),
              matcher: findsOneWidget,
            );
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideEmptyHiveAuthRepository,
            kPrvHivePrefRepository.overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
            kOverrideGraphqlErr,
          ],
        );
      });
}
