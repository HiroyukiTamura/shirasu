import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_name_common.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_util.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => PagePriceChart(
            onClearClicked: (context) {},
            program: JsonClient.instance.mProgramDetailData.program,
          ),
          goldenNamePrefix: 'ScreenDetailPriceChart',
        );

  void runTest() => group(
        'ScreenDetailPriceChart',
        () => testGoldensSimple(
          testName: TestNameCommon.NORMAL,
          overrides: [
            kPrvViewModelDetail(mProgramDetailData.program.id)
                .overrideWithProvider(ViewModelDetailMockable.createProvider(
                    ModelDetail.initial(true).copyWith(
                      prgDataResult: DetailModelState.success(
                        programDetailData: mProgramDetailData,
                        page: const PageSheetModel.hidden(),
                        channelData: mChannelData,
                      ),
                    ),
                    mProgramDetailData.program.id)),
          ],
        ),
      );
}
