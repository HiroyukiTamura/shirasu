import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../../mock_viewmodel/viewmodel_watch_hisotry_mockable.dart';
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
        () =>
    const Scaffold(
      body: WatchHistoryWidget(),
    ),
    goldenNamePrefix: 'WatchHistoryWidget',
  );

  static const _TEST_NAME_LOADING_MORE = 'LoadingMore';

  void runTestLoadingMore() =>
      group('WatchHistoryWidget', () {
        Override override;
        AutoDisposeStateNotifierProvider<ViewModelWatchHistory> provider;
        final dummyState = WatchHistoryState.success(WatchHistoriesDataWrapper(
          watchHistories: <WatchHistoriesData>[].toUnmodifiable(),
          isLoadingMore: true,
        ));

        setUpAll(() async {
          provider = ViewModelWatchHistoryMockable.createProvider(null);
          override =
              kPrvViewModelWatchHistory.overrideWithProvider(provider);
        });

        testGoldensSimple(
          testName: _TEST_NAME_LOADING_MORE,
          overrides: [override],
          onScenarioCreate: (tester, scenarioWidgetKey) async {
            provider.state.overrideWithValue(dummyState);
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
