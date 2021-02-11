import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/resource/strings.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_pref_empty.dart';
import '../mock_repository/network_image_error.dart';
import 'test_runner_base.dart';
import 'test_util.dart';

typedef WidgetBuilder = Widget Function();

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';
const _kTestNameErrorUnAuth = 'ErrorUnAuth';
const _kTestNameErrorUnknown = 'ErrorUnknown';

mixin TestRunnerOnPageError on TestRunnerBase {
  void _findNothingRaisedBtn(Key scenarioWidgetKey) => TestUtil.expectFind(
        scenarioWidgetKey: scenarioWidgetKey,
        matching: find.byType(RaisedButton),
        matcher: findsNothing,
      );

  void runTestGroup(String prefix) => group('$prefix error screen', () {
        setUpAll(() async {
          await TestUtil.loadFonts();
        });

        testGoldens(
          _kTestNameErrorNetworkDisconnected,
          (tester) async => matchGolden(
              overrides: [
                kPrvConnectivityRepository.overrideWithValue(
                    const ConnectedRepositoryDisconnectedImpl()),
              ],
              tester: tester,
              goldenName: _kTestNameErrorNetworkDisconnected,
              onScenarioCreate: (scenarioWidgetKey) async {
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.text(Strings.ERR_NETWORK_DISCONNECTED),
                  matcher: findsOneWidget,
                );
                _findNothingRaisedBtn(scenarioWidgetKey);
              }),
        );
        testGoldens(
          _kTestNameErrorNetworkTimeout,
          (tester) async => matchGolden(
              overrides: [
                kPrvConnectivityRepository.overrideWithValue(
                    const ConnectedRepositoryConnectedImpl()),
                kPrvGraphqlRepository
                    .overrideWithValue(const GraphQlRepositoryTimeoutImpl()),
              ],
              tester: tester,
              goldenName: _kTestNameErrorNetworkTimeout,
              onScenarioCreate: (scenarioWidgetKey) async {
                await tester
                    .pump(GraphQlRepositoryTimeoutImpl.DELAY + 5.seconds);
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.text(Strings.ERR_NETWORK_TIMEOUT),
                  matcher: findsOneWidget,
                );
                _findNothingRaisedBtn(scenarioWidgetKey);
              }),
        );
        testGoldens(
          _kTestNameErrorAuthExpired,
          (tester) async => matchGolden(
              overrides: [
                kPrvConnectivityRepository.overrideWithValue(
                    const ConnectedRepositoryConnectedImpl()),
                kPrvGraphqlRepository
                    .overrideWithValue(GraphQlRepositoryUnauthorizedImpl(true)),
                kPrvHivePrefRepository
                    .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
              ],
              tester: tester,
              goldenName: _kTestNameErrorAuthExpired,
              onScenarioCreate: (scenarioWidgetKey) async {
                await tester.pump(3.seconds);
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.text(Strings.ERR_AUTH_EXPIRED),
                  matcher: findsOneWidget,
                );
                _findNothingRaisedBtn(scenarioWidgetKey);
              }),
        );
        testGoldens(
          _kTestNameErrorUnAuth,
          (tester) async => matchGolden(
              overrides: [
                kPrvConnectivityRepository.overrideWithValue(
                    const ConnectedRepositoryConnectedImpl()),
                kPrvGraphqlRepository.overrideWithValue(
                    GraphQlRepositoryUnauthorizedImpl(false)),
                kPrvHivePrefRepository
                    .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
              ],
              tester: tester,
              goldenName: _kTestNameErrorUnAuth,
              onScenarioCreate: (scenarioWidgetKey) async {
                await tester.pump(3.seconds);
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.text(Strings.ERR_UN_AUTH),
                  matcher: findsOneWidget,
                );
                _findNothingRaisedBtn(scenarioWidgetKey);
              }),
        );
        testGoldens(
          _kTestNameErrorUnknown,
          (tester) async => matchGolden(
              overrides: [
                kPrvConnectivityRepository.overrideWithValue(
                    const ConnectedRepositoryConnectedImpl()),
                kPrvHivePrefRepository
                    .overrideWithValue(const HivePrefEmptyRepositoryImpl()),
                kPrvGraphqlRepository
                    .overrideWithValue(const GraphQlRepositoryErrorImpl()),
              ],
              tester: tester,
              goldenName: _kTestNameErrorUnknown,
              onScenarioCreate: (scenarioWidgetKey) async {
                await tester.pump(3.seconds);
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.text(Strings.SNACK_ERR),
                  matcher: findsOneWidget,
                );
                _findNothingRaisedBtn(scenarioWidgetKey);
              }),
        );
      });
}
