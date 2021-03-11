import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import 'viewmodel_test_base.dart';

/// test for [ViewModelSubscribing]
void main() {
  final testBase = ViewModelTestBase<SubscribingProgramState>(
    prvViewModel: kPrvViewModelSubscribing,
  );

  group(
      'ViewModelSubscribing',
      () => testBase
        ..testNetworkDisconnected(const SubscribingProgramState.error(
            ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            const SubscribingProgramState.error(ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            const SubscribingProgramState.error(ErrorMsgCommon.authExpired()))
        ..testUnAuth(const SubscribingProgramState.error(ErrorMsgCommon.unAuth()))
        ..testUnknownError(
            const SubscribingProgramState.error(ErrorMsgCommon.unknown())));
}
