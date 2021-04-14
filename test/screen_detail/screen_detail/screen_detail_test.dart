import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() =>
    _TestRunner(JsonClient.instance.mProgramDetailData).runScreenTest();

/// todo test BottomPanel (integration)
/// todo test fab visibility
class _TestRunner extends TestRunnerBase {
  _TestRunner(this.dummyData)
      : super(
          () => ScreenDetail(id: dummyData.program.id),
          goldenNamePrefix: 'ScreenDetail',
        );

  final ProgramDetailData dummyData;

  Override createOverride(ModelDetail model) =>
      kPrvViewModelDetail(dummyData.program.id).overrideWithProvider(
          ViewModelDetailMockable.createProvider(model, dummyData.program.id));

  void runScreenTest() => group('ScreenDetail', () {
        testGoldensSimple(testName: 'Initial', overrides: [
          createOverride(ModelDetail.initial(true)),
          ...defaultOverride
        ]);
        testGoldensSimple(testName: 'Error', overrides: [
          createOverride(ModelDetail.initial(true).copyWith(
            prgDataResult:
                const DetailModelState.error(ErrorMsgCommon.unknown()),
          )),
          ...defaultOverride
        ]);
        testGoldensSimple(testName: 'Success', overrides: [
          createOverride(
            ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData,
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            ),
          ),
          ...defaultOverride,
        ]);
        testGoldensSimple(
            testName: 'EmptyTag',
            overrides: [
              createOverride(ModelDetail.initial(true).copyWith(
                prgDataResult: DetailModelState.success(
                  programDetailData: dummyData.copyWith.program(rawTags: []),
                  page: const PageSheetModel.hidden(),
                  channelData: mChannelData,
                ),
              )),
              ...defaultOverride,
            ],
            onPostBuild: (tester) {
              expect(find.byType(VideoTagChip), findsNothing);
            });
      });
}
