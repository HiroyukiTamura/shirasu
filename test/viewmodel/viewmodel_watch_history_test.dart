@Timeout(Duration(minutes: 1))

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
import '../mock_viewmodel/viewmodel_watch_history_mockable.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_name_common.dart';
import '../widget_test_util/test_runner_base.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelSubscribing]
void main() {
  final testBase = ViewModelTestBase<WatchHistoryState>(
    prvViewModel: kPrvViewModelWatchHistory,
  );

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

  Override createViewModel(WatchHistoryState state) =>
      kPrvViewModelWatchHistory.overrideWithProvider(
          ViewModelWatchHistoryMockable.createProvider(state));

  /// test for [ViewModelWatchHistory.loadMoreWatchHistory]
  group('ViewModelWatchHistory LoadingMore', () {
    WatchHistoriesData dataNoNextToken;
    WatchHistoryState noNextTokenState;
    WatchHistoryState hasNextTokenState;

    setUpAll(() {
      dataNoNextToken = JsonClient.instance.mWatchHistoriesData;
      noNextTokenState = WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: [dataNoNextToken].toUnmodifiable(),
        isLoadingMore: false,
      ));
      hasNextTokenState = WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: [
          dataNoNextToken.copyWith.viewerUser.watchHistories(
            nextToken: TestRunnerBase.NEXT_TOKEN,
          )
        ].toUnmodifiable(),
        isLoadingMore: false,
      ));
    });

    Future<void> testTemplate({
      @required WatchHistoryState expectedState,
      @required SnackMsg expectedSnack,
      List<Override> override = const [],
    }) async {
      final container = ProviderContainer(
        overrides: testBase.defaultOverride + override,
      );
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
      () async => testTemplate(
        override: [createViewModel(null)],
        expectedState: const WatchHistoryState.initial(),
        expectedSnack: null,
      ),
    );
    test(
      'NoNextToken_CancelLoadingMore',
      () async => testTemplate(
        override: [createViewModel(noNextTokenState)],
        expectedState: noNextTokenState,
        expectedSnack: null,
      ),
    );
    test(
      TestNameCommon.ERR_NETWORK_DISCONNECTED,
      () async => testTemplate(
        override: [
          kOverrideDisconnected,
          createViewModel(hasNextTokenState),
        ],
        expectedState: hasNextTokenState,
        expectedSnack: const SnackMsg.networkDisconnected(),
      ),
    );
    test(
      TestNameCommon.ERR_NETWORK_TIMEOUT,
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          createViewModel(hasNextTokenState),
        ],
        expectedState: hasNextTokenState,
        expectedSnack: const SnackMsg.networkTimeout(),
      ),
    );
    test(
      TestNameCommon.ERR_UNKNOWN,
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlErr,
          createViewModel(hasNextTokenState),
        ],
        expectedState: hasNextTokenState,
        expectedSnack: const SnackMsg.unknown(),
      ),
    );
  });
}
