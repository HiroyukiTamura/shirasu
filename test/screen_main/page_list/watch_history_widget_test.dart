import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';

import '../../mock_viewmodel/viewmodel_watch_hsitory_loadmore.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_runner_on_page_list.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final runner = _TestRunner();
  await runner.initTestOnPageList();
  runner
    ..runTestGroup('WatchHistoryWidget', goldenNamePrefix: 'WatchHistoryWidget')
    ..runTestOnPageList('WatchHistoryWidget')
    ..runTestLoadingMore();
}

class _TestRunner extends TestRunnerBase
    with TestRunnerOnPageError, TestRunnerOnPageList {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: WatchHistoryWidget(),
          ),
          goldenNamePrefix: 'WatchHistoryWidget',
        );

  static const _TEST_NAME_LOADING_MORE = 'LoadingMore';

  void runTestLoadingMore() => group('WatchHistoryWidget', () {
      testGoldensSimple(
        testName: _TEST_NAME_LOADING_MORE,
        overrides: [kOverrideViewModelWatchHistoryLoadMore],
        onScenarioCreate: (tester, scenarioWidgetKey) async {
          TestUtil.expectFind(
            scenarioWidgetKey: scenarioWidgetKey,
            matching: find.descendant(
              of: find.byType(ListView),
              matching: find.byType(CenterCircleProgress),
            ),
            matcher: findsOneWidget,
          );
        },
      );
    });
}
