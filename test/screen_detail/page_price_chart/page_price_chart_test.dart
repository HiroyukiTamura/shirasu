import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final programDetail = await kJsonClient.programDetail;

  final runner = _TestRunner(programDetail);
  await runner.init();
  runner.runTest();
}

class _TestRunner extends TestRunnerBase {
  _TestRunner(this.dummyData)
      : super(() => PagePriceChart(
    onClearClicked: (context) {},
    program: dummyData.program,
  ));

  final ProgramDetailData dummyData;

  void runTest() => group('ScreenDetailPriceChart', () {
    testGoldensSimple(
      testName: 'ScreenDetailPriceChart',
      overrides: [
        kPrvViewModelDetail(dummyData.program.id)
            .overrideWithProvider(ViewModelDetailMockable.createProvider(
            ModelDetail.initial(true).copyWith(
              isHandoutUrlRequesting: true,
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData,
                page: const PageSheetModel.hidden(),
                channelData: channelData,
              ),
            ),
            dummyData.program.id)),
      ],
    );
  });
}
