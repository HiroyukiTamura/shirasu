import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:dartx/dartx.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_common.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/override_util.dart';
import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';

/// test util for [ViewModelBase]
class ViewModelTestBase<T> {
  ViewModelTestBase({this.prvViewModel, this.prvDashboardViewModel}) {
    Util.require(
        [prvViewModel, prvDashboardViewModel].filterNotNull().length == 1);
  }

  final AutoDisposeStateNotifierProvider<ViewModelBase<T>> prvViewModel;
  final AutoDisposeChangeNotifierProvider<ViewModelDashBoard>
      prvDashboardViewModel;

  final defaultOverride = kOverrideUtil.createOverrides([
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
  ]);

  List<Override> _graphQlOverrideNormal;
  ChannelData hasNextTokenChannelData;

  ChannelData get mChannelData => JsonClient.instance.mChannelData;
  ListCommentsByProgram get mCommentsByProgram => JsonClient.instance.mListCommentsByProgram;

  Future<void> init() async {
    hasNextTokenChannelData =
        mChannelData.copyWith.channel.programs(
      nextToken: TestRunnerBase.NEXT_TOKEN,
    );
    _graphQlOverrideNormal = kOverrideUtil.createOverrides([
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
        featureProgramData: JsonClient.instance.mFeatureProgramData,
        newProgramsData: JsonClient.instance.mNewProgramsData,
        watchHistoriesData: JsonClient.instance.mWatchHistoriesData,
        viewerWrapper: JsonClient.instance.mViewerWrapper,
        listSubscribedPrograms: JsonClient.instance.mListSubscribedPrograms,
      )),
    ]);
  }

  Future<void> _testTemplate({
    @required List<Override> override,
    @required T expectState,
    @required dynamic expectPath,
  }) async {
    final container = ProviderContainer(
      overrides:
          override + defaultOverride + [kOverrideEmptyHiveAuthRepository],
    );
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    if (prvViewModel != null) {
      final viewModel = container.listen(prvViewModel).read();
      await viewModel.initialize();
      await Future.delayed(13.seconds);
      expect(
          // ignore: invalid_use_of_protected_member
          viewModel.state,
          expectState);
    } else {
      final viewModel = container.listen(prvDashboardViewModel).read();
      await viewModel.initialize();
      expect(
          // ignore: invalid_use_of_protected_member
          viewModel.state,
          expectState);
    }

    expect(appRouter.appState.last, expectPath);
  }

  void testNetworkDisconnected(T expectState) => test(
      TestNameCommon.ERR_NETWORK_DISCONNECTED,
      () async => _testTemplate(
            override: [kOverrideDisconnected],
            expectState: expectState,
            expectPath: isNot(isA<PathDataError>()),
          ));

  void testNetworkTimeout(T expectState) => test(
        TestNameCommon.ERR_NETWORK_TIMEOUT,
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlTimeout,
          ],
          expectState: expectState,
          expectPath: isNot(isA<PathDataError>()),
        ),
      );

  void testAuthExpired(T expectState) => test(
        TestNameCommon.ERR_AUTH_EXPIRED,
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthDetectedByTime,
          ],
          expectState: expectState,
          expectPath: const GlobalRoutePath.error(true, Strings.ERR_AUTH_EXPIRED),
        ),
      );

  void testUnAuth(T expectState) => test(
        TestNameCommon.ERR_UN_AUTH,
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthNotDetectedByTime,
          ],
          expectState: expectState,
          expectPath: const GlobalRoutePath.error(true, Strings.ERR_UN_AUTH),
        ),
      );

  void testUnknownError(T expectState) => test(
        TestNameCommon.ERR_UNKNOWN,
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlErr,
          ],
          expectState: expectState,
          expectPath: isNot(isA<PathDataError>()),
        ),
      );

  void testNormal(T expectState) => test(
        TestNameCommon.NORMAL,
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            ..._graphQlOverrideNormal,
          ],
          expectState: expectState,
          expectPath: isNot(isA<PathDataError>()),
        ),
      );
}
