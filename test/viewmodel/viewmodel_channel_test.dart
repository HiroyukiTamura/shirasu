import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelChannel]
Future<void> main() async {
  final channelId = await kJsonClient.channel.then((it) => it.channel.id);

  final testBase = ViewModelTestBase<ChannelModel>(
    prvViewModel: kPrvViewModelChannel(channelId),
  );

  await testBase.init();

  group(
      'ViewModelChannel.initialize',
      () => testBase
        ..testNetworkDisconnected(
            const ChannelModel.error(ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            const ChannelModel.error(ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            const ChannelModel.error(ErrorMsgCommon.authExpired()))
        ..testUnAuth(const ChannelModel.error(ErrorMsgCommon.unAuth()))
        ..testUnknownError(const ChannelModel.error(ErrorMsgCommon.unknown())));

  /// test for [ViewModelChannel.loadingMore]
  group('ViewModelChannel.loadingMore', () {
    final modelLoading = ChannelModel.success(ChannelDataWrapper(
      data: testBase.hasNextTokenChannelData,
      loading: true,
    ));
    final modelNonLoading = ChannelModel.success(ChannelDataWrapper(
      data: testBase.hasNextTokenChannelData,
      loading: false,
    ));

    ProviderContainer createProviderContainer(List<Override> list) =>
        ProviderContainer(
          overrides: testBase.defaultOverride + list,
        );

    Future<void> testTemplate({
      List<Override> override = const [],
      ChannelModel defaultState,
      @required ChannelModel expectedState,
      @required SnackMsg expectedSnack,
    }) async {
      // must have original SnackBarMessageNotifier!!
      final snackNtf = SnackBarMessageNotifier();
      final overrideSnackBar = kPrvSnackBar.overrideWithValue(snackNtf);
      final container = createProviderContainer(override + [overrideSnackBar]);
      final viewModel =
          container.listen(kPrvViewModelChannel(channelId)).read();
      // final snackBar = container.listen(kPrvSnackBar.state).read();
      if (defaultState != null) viewModel.state = defaultState;
      await viewModel.loadMorePrograms();
      final snack = container.listen(kPrvSnackBar.state).read();//must listen after loadMorePrograms!
      expect(viewModel.state, expectedState);
      // expect(snackBar?.snackMsg, expectedSnack);
      expect(snack?.snackMsg, expectedSnack);
    }

    test(
      'StateIsInvalid_CancelLoadingMore',
      () async => testTemplate(
        expectedState: const ChannelModel.preInitialized(),
        expectedSnack: null,
      ),
    );
    test(
      'StateNowLoadingMore_CancelLoadingMore',
      () async {
        return testTemplate(
          override: [
            kOverrideGraphqlErr,
            kOverrideConnectedRepositoryConnectedImpl,
          ],
          defaultState: modelLoading,
          expectedState: modelLoading,
          expectedSnack: null,
        );
      },
    );
    test(
      ViewModelTestBase.TEST_NAME_NETWORK_DISCONNECTED,
      () async {
        await testTemplate(
          override: [
            kOverrideDisconnected,
            kOverrideGraphqlErr,
          ],
          defaultState: modelNonLoading,
          expectedState: modelNonLoading,
          expectedSnack: const SnackMsg.networkDisconnected(),
        );
      },
    );
    test(
      ViewModelTestBase.TEST_NAME_NETWORK_TIMEOUT,
      () async {
        await testTemplate(
          override: [
            kOverrideGraphqlTimeout,
            kOverrideConnectedRepositoryConnectedImpl,
          ],
          defaultState: modelNonLoading,
          expectedState: modelNonLoading,
          expectedSnack: const SnackMsg.networkTimeout(),
        );
      },
    );
    test(
      ViewModelTestBase.TEST_NAME_ERR_UNKNOWN,
      () async {
        await testTemplate(
          override: [
            kOverrideGraphqlErr,
            kOverrideConnectedRepositoryConnectedImpl,
          ],
          defaultState: modelNonLoading,
          expectedState: modelNonLoading,
          expectedSnack: const SnackMsg.unknown(),
        );
      },
    );
  });
}
