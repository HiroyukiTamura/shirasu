import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_viewmodel/viewmodel_watch_hisotry_mockable.dart';
import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelSubscribing]
void main() {
  final testBase =
      ViewModelTestBase<WatchHistoryState>(kPrvViewModelWatchHistory);

  group(
      'ViewModelWatchHistory',
      () => testBase
        ..testNetworkDisconnected(
            const WatchHistoryState.error(ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            const WatchHistoryState.error(ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            const WatchHistoryState.error(ErrorMsgCommon.authExpired()))
        ..testUnAuth(const WatchHistoryState.error(ErrorMsgCommon.unAuth()))
        ..testUnknownError(
            const WatchHistoryState.error(ErrorMsgCommon.unknown())));

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
          overrides: testBase.defaultOverride + list,
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
      ViewModelTestBase.TEST_NAME_NETWORK_DISCONNECTED,
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
      ViewModelTestBase.TEST_NAME_NETWORK_TIMEOUT,
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
      ViewModelTestBase.TEST_NAME_ERR_UNKNOWN,
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
