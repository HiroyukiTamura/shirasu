import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/graphql_common.dart';
import 'test_models.dart';
import 'test_runner_base.dart';
import 'test_util.dart';

mixin TestRunnerOnPageList on TestRunnerBase {
  @protected
  static const _TEST_NAME_EMPTY = 'Empty';
  @protected
  static const _TEST_NAME_NORMAL = 'Normal';
  @protected
  static const WATCH_HISTORY_LAST_TITLE = 'LastTitle';

  @protected
  final overrideGraphQlEmpty =
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
    watchHistoriesData: TestModels.EMPTY_WATCH_HISTORIES_DATA,
    featureProgramData: TestModels.FEATURE_PROGRAM_DATA,
  ));

  Override _overrideNormal;

  @protected
  Override get overrideGraphQl => _overrideNormal;

  Override _overrideGraphQlLoadableMoreHistory;

  @protected
  Override get overrideGraphQlLoadableMoreHistory => _overrideGraphQlLoadableMoreHistory;

  Future<void> initTestOnPageList() async {
    WatchHistoriesData watchHistoriesData =
        await kJsonClient.watchHistoriesData;
    watchHistoriesData = watchHistoriesData.copyWith.viewerUser.watchHistories(
      rawItems: watchHistoriesData.viewerUser.watchHistories.items +
          [
            watchHistoriesData.viewerUser.watchHistories.items.last.copyWith
                .program(title: WATCH_HISTORY_LAST_TITLE)
          ],
    );
    final featureProgramData = await kJsonClient.featureProgramData;
    _overrideNormal =
        kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
      watchHistoriesData: watchHistoriesData,
      featureProgramData: featureProgramData,
    ));
    _overrideGraphQlLoadableMoreHistory =
        kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
          watchHistoriesData: watchHistoriesData.copyWith.viewerUser.watchHistories(nextToken: 'NEXT_TOKEN'),
        ));
  }

  void runTestOnPageList(String groupName) => group(groupName, () {
        testGoldensSimple(
          testName: _TEST_NAME_EMPTY,
          overrides: [
            overrideGraphQlEmpty,
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
              _overrideNormal,
              kOverrideConnectedRepositoryConnectedImpl
            ],
            onScenarioCreate: (tester, scenarioWidgetKey) async =>
                TestUtil.expectFind(
                  scenarioWidgetKey: scenarioWidgetKey,
                  matching: find.byType(MovieListItem),
                  matcher: findsWidgets,
                ));
      });
}
