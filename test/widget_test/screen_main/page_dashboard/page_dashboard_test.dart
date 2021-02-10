import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';

import '../../../mock_repository/connected_connected.dart';
import '../../../mock_repository/connected_disconnect.dart';
import '../../../mock_repository/graphql_timeout.dart';
import '../../../mock_repository/graphql_unauthorized.dart';
import '../../../mock_repository/hive_pref_empty.dart';
import '../../../widget_test_util/test_util.dart';
import '../../../widget_test_util/widget_holder.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';
const _kTestNameErrorNetworkTimeout = 'ErrorNetworkTimeout';
const _kTestNameErrorAuthExpired = 'ErrorAuthExpired';

/// test for [PageDashboardInMainScreen]
void main() {
  Widget _widget(List<Override> overrides) => WidgetHolder(
        overrides: overrides,
        child: const Scaffold(
          body: PageDashboardInMainScreen(),
        ),
      );

  Future<void> _matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    List<Override> overrides = const [],
    OnScenarioCreate onScenarioCreate,
  }) =>
      TestUtil.matchGolden(
        tester: tester,
        goldenName: goldenName,
        widget: _widget(overrides),
        onScenarioCreate: onScenarioCreate,
      );

  void _findNothingRaisedBtn(Key scenarioWidgetKey) => TestUtil.expectFind(
        scenarioWidgetKey: scenarioWidgetKey,
        matching: find.byType(RaisedButton),
        matcher: findsNothing,
      );

  group('PageDashboard', () {
    testGoldens(
      _kTestNameErrorNetworkDisconnected,
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryDisconnectedImpl()),
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
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
            kPrvGraphqlRepository
                .overrideWithValue(GraphQlRepositoryTimeoutImpl()),
          ],
          tester: tester,
          goldenName: _kTestNameErrorNetworkTimeout,
          onScenarioCreate: (scenarioWidgetKey) async {
            await tester.pump(GraphQlRepositoryTimeoutImpl.DELAY + 5.seconds);
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
      (tester) async => _matchGolden(
          overrides: [
            kPrvConnectivityRepository
                .overrideWithValue(const ConnectedRepositoryConnectedImpl()),
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
              matching: find.text(Strings.SNACK_ERR),
              matcher: findsOneWidget,
            );
            _findNothingRaisedBtn(scenarioWidgetKey);
          }),
    );
  });
}
