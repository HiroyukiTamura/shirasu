import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_util.dart';

Future<void> main() async {
  final programDetail = await kJsonClient.programDetail;

  final runner = _TestRunner(programDetail);
  final panelHandout = _TestRunnerHandout(programDetail);
  await runner.init();
  await panelHandout.init();
  runner.runScreenTest();
  panelHandout.runTest();
}

/// todo test BottomPanel (integration)
/// todo test fab visibility
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
        testGoldensSimple(testName: 'error', overrides: [
          kPrvViewModelDetail(dummyData.program.id)
              .overrideWithProvider(ViewModelDetailMockable.createProvider(
                  ModelDetail.initial(true).copyWith(
                    prgDataResult:
                        const DetailModelState.error(ErrorMsgCommon.unknown()),
                  ),
                  dummyData.program.id))
        ]);
        testGoldensSimple(testName: 'success', overrides: [
          kPrvViewModelDetail(dummyData.program.id)
              .overrideWithProvider(ViewModelDetailMockable.createProvider(
                  ModelDetail.initial(true).copyWith(
                    prgDataResult: DetailModelState.success(
                      programDetailData: dummyData,
                      page: const PageSheetModel.hidden(),
                      channelData: channelData,
                    ),
                  ),
                  dummyData.program.id))
        ]);
        testGoldensSimple(
            testName: 'EmptyTag',
            overrides: [
              kPrvViewModelDetail(dummyData.program.id)
                  .overrideWithProvider(ViewModelDetailMockable.createProvider(
                      ModelDetail.initial(true).copyWith(
                        prgDataResult: DetailModelState.success(
                          programDetailData:
                              dummyData.copyWith.program(rawTags: []),
                          page: const PageSheetModel.hidden(),
                          channelData: channelData,
                        ),
                      ),
                      dummyData.program.id)),
            ],
            onPostBuild: (tester) async {
              expect(find.byType(VideoTagChip), findsNothing);
            });
      });
}

class _TestRunnerHandout extends TestRunnerBase {
  _TestRunnerHandout(this.dummyData)
      : super(() => PageHandouts(
              onClearClicked: (context) {},
              program: dummyData.program,
            ));

  final ProgramDetailData dummyData;

  void runTest() => group('ScreenDetailHandout', () {
        testGoldensSimple(
            testName: 'ScreenDetailHandout_HandoutUrlRequesting',
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
            onPostBuild: (tester) =>
                expect(find.byType(CenterCircleProgress), findsOneWidget));
        testGoldensSimple(
            testName: 'ScreenDetailHandout_Normal',
            overrides: [
              kPrvViewModelDetail(dummyData.program.id)
                  .overrideWithProvider(ViewModelDetailMockable.createProvider(
                      ModelDetail.initial(true).copyWith(
                        isHandoutUrlRequesting: false,
                        prgDataResult: DetailModelState.success(
                          programDetailData: dummyData,
                          page: const PageSheetModel.hidden(),
                          channelData: channelData,
                        ),
                      ),
                      dummyData.program.id)),
            ],
            onPostBuild: (tester) {
              expect(find.byType(CenterCircleProgress), findsNothing);
              expect(
                  find.byWidgetPredicate((widget) =>
                      widget is ListTile &&
                      widget.enabled &&
                      !widget.isThreeLine &&
                      (widget.title as Text).data == 'DUMMY.pdf'),
                  findsOneWidget);
              expect(
                  find.byWidgetPredicate((widget) =>
                      widget is ListTile &&
                      widget.enabled &&
                      widget.isThreeLine &&
                      (widget.title as Text).data == 'シラス_桂_20201025.pdf'),
                  findsOneWidget);
              expect(
                  find.byWidgetPredicate((widget) =>
                      widget is ListTile &&
                      !widget.enabled &&
                      widget.isThreeLine &&
                      (widget.title as Text).data == '20201019シラス開設記念.pdf'),
                  findsOneWidget);
            });
      });
}
