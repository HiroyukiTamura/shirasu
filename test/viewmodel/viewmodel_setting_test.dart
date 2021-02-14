import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import 'viewmodel_test_base.dart';

/// test for [ViewModelSetting]
void main() {
  final testBase = ViewModelTestBase<SettingModel>(
    prvViewModel: kPrvViewModelSetting,
  );

  SettingModel createSettingModelErr(ErrorMsgCommon errorMsg) =>
      SettingModel.initial().copyWith(
        settingModelState: SettingModelState.error(errorMsg),
      );

  group(
      'ViewModelSetting.initialize',
      () => testBase
        ..testNetworkDisconnected(
            createSettingModelErr(const ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            createSettingModelErr(const ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            createSettingModelErr(const ErrorMsgCommon.authExpired()))
        ..testUnAuth(createSettingModelErr(const ErrorMsgCommon.unAuth()))
        ..testUnknownError(
            createSettingModelErr(const ErrorMsgCommon.unknown())));
}
