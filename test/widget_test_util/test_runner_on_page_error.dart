import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/resource/strings.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import 'test_name_common.dart';
import 'test_runner_base.dart';

typedef WidgetBuilder = Widget Function();

typedef OnScenarioCreateTest = Future<void> Function(
    WidgetTester tester, Key scenarioWidgetKey);

mixin TestRunnerOnPageError on TestRunnerBase {
  void runTestGroup(String prefix, {String goldenNamePrefix = ''}) =>
      group('$prefix error screen', () {
        testGoldensSimple(
          testName: TestNameCommon.ERR_NETWORK_DISCONNECTED,
          onPostBuild: (tester) async {
            await tester.pumpAndSettle();
            expect(find.text(Strings.ERR_NETWORK_DISCONNECTED), findsOneWidget);
          },
          overrides: [
            kOverrideDisconnected,
            ...defaultOverride,
          ],
        );
        testGoldensSimple(
          testName: TestNameCommon.ERR_NETWORK_TIMEOUT,
          onPostBuild: (tester) async {
            await tester.pump(GraphQlRepositoryTimeoutImpl.delay);
            expect(find.text(Strings.ERR_NETWORK_TIMEOUT), findsOneWidget);
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlTimeout,
            ...defaultOverride,
          ],
        );
        testGoldensSimple(
          testName: TestNameCommon.ERR_AUTH_EXPIRED,
          onPostBuild: (tester) async {
            await tester.pumpAndSettle();
            expect(find.text(Strings.ERR_AUTH_EXPIRED), findsOneWidget);
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthDetectedByTime,
            kOverrideEmptyHiveAuthRepository,
            ...defaultOverride,
          ],
        );
        testGoldensSimple(
          testName: TestNameCommon.ERR_UN_AUTH,
          onPostBuild: (tester) async {
            await tester.pumpAndSettle();
            expect(find.text(Strings.ERR_UN_AUTH), findsOneWidget);
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthNotDetectedByTime,
            kOverrideEmptyHiveAuthRepository,
            ...defaultOverride,
          ],
        );
        testGoldensSimple(
          testName: TestNameCommon.ERR_UNKNOWN,
          onPostBuild: (tester) async {
            await tester.pumpAndSettle();
            expect(find.text(Strings.SNACK_ERR), findsOneWidget);
          },
          overrides: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideEmptyHiveAuthRepository,
            kOverrideGraphqlErr,
            ...defaultOverride,
          ],
        );
      });
}
