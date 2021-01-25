import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/native_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/dialog/portal_animated_modal_barrier.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/btm_sheet_play_speed.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

final detailSNProvider = StateNotifierProvider.autoDispose
    .family<ViewModelDetail, String>((ref, id) => ViewModelDetail(id, ref));

final kPrvVideoControllerReady =
    Provider.family.autoDispose<bool, String>((ref, id) {
  final playOutState = ref.watch(detailSNProvider(id).state).playOutState;
  return playOutState.commandedState == const PlayerCommandedState.postPlay() &&
      playOutState.videoPlayerState == const VideoPlayerState.ready();
});

final _pBtmSheetExpanded = Provider.autoDispose.family<PageSheetModel, String>(
  (ref, id) => ref.watch(detailSNProvider(id).state).prgDataResult.maybeWhen(
        success: (programDetail, channelData, page) => page,
        orElse: () => const PageSheetModel.hidden(),
      ),
);

final pDetailScaffold = Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScreenDetail extends StatefulHookWidget {
  const ScreenDetail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail>
    with WidgetsBindingObserver {
  // bool get isPlaying =>
  //     context.read(pVideoViewModel(widget.id).state).isPlaying;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.dependOnInheritedWidgetOfExactType();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _stopPlayBackground();
        break;
      case AppLifecycleState.inactive:
        _startPlayBackground(); //todo is it good??
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        break;
    }
  }

  @override
  Widget build(BuildContext context) => BtmSheetPlaySpeed(
      id: widget.id,
      onTap: (double playSpeed) async {
        _clearModal(context);
        await HivePrefectureClient.instance().setPlaySpeed(playSpeed);
      },
      visible: useProvider(detailSNProvider(widget.id)
          .state
          .select((it) => it.portalState == const PortalState.playSpeed())),
      onTapBackDrop: () => _clearModal(context),
      child: SafeArea(
        child: ColoredBox(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: useProvider(detailSNProvider(widget.id)
              .state
              .select((it) => it.prgDataResult)).when(
            loading: () => const CenterCircleProgress(),
            preInitialized: () => const CenterCircleProgress(),
            error: () => const PageError(),
            success: _successWidget,
          ),
        ),
      ),
    );

  void _clearModal(BuildContext context) =>
      context.read(detailSNProvider(widget.id)).clearModal();

  Future<void> _stopPlayBackground() async {
    // if (!isPlaying) return;
    //
    // await NativeClient.stopBackGround();
    // await context.read(pVideoViewModel(widget.id)).playProgrammatically();
  }

  Future<void> _startPlayBackground() async {
    // if (!isPlaying) return;
    //
    // await context.read(pVideoViewModel(widget.id)).pauseProgrammatically();
    //
    // final prgDataResult =
    //     context.read(detailSNProvider(widget.id).state).prgDataResult;
    // if (prgDataResult is StateSuccess) {
    //   final playOutState =
    //       context.read(pVideoViewModel(widget.id)).playOutState;
    //   await NativeClient.startPlayBackGround(
    //     url: playOutState.hlsMediaUrl,
    //     isLiveStream: playOutState.videoType == VideoType.LIVE,
    //     position: context
    //         .read(pVideoViewModel(widget.id).state)
    //         .currentPosSafe
    //         .inMilliseconds,
    //     iconUrl: UrlUtil.getThumbnailUrl(widget.id),
    //     cookie: playOutState.cookie,
    //     title: prgDataResult.programDetailData.program.title,
    //     subtitle: prgDataResult.channelData.channel.name,
    //   );
    // }
  }

  Future<void> _playVideo(BuildContext context, bool isPreview) async =>
      context.read(detailSNProvider(widget.id)).playVideo(isPreview);

  Widget _successWidget(ProgramDetailData programDetailData,
          ChannelData channelData, PageSheetModel page) =>
      LayoutBuilder(builder: (context, constraints) {
        final orientation = MediaQuery.of(context).orientation;
        final conf =
            VideoViewModelConf(widget.id, orientation == Orientation.landscape);
        if (orientation == Orientation.portrait) {
          double headerH = constraints.maxWidth / Dimens.IMG_RATIO;
          final listViewH = constraints.maxHeight - headerH;
          return Stack(
            children: [
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  VideoHeader(
                    height: headerH,
                    conf: conf,
                    onTap: () async => _playVideo(context, false),
                    onTapPreviewBtn: () async => _playVideo(context, true),
                  ),
                  _PlayerBodyWrapper(
                    height: listViewH,
                    data: programDetailData,
                  )
                ],
              ),
              VideoSeekBarHoverStyle(
                conf: conf,
                topMargin: headerH - Dimens.VIDEO_SEEK_BAR_HOVER_STYLE_H / 2,
              ),
            ],
          );
        } else
          return Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: VideoHeader(
              height: constraints.maxHeight,
              conf: conf,
              onTap: () async => _playVideo(context, false),
              onTapPreviewBtn: () async => _playVideo(context, true),
            ),
          );
      });
}

class _BottomSheet extends HookWidget {
  const _BottomSheet({
    Key key,
    @required this.program,
  }) : super(key: key);

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) =>
      useProvider(_pBtmSheetExpanded(program.id)).when(
        hidden: () => const SizedBox.shrink(),
        handouts: () => PageHandouts(
          program: program,
          onClearClicked: _onClearClicked,
        ),
        pricing: () => PagePriceChart(
          program: program,
          onClearClicked: _onClearClicked,
        ),
        comment: () => PageComment(id: program.id),
      );

  Future<void> _onClearClicked(BuildContext context) async =>
      context.read(detailSNProvider(program.id)).panelController.close();
}

@swidget
Widget _playerBodyWrapper({
  @required double height,
  @required ProgramDetailData data,
}) =>
    height < 0
        ? const SizedBox.shrink()
        : _PlayerBody(height: height, data: data);

class _PlayerBody extends HookWidget {
  const _PlayerBody({
    @required this.height,
    @required this.data,
  });

  final double height;
  final ProgramDetailData data;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height,
        child: SlidingUpPanel(
          minHeight: 0,
          maxHeight: height,
          controller:
              useProvider(detailSNProvider(data.program.id)).panelController,
          color: Theme.of(context).scaffoldBackgroundColor,
          panel: _BottomSheet(program: data.program),
          body: ListView.builder(
              itemCount: 6,
              padding: const EdgeInsets.only(bottom: 24),
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return RowChannel(
                      title: data.program.channel.name,
                      channelId: data.program.channel.id,
                    );
                  case 1:
                    return RowVideoTitle(text: data.program.title);
                  case 2:
                    return RowVideoTime(
                      broadcastAt: data.program.broadcastAt,
                      totalPlayTime: data.program.totalPlayTime,
                    );
                  case 3:
                    return RowVideoTags(textList: data.program.tags);
                  case 4:
                    return RowFabs(program: data.program);
                  case 5:
                    return RowVideoDesc(text: data.program.detail);
                  default:
                    return const SizedBox.shrink();
                }
              }),
        ),
      );
}
