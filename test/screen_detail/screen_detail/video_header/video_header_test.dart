import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/play_btn.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';

import '../../../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../../../widget_test_util/json_client.dart';
import '../../../widget_test_util/test_runner_base.dart';

void main() =>
    _TestRunner(JsonClient.instance.mProgramDetailData).runScreenTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner(this.dummyData)
      : super(
            () => ScreenDetail(
                  id: dummyData.program.id,
                ),
            goldenNamePrefix: 'ScreenDetailHeader');

  final ProgramDetailData dummyData;

  Override createViewModelOverride(ModelDetail model) =>
      kPrvViewModelDetail(dummyData.program.id).overrideWithProvider(
          ViewModelDetailMockable.createProvider(model, dummyData.program.id));

  void runScreenTest() => group('ScreenDetailHeader', () {
        testGoldensSimple(
          testName: 'PlayerCommandedState.initializing',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true)
                .copyWith(
                  prgDataResult: DetailModelState.success(
                    programDetailData: dummyData,
                    page: const PageSheetModel.hidden(),
                    channelData: JsonClient.instance.mChannelData,
                  ),
                )
                .copyWith
                .playOutState(
                  commandedState: const PlayerCommandedState.initializing(),
                )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(LoadingThumbnail), findsOneWidget);
          },
        );
        testGoldensSimple(
          testName: 'PlayerCommandedState.prePlay_BeforeBroadcast',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData.copyWith.program(
                  broadcastAt: DateTime.now().add(1.days),
                ),
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(VideoThumbnail), findsOneWidget);
            expect(find.text(Strings.WAIT_FOR_START), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsNothing);
          },
        );
        testGoldensSimple(
          testName: 'PlayerCommandedState.prePlay_BeforeBroadcast_Purchased',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData,
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(VideoThumbnail), findsOneWidget);
            expect(find.byType(PlayBtn), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsNothing);
          },
        );
        testGoldensSimple(
          testName: 'PlayerCommandedState.prePlay_BeforeBroadcast_UnPurchased',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData.copyWith.program(
                  broadcastAt: DateTime.now().add(1.days),
                  viewerPlanType: null,
                ),
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(VideoThumbnail), findsOneWidget);
            expect(find.text(Strings.PURCHASE_BTN_TEXT), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsNothing);
          },
        );
        testGoldensSimple(
          testName:
              'PlayerCommandedState.prePlay_BeforeBroadcast_UnPurchased_CanPreview',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData.copyWith.program(
                  broadcastAt: DateTime.now().add(1.days),
                  viewerPlanType: null,
                ),
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(VideoThumbnail), findsOneWidget);
            expect(find.text(Strings.PURCHASE_BTN_TEXT), findsOneWidget);
            expect(find.text(Strings.PREVIEW_EXIST_MESSAGE), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsNothing);
          },
        );
        testGoldensSimple(
          testName:
              'PlayerCommandedState.prePlay_AfterBroadcast_UnPurchased_CanPreview',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true).copyWith(
              prgDataResult: DetailModelState.success(
                programDetailData: dummyData.copyWith.program(
                  viewerPlanType: null,
                ),
                page: const PageSheetModel.hidden(),
                channelData: JsonClient.instance.mChannelData,
              ),
            )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(VideoThumbnail), findsOneWidget);
            expect(find.text(Strings.PURCHASE_BTN_TEXT), findsOneWidget);
            expect(find.text(Strings.PREVIEW_BTN_TEXT), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsNothing);
          },
        );
        testGoldensSimple(
          testName: 'PlayerCommandedState.postPlay_VideoBuffering',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true)
                .copyWith(
                  prgDataResult: DetailModelState.success(
                    programDetailData: dummyData,
                    page: const PageSheetModel.hidden(),
                    channelData: JsonClient.instance.mChannelData,
                  ),
                )
                .copyWith
                .playOutState(
                  commandedState: const PlayerCommandedState.postPlay(),
                  videoPlayerState: const VideoPlayerState.ready(),
                  isBuffering: true,
                )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(BufferingIndicator), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsOneWidget);
          },
        );
        testGoldensSimple(
          testName: 'PlayerCommandedState.postPlay_VideoErr',
          overrides: [
            createViewModelOverride(ModelDetail.initial(true)
                .copyWith(
                  prgDataResult: DetailModelState.success(
                    programDetailData: dummyData,
                    page: const PageSheetModel.hidden(),
                    channelData: JsonClient.instance.mChannelData,
                  ),
                )
                .copyWith
                .playOutState(
                  videoPlayerState: const VideoPlayerState.error('ERR_MSG'),
                  commandedState: const PlayerCommandedState.postPlay(),
                )),
          ],
          onPostBuild: (tester) {
            expect(find.byType(PageErrText), findsOneWidget);
            expect(find.byType(PlayerViewWrapper), findsOneWidget);
          },
        );
      });
}
