import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/graphql_common.dart';
import 'test_models.dart';
import 'test_runner_base.dart';
import 'test_util.dart';

mixin TestRunnerOnPageList on TestRunnerBase {
  static const _TEST_NAME_EMPTY = 'Empty';
  static const _TEST_NAME_NORMAL = 'Normal';

  final _overrideEmpty =
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
    watchHistoriesData: TestModels.EMPTY_WATCH_HISTORIES_DATA,
    featureProgramData: TestModels.FEATURE_PROGRAM_DATA,
  ));

  Override _overrideNormal;

  Future<void> initTestOnPageList() async {
    final watchHistoriesData = await kJsonClient.watchHistoriesData;
    final featureProgramData = await kJsonClient.featureProgramData;
    _overrideNormal =
        kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
      watchHistoriesData: watchHistoriesData,
      featureProgramData: featureProgramData,
    ));
  }

  void runTestOnPageList(String groupName) => group(groupName, () {
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
