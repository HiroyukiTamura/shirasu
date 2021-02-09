import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';

import '../../../mock_repository/connected_disconnect.dart';
import '../../../widget_test_util/test_util.dart';
import '../../../widget_test_util/widget_holder.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';

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
            final errText = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.text(Strings.ERR_NETWORK_DISCONNECTED),
            );
            expect(errText, findsOneWidget);

            final loginBtn = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.byType(RaisedButton),
            );

            expect(loginBtn, findsNothing);
          }),
    );
  });
}
