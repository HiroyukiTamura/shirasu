import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/page_comment/comment_list_view.dart';
import 'package:shirasu/screen_detail/page_comment/page_comment.dart';
import 'package:shirasu/screen_detail/page_hands_out/page_handouts.dart';
import 'package:shirasu/screen_detail/page_price_chart/page_price_chart.dart';
import 'package:shirasu/screen_detail/page_review/page_review.dart';
import 'package:shirasu/screen_detail/screen_detail/btm_sheet.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/row_channel.dart';
import 'package:shirasu/screen_detail/screen_detail/row_fabs.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_desc.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_tags.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_time.dart';
import 'package:shirasu/screen_detail/screen_detail/row_video_title.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_header.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'screen_detail.g.dart';

/// must via access from ViewModel
final kPrvSnackBarDetail =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvDetailSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final snackMsgEvent = ref.watch(kPrvSnackBarDetail.state);
  var margin = Dimens.SNACK_BAR_DEFAULT_MARGIN;
  if (snackMsgEvent.btmAppBarMargin)
    margin += const EdgeInsets.only(bottom: CommentBtmBar.HEIGHT + 10);

  return SnackData(snackMsgEvent.snackMsg, margin);
});

final kPrvIsArch = Provider.family.autoDispose<bool, String>((ref, id) =>
    ref.watch(kPrvViewModelDetail(id).state).playOutState.videoType ==
    const VideoType.archived());

final kPrvViewModelDetail = StateNotifierProvider.autoDispose
    .family<ViewModelDetail, String>(
        (ref, id) => ViewModelDetail(ref.read, id));

final kPrvVideoControllerReady =
    Provider.family.autoDispose<bool, String>((ref, id) {
  final playOutState = ref.watch(kPrvViewModelDetail(id).state).playOutState;
  return playOutState.commandedState == const PlayerCommandedState.postPlay() &&
      playOutState.videoPlayerState == const VideoPlayerState.ready();
});

final _kPrvBtmSheetExpanded =
    Provider.autoDispose.family<PageSheetModel, String>(
  (ref, id) => ref.watch(kPrvViewModelDetail(id).state).prgDataResult.maybeWhen(
        success: (programDetail, channelData, page) => page,
        orElse: () => const PageSheetModel.hidden(),
      ),
);

final _kPrvFabVisibility = Provider.family.autoDispose<bool, String>((ref, id) {
  final viewModel = ref.watch(kPrvViewModelDetail(id).state);
  final isNotFollowTimeLineMode =
      viewModel.commentHolder.followTimeLineMode is FollowTimeLineModeNone;
  final isCommentShown = viewModel.prgDataResult.maybeWhen(
    orElse: () => false,
    success: (_, __, page) => page == const PageSheetModel.comment(),
  );
  return isCommentShown && isNotFollowTimeLineMode;
});

class ScreenDetail extends StatefulHookWidget {
  const ScreenDetail({@required this.id, Key key}) : super(key: key);

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
    if (!Platform.isAndroid) return;

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

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SnackEventListener(
          provider: _kPrvDetailSnackMsg,
          child: BtmSheetEventListener(
            id: widget.id,
            child: Scaffold(
              primary: false,
              body: useProvider(kPrvViewModelDetail(widget.id)
                  .state
                  .select((it) => it.prgDataResult)).when(
                loading: () => const CenterCircleProgress(),
                preInitialized: () => const CenterCircleProgress(),
                error: (errMsg) => PageError(text: errMsg.value),
                success: _successWidget,
              ),
              floatingActionButton: OrientationBuilder(
                builder: (context, orientation) => Visibility(
                  visible: orientation == Orientation.portrait,
                  child: _Fab(
                    id: widget.id,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> _switchVideoForeground() async {
    final replyData = await context
        .read(kPrvViewModelDetail(widget.id))
        .stopBackGroundPlayer();
    if (mounted && replyData.wasPlaying) {
      final isLandCape =
          MediaQuery.of(context).orientation == Orientation.landscape;
      context.read(kPrvViewModelDetail(widget.id)).playOrPause(
            isLandCape,
            VideoControllerCommand.play(replyData.position),
          );
    }
  }

  Future<void> _switchVideoBackground() async {
    final state = context.read(kPrvViewModelDetail(widget.id).state);
    if (state.playOutState.isPlaying) {
      final inMilliseconds = state.playOutState.currentPosSafe.inMilliseconds;
      final cookie = state.playOutState.cookie;
      final isLandCape =
          MediaQuery.of(context).orientation == Orientation.landscape;

      final viewModel = context.read(kPrvViewModelDetail(widget.id))
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
      context.read(kPrvViewModelDetail(widget.id)).playVideo(isPreview);

  Widget _successWidget(ProgramDetailData programDetailData,
          ChannelData channelData, PageSheetModel page) =>
      LayoutBuilder(builder: (context, constraints) {
        final orientation = MediaQuery.of(context).orientation;
        final conf =
            VideoViewModelConf(widget.id, orientation == Orientation.landscape);
        if (orientation == Orientation.portrait) {
          final headerH = constraints.maxWidth / Dimens.IMG_RATIO;
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
                    program: programDetailData.program,
                  ),
                  _PlayerBodyWrapper(
                    height: listViewH,
                    data: programDetailData,
                    btmPadding: headerH,
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
              program: programDetailData.program,
              conf: conf,
              onTap: () async => _playVideo(context, false),
              onTapPreviewBtn: () async => _playVideo(context, true),
            ),
          );
      });
}

class _Fab extends HookWidget {
  const _Fab({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) => Visibility(
        visible: useProvider(_kPrvFabVisibility(id)),
        child: FloatingActionButton(
          onPressed: () => _onTapFab(context),
          child: const Icon(
            Icons.sync,
            color: Colors.white,
          ),
        ),
      );

  void _onTapFab(BuildContext context) => context
      .read(kPrvViewModelDetail(id))
      .notifyFollowTimeLineMode(const FollowTimeLineMode.follow());
}

class _BottomPanel extends HookWidget {
  const _BottomPanel({
    @required this.programData,
    Key key,
  }) : super(key: key);

  final ProgramDetailData programData;

  ProgramDetail get _program => programData.program;

  @override
  Widget build(BuildContext context) =>
      useProvider(_kPrvBtmSheetExpanded(_program.id)).when(
        hidden: () => const SizedBox.shrink(),
        handouts: () => PageHandouts(
          program: _program,
          onClearClicked: _onClearClicked,
        ),
        pricing: () => PagePriceChart(
          program: _program,
          onClearClicked: _onClearClicked,
        ),
        comment: () => PageComment(id: _program.id),
        review: () => PageReview(
          onClearClicked: _onClearClicked,
          programData: programData,
        ),
      );

  Future<void> _onClearClicked(BuildContext context) async => context
      .read(kPrvViewModelDetail(_program.id))
      .togglePage(const PageSheetModel.hidden());
}

@swidget
Widget _playerBodyWrapper({
  @required double height,
  @required ProgramDetailData data,
  @required double btmPadding,
}) =>
    height < 0
        ? const SizedBox.shrink()
        : _PlayerBody(height: height, data: data, btmPadding: btmPadding);

const double _kListViewBtmPadding = 24;

@hwidget
Widget _playerBody(
  BuildContext context, {
  @required double height,
  @required double btmPadding,
  @required ProgramDetailData data,
}) =>
    SizedBox(
      height: height,
      child: SlidingUpPanel(
        minHeight: 0,
        maxHeight: height,
        controller:
            useProvider(kPrvViewModelDetail(data.program.id)).panelController,
        color: Theme.of(context).scaffoldBackgroundColor,
        panel: _BottomPanel(programData: data),
        body: Padding(
          padding: EdgeInsets.only(bottom: btmPadding + _kListViewBtmPadding),
          //i don't why, but it's needed
          child: ListView(
            padding: const EdgeInsets.only(bottom: _kListViewBtmPadding),
            children: [
              RowChannel(
                title: data.program.channel.name,
                channelId: data.program.channel.id,
              ),
              RowVideoTitle(text: data.program.title),
              RowVideoTime(
                broadcastAt: data.program.broadcastAt,
                totalPlayTime: data.program.totalPlayTime,
              ),
              RowVideoTags(textList: data.program.tags),
              RowFabs(program: data.program),
              // todo fix text height
              RowVideoDesc(
                text: data.program.detail,
                id: data.program.id,
              ),
            ],
          ),
        ),
      ),
    );
