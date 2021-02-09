import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/screen_pre_login/screen_pre_login.dart';

import '../../../mock_repository/connected_disconnect.dart';
import '../../../widget_test_util/test_util.dart';
import '../../../widget_test_util/widget_holder.dart';

const _kTestNameErrorNetworkDisconnected = 'ErrorNetworkDisconnected';

void testUiOnPageDashboard() {
  Widget _widget(List<Override> overrides) => WidgetHolder(
        overrides: overrides,
        child: const ScreenPreLogin(),
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

  group('PageDashboard network error', () {
    testGoldens(
      _kTestNameErrorNetworkDisconnected,
      (tester) async => _matchGolden(
        overrides: [
          kPrvConnectivityRepository.overrideWithValue(const ConnectedRepositoryDisconnectedImpl()),
        ],
        tester: tester,
        goldenName: _kTestNameErrorNetworkDisconnected,
      ),
    );
  });
}
