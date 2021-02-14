import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelDashBoard]
Future<void> main() async {
  final testBase = ViewModelTestBase<DashboardModel>(
    prvDashboardViewModel: kPrvDashboardViewModel,
  );

  await testBase.init();

  group('ViewModelDashBoard', () {
    testBase
      ..testNetworkDisconnected(
          const DashboardModel.error(ErrorMsgCommon.networkDisconnected()))
      ..testNetworkTimeout(
          const DashboardModel.error(ErrorMsgCommon.networkTimeout()))
      ..testAuthExpired(
          const DashboardModel.error(ErrorMsgCommon.authExpired()))
      ..testUnAuth(const DashboardModel.error(ErrorMsgCommon.unAuth()))
      ..testUnknownError(const DashboardModel.error(ErrorMsgCommon.unknown()))
      ..testNormal(//todo implement to ViewModelSubscribing, ViewModelWatchHistory
        DashboardModel.success(DataWrapper.initial(ApiData(
          featureProgramData: testBase.featureProgramData,
          rawNewProgramsDataList: [testBase.newProgramsData],
        ))),
      );
  });
}
