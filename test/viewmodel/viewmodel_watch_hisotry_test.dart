import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';
import '../mock_viewmodel/viewmodel_watch_hisotry_mockable.dart';
import '../widget_test_util/test_util.dart';

void main() {
  final defaultOverride = [
    kPrvHivePrefRepository
        .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
    kPrvHiveAuthRepository.overrideWithValue(HiveEmptyAuthRepositoryImpl()),
  ];

  Future<void> testTemplate({
    List<Override> override = const [],
    @required WatchHistoryState expectState,
    @required dynamic expectPath,
  }) async {
    final container = ProviderContainer(
      overrides: override + defaultOverride,
    );
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    final viewModel = container.listen(kPrvViewModelWatchHistory).read();
    await viewModel.initialize();
    expect(
        // ignore: invalid_use_of_protected_member
        viewModel.state,
        expectState);
    expect(appRouter.appState.last, expectPath);
  }

  /// test for [ViewModelWatchHistory.initialize]
  group('ViewModelWatchHistory Initialization', () {
    test(
      'networkDisconnected',
      () async => testTemplate(
        override: [kOverrideDisconnected],
        expectState:
            const WatchHistoryState.error(ErrorMsgCommon.networkDisconnected()),
        expectPath: isNot(isA<PathDataError>()),
      ),
    );
    test(
      'networkTimeout',
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
        ],
        expectState:
            const WatchHistoryState.error(ErrorMsgCommon.networkTimeout()),
        expectPath: isNot(isA<PathDataError>()),
      ),
    );
    test(
      'AuthExpired',
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlUnAuthDetectedByTime,
        ],
        expectState:
            const WatchHistoryState.error(ErrorMsgCommon.authExpired()),
        expectPath: const GlobalRoutePath.error(true),
      ),
    );
    test(
      'UnAuth',
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlUnAuthNotDetectedByTime,
        ],
        expectState: const WatchHistoryState.error(ErrorMsgCommon.unAuth()),
        expectPath: const GlobalRoutePath.error(true),
      ),
    );
    test(
      'UnknownError',
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlErr,
        ],
        expectState: const WatchHistoryState.error(ErrorMsgCommon.unknown()),
        expectPath: isNot(isA<PathDataError>()),
      ),
    );
  });

  /// test for [ViewModelWatchHistory.loadMoreWatchHistory]
  group('ViewModelWatchHistory LoadingMore', () {
    WatchHistoriesData dataNoNextToken;
    WatchHistoryState noNextTokenState;
    WatchHistoryState hasNextTokenState;

    setUpAll(() async {
      dataNoNextToken = await kJsonClient.watchHistoriesData;
      noNextTokenState = WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: [dataNoNextToken].toUnmodifiable(),
        isLoadingMore: false,
      ));
      hasNextTokenState = WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: [
          dataNoNextToken.copyWith.viewerUser
              .watchHistories(nextToken: 'NEXT_TOKEN')
        ].toUnmodifiable(),
        isLoadingMore: false,
      ));
    });

    ProviderContainer createProviderContainer(List<Override> list) =>
        ProviderContainer(
          overrides: defaultOverride + list,
        );

    Future<void> testTemplate({
      List<Override> override = const [],
      @required WatchHistoryState expectedState,
      @required SnackMsg expectedSnack,
    }) async {
      final container = createProviderContainer(override);
      final viewModel = container.listen(kPrvViewModelWatchHistory).read();
      final snackBar = container.listen(kPrvSnackBar).read();
      await viewModel.loadMoreWatchHistory();
      // ignore: invalid_use_of_protected_member
      expect(viewModel.state, expectedState);
      // ignore: invalid_use_of_protected_member
      expect(snackBar.state?.snackMsg, expectedSnack);
    }

    test(
      'StateIsInvalid_CancelLoadingMore',
      () async {
        final override = kPrvViewModelWatchHistory.overrideWithProvider(
            ViewModelWatchHistoryMockable.createProvider(null));
        await testTemplate(
          override: [override],
          expectedState: const WatchHistoryState.initial(),
          expectedSnack: null,
        );
      },
    );
    test(
      'NoNextToken_CancelLoadingMore',
      () async {
        final override = kPrvViewModelWatchHistory.overrideWithProvider(
            ViewModelWatchHistoryMockable.createProvider(noNextTokenState));
        await testTemplate(
          override: [override],
          expectedState: noNextTokenState,
          expectedSnack: null,
        );
      },
    );
    test(
      'NetworkDisconnected',
      () async {
        final overrideViewModel = kPrvViewModelWatchHistory
            .overrideWithProvider(ViewModelWatchHistoryMockable.createProvider(
                hasNextTokenState));
        final overrideList = [
          kOverrideDisconnected,
          overrideViewModel,
        ];
        await testTemplate(
          override: overrideList,
          expectedState: hasNextTokenState,
          expectedSnack: const SnackMsg.networkDisconnected(),
        );
      },
    );
    test(
      'NetworkTimeout',
      () async {
        final overrideViewModel = kPrvViewModelWatchHistory
            .overrideWithProvider(ViewModelWatchHistoryMockable.createProvider(
                hasNextTokenState));
        final overrideList = [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          overrideViewModel,
        ];
        await testTemplate(
          override: overrideList,
          expectedState: hasNextTokenState,
          expectedSnack: const SnackMsg.networkTimeout(),
        );
      },
    );
    test(
      'ErrUnknown',
          () async {
        final overrideViewModel = kPrvViewModelWatchHistory
            .overrideWithProvider(ViewModelWatchHistoryMockable.createProvider(
            hasNextTokenState));
        final overrideList = [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlErr,
          overrideViewModel,
        ];
        await testTemplate(
          override: overrideList,
          expectedState: hasNextTokenState,
          expectedSnack: const SnackMsg.unknown(),
        );
      },
    );
  });
}
