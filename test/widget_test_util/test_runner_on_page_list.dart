import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/graphql_common.dart';
import 'json_client.dart';
import 'test_models.dart';
import 'test_name_common.dart';
import 'test_runner_base.dart';

mixin TestRunnerOnPageList on TestRunnerBase {
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
  Override get overrideGraphQlLoadableMoreHistory =>
      _overrideGraphQlLoadableMoreHistory;

  WatchHistoriesData mWatchHistoriesData;

  void initTestOnPageList() {
    mWatchHistoriesData = JsonClient
        .instance.mWatchHistoriesData.copyWith.viewerUser
        .watchHistories(
      rawItems: JsonClient
              .instance.mWatchHistoriesData.viewerUser.watchHistories.items +
          [
            JsonClient.instance.mWatchHistoriesData.viewerUser.watchHistories
                .items.last.copyWith
                .program(
              title: TestNameCommon.WATCH_HISTORY_LAST_TITLE,
            )
          ],
    );
    _overrideNormal =
        kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
      watchHistoriesData: JsonClient.instance.mWatchHistoriesData,
      featureProgramData: JsonClient.instance.mFeatureProgramData,
    ));
    _overrideGraphQlLoadableMoreHistory =
        kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
      watchHistoriesData: JsonClient
          .instance.mWatchHistoriesData.copyWith.viewerUser
          .watchHistories(
        nextToken: TestRunnerBase.NEXT_TOKEN,
      ),
    ));
  }

  void runTestOnPageList(String groupName) => group(groupName, () {
        testGoldensSimple(
          testName: TestNameCommon.EMPTY,
          overrides: [
            overrideGraphQlEmpty,
            kOverrideConnectedRepositoryConnectedImpl
          ],
          onPostBuild: (tester) {
            expect(find.byType(EmptyListWidget), findsOneWidget);
          },
        );
        testGoldensSimple(
          testName: TestNameCommon.NORMAL,
          overrides: [
            _overrideNormal,
            kOverrideConnectedRepositoryConnectedImpl
          ],
          onPostBuild: (tester) {
            expect(find.byType(MovieListItem), findsWidgets);
          },
        );
      });
}
