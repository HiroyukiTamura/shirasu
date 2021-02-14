import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import 'viewmodel_test_base.dart';

/// test for [ViewModelSubscribing]
void main() {
  final testBase = ViewModelTestBase<FeatureProgramState>(
    prvViewModel: kPrvViewModelSubscribing,
  );

  group(
      'ViewModelSubscribing',
      () => testBase
        ..testNetworkDisconnected(const FeatureProgramState.error(
            ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            const FeatureProgramState.error(ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            const FeatureProgramState.error(ErrorMsgCommon.authExpired()))
        ..testUnAuth(const FeatureProgramState.error(ErrorMsgCommon.unAuth()))
        ..testUnknownError(
            const FeatureProgramState.error(ErrorMsgCommon.unknown())));
}
