import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter_riverpod/all.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_common.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';
import '../widget_test_util/override_util.dart';
import '../widget_test_util/test_util.dart';

/// test util for [ViewModelBase]
class ViewModelTestBase<T> {
  ViewModelTestBase({this.prvViewModel, this.prvDashboardViewModel}) {
    Util.require(
        [prvViewModel, prvDashboardViewModel].filterNotNull().length == 1);
  }

  static const TEST_NAME_NETWORK_DISCONNECTED = 'NetworkDisconnected';
  static const TEST_NAME_NETWORK_TIMEOUT = 'NetworkTimeout';
  static const TEST_NAME_ERR_UNKNOWN = 'ErrUnknown';
  static const TEST_NAME_NORMAL = 'Normal';

  final AutoDisposeStateNotifierProvider<ViewModelBase<T>> prvViewModel;
  final AutoDisposeChangeNotifierProvider<ViewModelDashBoard>
      prvDashboardViewModel;

  final defaultOverride = kOverrideUtil.createOverrides([
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
  ]);

  List<Override> _graphQlOverrideNormal;
  FeatureProgramData featureProgramData;
  NewProgramsData newProgramsData;
  WatchHistoriesData watchHistoriesData;
  ViewerWrapper viewerWrapper;
  HiveAuthData hiveAuthData;
  ChannelData channelData;
  ChannelData hasNextTokenChannelData;

  Future<void> init() async {
    featureProgramData = await kJsonClient.featureProgramData;
    newProgramsData = await kJsonClient.newProgramsData;
    watchHistoriesData = await kJsonClient.watchHistoriesData;
    viewerWrapper = await kJsonClient.viewerWrapper;
    hiveAuthData = await kJsonClient.hiveAuth;
    channelData = await kJsonClient.channel;
    hasNextTokenChannelData = channelData.copyWith.channel.programs(
      nextToken: 'NEXT_TOKEN',
    );
    _graphQlOverrideNormal = kOverrideUtil.createOverrides([
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
        featureProgramData: featureProgramData,
        newProgramsData: newProgramsData,
        watchHistoriesData: watchHistoriesData,
        viewerWrapper: viewerWrapper,
      )),
    ]);
  }

  Future<void> _testTemplate({
    @required List<Override> override,
    @required T expectState,
    @required dynamic expectPath,
  }) async {
    final container = ProviderContainer(
      overrides: override + defaultOverride + [kOverrideEmptyHiveAuthRepository],
    );
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    if (prvViewModel != null) {
      final viewModel = container.listen(prvViewModel).read();
      await viewModel.initialize();
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
      TEST_NAME_NETWORK_DISCONNECTED,
      () async => _testTemplate(
            override: [kOverrideDisconnected],
            expectState: expectState,
            expectPath: isNot(isA<PathDataError>()),
          ));

  void testNetworkTimeout(T expectState) => test(
        TEST_NAME_NETWORK_TIMEOUT,
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
        'AuthExpired',
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthDetectedByTime,
          ],
          expectState: expectState,
          expectPath: const GlobalRoutePath.error(true),
        ),
      );

  void testUnAuth(T expectState) => test(
        'UnAuth',
        () async => _testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthNotDetectedByTime,
          ],
          expectState: expectState,
          expectPath: const GlobalRoutePath.error(true),
        ),
      );

  void testUnknownError(T expectState) => test(
        TEST_NAME_ERR_UNKNOWN,
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
      TEST_NAME_NORMAL,
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
