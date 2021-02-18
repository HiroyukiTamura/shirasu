import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_comment/comment_list_view.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_comment/provider_page_comment.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
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
      : super(() => SafeArea(
              child: Scaffold(
                body: PageComment(
                  id: dummyData.program.id,
                ),
              ),
            ));

  final ProgramDetailData dummyData;

  void runTest() => group('ScreenDetailComment', () {
        testGoldensSimple(
          testName: 'ScreenDetailComment_Loading',
          overrides: [
            kPrvViewModelDetail(dummyData.program.id).overrideWithProvider(
                ViewModelDetailMockable.createProvider(
                    ModelDetail.initial(true), dummyData.program.id)),
          ],
          onPostBuild: (tester) =>
              expect(find.byType(CenterCircleProgress), findsOneWidget),
        );
        testGoldensSimple(
          testName: 'ScreenDetailComment_Error',
          overrides: [
            kPrvViewModelDetail(dummyData.program.id)
                .overrideWithProvider(ViewModelDetailMockable.createProvider(
                    ModelDetail.initial(true).copyWith(
                        commentHolder: CommentsHolder.initial(true).copyWith(
                      state: const CommentsState.error(),
                    )),
                    dummyData.program.id)),
          ],
          onPostBuild: (tester) => expect(
              find.widgetWithText(PageErrText, Strings.SNACK_ERR),
              findsOneWidget),
        );
        testGoldensSimple(
          testName: 'ScreenDetailComment_Success_EmptyComment',
          overrides: [
            kPrvViewModelDetail(dummyData.program.id)
                .overrideWithProvider(ViewModelDetailMockable.createProvider(
                    ModelDetail.initial(true).copyWith(
                        commentHolder: CommentsHolder.initial(true).copyWith(
                      state: const CommentsState.success(),
                    )),
                    dummyData.program.id)),
          ],
          onPostBuild: (tester) {
            expect(find.byType(ListView), findsNothing);
            expect(find.byType(CommentBtmBar), findsNothing);
          },
        );
        testGoldensSimple(
          testName: 'ScreenDetailComment_Success_Normal',
          overrides: [
            kPrvViewModelDetail(dummyData.program.id)
                .overrideWithProvider(ViewModelDetailMockable.createProvider(
                    ModelDetail.initial(true).copyWith(
                        commentHolder: CommentsHolder.initial(true).copyWith(
                      state: const CommentsState.success(),
                    )),
                    dummyData.program.id)),
            kPrvPageUiData(dummyData.program.id)
                .overrideWithValue(StateController(PageUiData(
              rawComments: listCommentsByProgram.comments.itemsSorted,
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
