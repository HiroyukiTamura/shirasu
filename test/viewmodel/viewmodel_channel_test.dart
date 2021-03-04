import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
import '../mock_viewmodel/viewmodel_channel_mockable.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_name_common.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelChannel]
Future<void> main() async {
  final channelId = JsonClient.instance.mChannelData.channel.id;

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

    final overrideViewModel = kPrvViewModelChannel.overrideWithProvider(
        (ref, param) => ViewModelChannelMockable(
            ref.read, null, channelId));

    ProviderContainer createProviderContainer(List<Override> list) =>
        ProviderContainer(
          overrides: testBase.defaultOverride + list,
        );

    Future<void> testTemplate({
      @required ChannelModel expectedState,
      @required SnackMsg expectedSnack,
      List<Override> override = const [],
      ChannelModel defaultState,
      Duration delay = const Duration(seconds: 1),
    }) async {
      // must have original SnackBarMessageNotifier!!
      final snackNtf = SnackBarMessageNotifier();
      final overrideSnackBar = kPrvSnackBarChannel(channelId).overrideWithValue(snackNtf);
      final container = createProviderContainer(override + [overrideSnackBar]);
      final viewModel =
          container.listen(kPrvViewModelChannel(channelId)).read();
      // ignore: invalid_use_of_protected_member
      if (defaultState != null) viewModel.state = defaultState;
      await viewModel.loadMorePrograms();
      await Future.delayed(delay);
      final snack = container
          .listen(kPrvSnackBarChannel(channelId).state)
          .read(); //must listen after loadMorePrograms!
      // ignore: invalid_use_of_protected_member
      expect(viewModel.state, expectedState);
      expect(snack?.snackMsg, expectedSnack);
    }

    test(
      'StateIsInvalid_CancelLoadingMore',
      () async => testTemplate(
        override: [overrideViewModel],
        expectedState: const ChannelModel.preInitialized(),
        expectedSnack: null,
      ),
    );
    test(
      'StateNowLoadingMore_CancelLoadingMore',
      () async => testTemplate(
        override: [
          overrideViewModel,
          kOverrideGraphqlErr,
          kOverrideConnectedRepositoryConnectedImpl,
        ],
        defaultState: modelLoading,
        expectedState: modelLoading,
        expectedSnack: null,
      ),
    );
    test(
      TestNameCommon.ERR_NETWORK_DISCONNECTED,
      () async => testTemplate(
        override: [
          overrideViewModel,
          kOverrideDisconnected,
          kOverrideGraphqlErr,
        ],
        defaultState: modelNonLoading,
        expectedState: modelNonLoading,
        expectedSnack: const SnackMsg.networkDisconnected(),
      ),
    );
    test(
      TestNameCommon.ERR_NETWORK_TIMEOUT,
      () async => testTemplate(
        override: [
          overrideViewModel,
          kOverrideGraphqlTimeout,
          kOverrideConnectedRepositoryConnectedImpl,
        ],
        defaultState: modelNonLoading,
        expectedState: modelNonLoading,
        delay: 15.seconds,
        expectedSnack: const SnackMsg.networkTimeout(),
      ),
    );
    test(
      TestNameCommon.ERR_UNKNOWN,
      () async => testTemplate(
        override: [
          overrideViewModel,
          kOverrideGraphqlErr,
          kOverrideConnectedRepositoryConnectedImpl,
        ],
        defaultState: modelNonLoading,
        expectedState: modelNonLoading,
        expectedSnack: const SnackMsg.unknown(),
      ),
    );
  });
}
