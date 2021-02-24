import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_list/page_subscribing.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';

import '../../mock_viewmodel/viewmodel_subscribing_mockable.dart';
import '../../mock_viewmodel/viewmodel_watch_history_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => Scaffold(
            body: PageListInMainScreen(
              initialPage: PageListTabPage.SUBSCRIBING,
            ),
          ),
          goldenNamePrefix: 'PageListInMainScreen',
        );

  void runTest() => group('PageListInMainScreen', () {
        final overrideVmWatchHistory =
            kPrvViewModelWatchHistory.overrideWithProvider(
                ViewModelWatchHistoryMockable.createProvider(null));

        final overrides = [
          kOverrideViewModelSubscribingMocked,
          overrideVmWatchHistory,
        ];
        testGoldensSimple(
          testName: 'PageSubscribing',
          overrides: overrides,
        );
        testGoldensSimple(
            testName: 'PageChanged',
            overrides: overrides,
            onPostBuild: (tester) async {
              final tabBtn =
                  find.widgetWithText(Tab, Strings.TAB_WATCH_HISTORY);
              await tester.tap(tabBtn);
              await tester.pumpAndSettle();
            });
      });
}
