import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelDetail]
Future<void> main() async {
  final program = await kJsonClient.programDetail;

  final testBase = ViewModelTestBase<ModelDetail>(
    prvViewModel: kPrvViewModelDetail(program.program.id),
  );

  await testBase.init();

  group(
      'ViewModelDetail.initialize',
      () => testBase
        ..testNetworkDisconnected(
            ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.networkDisconnected(),
        ))
        ..testNetworkTimeout(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.networkTimeout(),
        ))
        ..testAuthExpired(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.authExpired(),
        ))
        ..testUnAuth(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.unAuth(),
        ))
        ..testUnknownError(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.unknown(),
        )));
}
