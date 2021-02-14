import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';

class ViewModelTestBase<T> {
  ViewModelTestBase(this._prvViewModel);

  static const TEST_NAME_NETWORK_DISCONNECTED = 'NetworkDisconnected';
  static const TEST_NAME_NETWORK_TIMEOUT = 'NetworkTimeout';
  static const TEST_NAME_ERR_UNKNOWN = 'ErrUnknown';

  final AutoDisposeStateNotifierProvider<ViewModelBase<T>> _prvViewModel;

  final defaultOverride = [
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
    kOverrideEmptyHiveAuthRepository,
  ];

  Future<void> _testTemplate({
    @required List<Override> override,
    @required T expectState,
    @required dynamic expectPath,
  }) async {
    final container = ProviderContainer(
      overrides: override + defaultOverride,
    );
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    final viewModel = container.listen(_prvViewModel).read();
    await viewModel.initialize();
    expect(
        // ignore: invalid_use_of_protected_member
        viewModel.state,
        expectState);
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

  void testAuthExpired(T expectState) {
    test(
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
  }

  void testUnAuth(T expectState) {
    test(
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
  }

  void testUnknownError(T expectState) {
    test(
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
  }
}
