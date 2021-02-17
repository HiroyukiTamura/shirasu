import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:test/test.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final programDetail = await kJsonClient.programDetail;

  final runner = _TestRunner(programDetail);
  await runner.init();
  runner.runScreenTest();
}

class _TestRunner extends TestRunnerBase {
  _TestRunner(this.dummyData)
      : super(() => ScreenDetail(
              id: dummyData.program.id,
            ));

  final ProgramDetailData dummyData;

  void runScreenTest() => group('ScreenDetail', () {
        testGoldensSimple(testName: 'initial', overrides: [
          kPrvViewModelDetail(dummyData.program.id).overrideWithProvider(
              ViewModelDetailMockable.createProvider(
                  ModelDetail.initial(true), dummyData.program.id))
        ]);
      });
}
