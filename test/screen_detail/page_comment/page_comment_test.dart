import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_comment/comment_list_view.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_comment/provider_page_comment.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_name_common.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => SafeArea(
            child: Scaffold(
              body: PageComment(
                id: JsonClient.instance.mProgramDetailData.program.id,
              ),
            ),
          ),
          goldenNamePrefix: 'ScreenDetailComment',
        );

  Override overrideViewModel(ModelDetail model) =>
      kPrvViewModelDetail(mProgramDetailData.program.id)
          .overrideWithProvider(ViewModelDetailMockable.createProvider(
        model,
        mProgramDetailData.program.id,
      ));

  void runTest() => group('ScreenDetailComment', () {
        testGoldensSimple(
          testName: TestNameCommon.STATE_INITIAL,
          overrides: [
            overrideViewModel(ModelDetail.initial(true)),
          ],
          onPostBuild: (tester) =>
              expect(find.byType(CenterCircleProgress), findsOneWidget),
        );
        testGoldensSimple(
          testName: TestNameCommon.STATE_ERR,
          overrides: [
            overrideViewModel(ModelDetail.initial(true).copyWith(
                commentHolder: CommentsHolder.initial(true).copyWith(
              state: const CommentsState.error(ErrorMsgCommon.unknown()),
            )))
          ],
          onPostBuild: (tester) => expect(
              find.widgetWithText(PageErrText, Strings.SNACK_ERR),
              findsOneWidget),
        );
        testGoldensSimple(
          testName: 'ScreenDetailComment_Success_EmptyComment',
          overrides: [
            overrideViewModel(ModelDetail.initial(true).copyWith(
                commentHolder: CommentsHolder.initial(true).copyWith(
              state: const CommentsState.success(),
            ))),
          ],
          onPostBuild: (tester) {
            expect(find.byType(ListView), findsNothing);
            expect(find.byType(CommentBtmBar), findsNothing);
          },
        );
        testGoldensSimple(
          testName: TestNameCommon.NORMAL,
          overrides: [
            overrideViewModel(ModelDetail.initial(true).copyWith(
                commentHolder: CommentsHolder.initial(true).copyWith(
              state: const CommentsState.success(),
            ))),
            kPrvPageUiData(mProgramDetailData.program.id)
                .overrideWithValue(StateController(PageUiData(
              rawComments: JsonClient
                  .instance.mListCommentsByProgram.comments.itemsSorted,
              showBottomProgressIndicator: true,
            ))),
          ],
          onPostBuild: (tester) {
            expect(find.byType(ListView), findsOneWidget);
            expect(find.byType(CommentBtmBar), findsOneWidget);
          },
        );
      });
}
