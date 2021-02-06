import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/client/native_client.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/page_comment/comment_list_view.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'btm_sheet.dart';

part 'screen_detail.g.dart';

final kPrvDetailSnackBarMsgNotifier =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvDetailSnackMsg =
    Provider.autoDispose.family<SnackData, String>((ref, id) {
  final snackMsgEvent = ref.watch(kPrvDetailSnackBarMsgNotifier.state);
  EdgeInsets margin = Dimens.SNACK_BAR_DEFAULT_MARGIN;
  if (snackMsgEvent.btmAppBarMargin)
    margin += const EdgeInsets.only(bottom: CommentBtmBar.HEIGHT + 10);

  return SnackData(snackMsgEvent.snackMsg, margin);
});

final detailSNProvider = StateNotifierProvider.autoDispose
    .family<ViewModelDetail, String>(
        (ref, id) => ViewModelDetail(ref.read, id));

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

final _kPrvFabVisibility = Provider.family.autoDispose<bool, String>((ref, id) {
  final viewModel = ref.watch(detailSNProvider(id).state);
  final isNotFollowTimeLineMode =
      viewModel.commentHolder.followTimeLineMode is FollowTimeLineModeNone;
  final prgDataResult = viewModel.prgDataResult;
  // ignore: avoid_bool_literals_in_conditional_expressions
  final isCommentShown = prgDataResult is StateSuccess
      ? prgDataResult.page == const PageSheetModel.comment()
      : false;
  return isCommentShown && isNotFollowTimeLineMode;
});

class ScreenDetail extends StatefulHookWidget {
  const ScreenDetail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  _ScreenDetailState createState() => _ScreenDetailState();
}

class _ScreenDetailState extends State<ScreenDetail>
    with WidgetsBindingObserver {
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
        _switchVideoForeground();
        break;
      case AppLifecycleState.inactive:
        _switchVideoBackground(); //todo is it good??
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        break;
    }
  }

  /// not implement [BtmSheetResolution]
  @override
  Widget build(BuildContext context) => SafeArea(
        child: SnackEventListener(
          provider: _kPrvDetailSnackMsg(widget.id),
          child: BtmSheetEventListener(
            id: widget.id,
            child: Scaffold(
              primary: false,
              body: useProvider(detailSNProvider(widget.id)
                  .state
                  .select((it) => it.prgDataResult)).when(
                loading: () => const CenterCircleProgress(),
                preInitialized: () => const CenterCircleProgress(),
                error: () => const PageError(),
                success: _successWidget,
              ),
              floatingActionButton: _fab(),
            ),
          ),
        ),
      );

  //todo hide fab if btm sheet shown
  Widget _fab() {
    final context = useContext();
    return Visibility(
      visible: useProvider(_kPrvFabVisibility(widget.id)),
      child: FloatingActionButton(
        onPressed: () => _onTapFab(context),
        child: const Icon(
          Icons.sync,
          color: Colors.white,
        ),
      ),
    );
  }

  void _onTapFab(BuildContext context) => context
      .read(detailSNProvider(widget.id))
      .notifyFollowTimeLineMode(const FollowTimeLineMode.follow());

  Future<void> _switchVideoForeground() async {
    final replyData =
        await context.read(detailSNProvider(widget.id)).stopBackGroundPlayer();
    if (mounted && replyData.wasPlaying) {
      bool isLandCape =
          MediaQuery.of(context).orientation == Orientation.landscape;
      context.read(detailSNProvider(widget.id)).playOrPause(
            isLandCape,
            VideoControllerCommand.play(replyData.position),
          );
    }
  }

  Future<void> _switchVideoBackground() async {
    final state = context.read(detailSNProvider(widget.id).state);
    if (state.playOutState.isPlaying) {
      final inMilliseconds = state.playOutState.currentPos.inMilliseconds;
      final cookie = state.playOutState.cookie;
      bool isLandCape =
          MediaQuery.of(context).orientation == Orientation.landscape;

      final viewModel = context.read(detailSNProvider(widget.id))
        ..playOrPause(
          isLandCape,
          const VideoControllerCommand.pause(),
        );
      await viewModel.startPlayBackground(
        inMilliseconds,
        cookie,
      );
    }
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

class _BottomPanel extends HookWidget {
  const _BottomPanel({
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

  Future<void> _onClearClicked(BuildContext context) async => context
      .read(detailSNProvider(program.id))
      .togglePage(const PageSheetModel.hidden());
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
          panel: _BottomPanel(program: data.program),
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
                    return RowVideoDesc(
                      text: data.program.detail,
                      id: data.program.id,
                    );
                  default:
                    return const SizedBox.shrink();
                }
              }),
        ),
      );
}
