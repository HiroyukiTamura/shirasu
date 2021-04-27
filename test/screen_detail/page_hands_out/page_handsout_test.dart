import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_name_common.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(() => PageHandouts(
              onClearClicked: (context) {},
              program: JsonClient.instance.mProgramDetailData.program,
            ), goldenNamePrefix: 'ScreenDetailHandout');

  Override createViewModel(ModelDetail model) =>
      kPrvViewModelDetail(mProgramDetailData.program.id).overrideWithProvider(
          ViewModelDetailMockable.createProvider(
              model, mProgramDetailData.program.id));

  void runTest() => group('ScreenDetailHandout', () {
        testGoldensSimple(
            testName: 'HandoutUrlRequesting',
            overrides: [
              createViewModel(ModelDetail.initial(true).copyWith(
                isHandoutUrlRequesting: true,
                prgDataResult: DetailModelState.success(
                  programDetailData: mProgramDetailData,
                  page: const PageSheetModel.hidden(),
                  channelData: mChannelData,
                ),
              )),
            ],
            onPostBuild: (tester) =>
                expect(find.byType(CenterCircleProgress), findsOneWidget));
        testGoldensSimple(
            testName: TestNameCommon.NORMAL,
            overrides: [
              createViewModel(ModelDetail.initial(true).copyWith(
                isHandoutUrlRequesting: false,
                prgDataResult: DetailModelState.success(
                  programDetailData: mProgramDetailData,
                  page: const PageSheetModel.hidden(),
                  channelData: mChannelData,
                ),
              )),
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
              // expect(
              //     find.byWidgetPredicate((widget) =>
              //         widget is ListTile &&
              //         !widget.enabled &&
              //         widget.isThreeLine &&
              //         (widget.title as Text).data == '20201019シラス開設記念.pdf'),
              //     findsOneWidget);
            });
      });
}
