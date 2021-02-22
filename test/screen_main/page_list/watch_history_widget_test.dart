import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/hive_auth_empty.dart';
import '../../mock_repository/hive_pref_empty.dart';
import '../../mock_viewmodel/viewmodel_watch_hisotry_mockable.dart';
import '../../mock_viewmodel/viewmodel_watch_hisotry_no_loadmore.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_runner_on_page_list.dart';
import '../../widget_test_util/test_util.dart';

/// test for [WatchHistoryWidget]
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
  static const _TEST_NAME_NO_LOADING_MORE = 'NoLoadingMore';
  static const _TEST_NAME_PREFIX_INTEGRATE = 'Integrate';

  /// todo implement load more action
  void runTestLoadingMore() => group(
        'WatchHistoryWidget LoadingMore',
        () {
          testGoldensSimple(
            testName: _TEST_NAME_NO_LOADING_MORE,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
              overrideGraphQl,
              kOverrideViewModelWatchHistoryNoLoadMore,
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await _scrollToBottom(tester, scenarioWidgetKey);
              _findLoadMoreCircleProgress(scenarioWidgetKey, findsNothing);
            },
          );

          testGoldensSimple(
            testName: _TEST_NAME_LOADING_MORE,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kPrvHivePrefRepository
                  .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
              overrideGraphQlLoadableMoreHistory,
              kOverrideViewModelWatchHistoryNoLoadMore,
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async {
              await _scrollToBottom(tester, scenarioWidgetKey);
              _findLoadMoreCircleProgress(scenarioWidgetKey, findsOneWidget);
            },
          );

          // todo not work...
          // testGoldensSimple(
          //   testName: '$_TEST_NAME_PREFIX_INTEGRATE$_TEST_NAME_LOADING_MORE',
          //   overrides: [
          //     kOverrideConnectedRepositoryConnectedImpl,
          //     kOverrideEmptyHiveAuthRepository,
          //     kPrvHivePrefRepository
          //         .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
          //     overrideGraphQlLoadableMoreHistory,
          //   ],
          //   onScenarioCreate: (tester, scenarioWidgetKey) async {
          //     await _scrollToBottom(tester, scenarioWidgetKey);
          //     _findLoadMoreCircleProgress(scenarioWidgetKey, findsOneWidget);
          //     await tester.pump(3.seconds);
          //     _findLoadMoreCircleProgress(scenarioWidgetKey, findsNothing);
          //   },
          // );
        },
      );

  /// [WidgetTester.ensureVisible] is not work...
  static Future<void> _scrollToBottom(
      WidgetTester tester, Key scenarioWidgetKey) async {
    for (int i = 0; i < 10; i++) {
      print('scroll down! i: $i');
      await _scrollDown(tester, scenarioWidgetKey);
      final scrollToEnd = await _isScrollToEnd(scenarioWidgetKey);
      if (scrollToEnd) break;
    }
  }

  static Future<void> _scrollDown(
          WidgetTester tester, Key scenarioWidgetKey) async =>
      tester.fling(
          find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.byType(ListView)),
          const Offset(0, -500),
          2000);

  static Future<bool> _isScrollToEnd(Key scenarioWidgetKey) async =>
      Result.guard(() => TestUtil.expectFind(
            scenarioWidgetKey: scenarioWidgetKey,
            matching: find.text(TestRunnerOnPageList.WATCH_HISTORY_LAST_TITLE),
            matcher: findsOneWidget,
          )).when(
        success: (data) => true,
        failure: (e) => false,
      );

  static void _findLoadMoreCircleProgress(
      Key scenarioWidgetKey, Matcher matcher) {
    TestUtil.expectFind(
      scenarioWidgetKey: scenarioWidgetKey,
      matching: find.byType(ListView),
      matcher: findsOneWidget,
    );
    TestUtil.expectFind(
      scenarioWidgetKey: scenarioWidgetKey,
      matching: find.byType(CenterCircleProgress),
      matcher: matcher,
    );
    TestUtil.expectFind(
      scenarioWidgetKey: scenarioWidgetKey,
      matching: find.byType(MovieListItem),
      matcher: findsWidgets,
    );
  }
}
