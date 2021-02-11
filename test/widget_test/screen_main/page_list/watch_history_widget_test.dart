import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

import '../../../mock_repository/connected_connected.dart';
import '../../../mock_repository/graphql_common.dart';
import '../../../widget_test_util/override_util.dart';
import '../../../widget_test_util/test_models.dart';
import '../../../widget_test_util/test_runner_base.dart';
import '../../../widget_test_util/test_runner_on_page_error.dart';
import '../../../widget_test_util/test_util.dart';

Future<void> main() async {
  _TestRunner()
    ..runTestGroup('WatchHistoryWidget')
    ..runTest();
}

class _TestRunner extends TestRunnerBase with TestRunnerOnPageError {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: WatchHistoryWidget(),
          ),
          goldenNamePrefix: 'WatchHistoryWidget',
        );

  static const _TEST_NAME_EMPTY = 'Empty';
  static const _TEST_NAME_NORMAL = 'Normal';

  final _overrideEmpty =
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
    watchHistoriesData: TestModels.EMPTY_WATCH_HISTORIES_DATA,
  ));

  void runTest() => group('WatchHistoryWidget normal', () {
        Override overrideNormal;
        setUpAll(() async {
          final watchHistoriesData = await kJsonClient.watchHistoriesData;
          overrideNormal = kPrvGraphqlRepository
              .overrideWithValue(GraphQlRepositoryCommonImpl(
            watchHistoriesData: watchHistoriesData,
          ));
        });
        testGoldensSimple(
          testName: _TEST_NAME_EMPTY,
          overrides: [
            _overrideEmpty,
            kOverrideConnectedRepositoryConnectedImpl
          ],
          onScenarioCreate: (tester, scenarioWidgetKey) async =>
              TestUtil.expectFind(
            scenarioWidgetKey: scenarioWidgetKey,
            matching: find.byType(EmptyListWidget),
            matcher: findsOneWidget,
          ),
        );
        testGoldensSimple(
            testName: _TEST_NAME_NORMAL,
            overrides: [
              overrideNormal,
              kOverrideConnectedRepositoryConnectedImpl
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async =>
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.byType(MovieListItem),
                  matcher: findsOneWidget,
                ));
      });
}
