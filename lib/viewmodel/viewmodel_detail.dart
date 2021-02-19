import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';

// import 'package:flutter_video_background/model/replay_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/native_client.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/util/single_timer.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'model/model_detail.dart';

class ViewModelDetail extends ViewModelBase<ModelDetail> {
  ViewModelDetail(Reader reader, this.id)
      : channelId = UrlUtil.programId2channelId(id),
        super(reader, ModelDetail.initial(true)) {
    _hideTimer = SingleTimer(_hideController, 2.seconds);
  }

  static const SEC_FAST_SEEK_BY_BTN = Duration(seconds: 30);
  static const SEC_FAST_SEEK_BY_DOUBLE_TAP = Duration(seconds: 10);
  static const COMMENT_PREFETCH_OFFSET = 100;
  static const COMMENT_MAX_ITEM_COUNT = 500;
  static const COMMENT_MAX_LETTER_LEN = 150;

  final panelController = PanelController();
  final String id;
  final String channelId;

  SingleTimer _hideTimer;

  SnackBarMessageNotifier get _snackBarMsgNotifier => reader(kPrvSnackBar);

  DetailPrgItem get _previewArchivedVideoData => state.prgDataResult.maybeWhen(
      orElse: () => null,
      success: (prgDetailData, _, __) => prgDetailData.program.previewPrgItem);

  DetailPrgItem get _availableVideoData => state.prgDataResult.maybeWhen(
      orElse: () => null,
      success: (prgDetailData, _, __) {
        final program = prgDetailData.program;

        //todo shouldn't written in DetailProgramData?
        DetailPrgItem detailPrgItem; //todo more logic
        if (program.archivedAt?.isBefore(DateTime.now()) == true) {
          if (program.isAllExtensionAvailable)
            detailPrgItem = program.lastArchivedExtensionPrgItem;
          else {
            // todo implement
            throw UnimplementedError();
          }
        }

        return detailPrgItem ?? program.nowLivePrgItem;
      });

  @override
  Future<void> initialize() async {
    if (state.prgDataResult != const DetailModelState.preInitialized()) return;

    state = state.copyWith(
      prgDataResult: const DetailModelState.loading(),
    );
    final result = await Result.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return Util.wait2<ProgramDetailData, ChannelData>(
              () async => graphQlRepository.queryProgramDetail(id),
              () async => graphQlRepository.queryChannelData(channelId))
          .timeout(
              GraphQlRepository.TIMEOUT); //todo set timeout on graphQl side?
    });
    result.when(
      success: (data) async {
        if (mounted)
          state = state.copyWith(
            prgDataResult: DetailModelState.success(
              programDetailData: data.item1,
              channelData: data.item2,
              page: const PageSheetModel.hidden(),
            ),
          );
        return _initComments(Duration.zero);
      },
      failure: (e) {
        print(e);
        if (mounted) state = state.copyAsPrgDataResultErr(toErrMsg(e));
        if (e is UnauthorizedException) pushAuthExpireScreen();
      },
    );
  }

  Future<void> playVideo(bool preview) async {
    final prg = preview ? _previewArchivedVideoData : _availableVideoData;
    if (prg == null) return; // todo handle error

    state = state.copyAsInitialize(prg.urlAvailable, prg.videoTypeStrict);

    bool authExpired = false;
    String cookie;
    try {
      cookie = await dioClient.getSignedCookie(
        prg.id,
        prg.videoTypeStrict,
        hiveAuthRepository.authData.body.idToken,
      );
      debugPrint(cookie);
    } on UnauthorizedException catch (e) {
      print(e); //todo handle error
      authExpired = true;
    } catch (e) {
      print(e); //todo handle error
    }

    if (!mounted) return;

    if (authExpired)
      pushAuthExpireScreen();
    else if (cookie != null)
      state = state.copyAsPlay(prg.urlAvailable, prg.videoTypeStrict, cookie);
  }

  Future<String> queryHandOutUrl(String handoutId) async {
    if (state.isHandoutUrlRequesting) return null;

    state = state.copyWith(isHandoutUrlRequesting: true);

    String url;
    try {
      await connectivityRepository.ensureNotDisconnect();
      url = await graphQlRepository
          .queryHandOutUrl(id, handoutId)
          .timeout(GraphQlRepository.TIMEOUT);
    } catch (e) {
      print(e);
      commandSnackBar(toNetworkSnack(e));
    }

    if (!mounted) return null;

    state = state.copyWith(
      isHandoutUrlRequesting: false,
    );
    return url;
  }

  Future<void> _initComments(Duration currentPos) async {
    if (mounted) await loadMorePastComment(currentPos, true);
    if (mounted) await loadMoreFutureComment(currentPos, true);
    if (mounted)
      state = state.copyWith.commentHolder(
        isRenewing: false,
      );
  }

  Future<void> loadMoreFutureComment(
          Duration currentPos, bool runAsRenewing) async =>
      _loadMoreComment(
        beginTime: currentPos,
        endTime: 1.days,
        sortDirection: SortDirection.ASC,
        loadingState: const LoadingState.feature(),
        runAsRenewing: runAsRenewing,
      );

  Future<void> loadMorePastComment(
          Duration currentPos, bool runAsRenewing) async =>
      _loadMoreComment(
        beginTime: Duration.zero,
        endTime: currentPos,
        sortDirection: SortDirection.DESC,
        loadingState: const LoadingState.past(),
        runAsRenewing: runAsRenewing,
      );

  /// synchronous operation by [_shouldLoadMoreComment] checks [CommentsState.isSuccessOrLoading]
  /// [forceRun] : if true, force to request comments although [CommentsHolder.isRenewing] is true
  /// note; must check is mounted before call this method.
  Future<void> _loadMoreComment({
    @required Duration beginTime,
    @required Duration endTime,
    @required SortDirection sortDirection,
    @required LoadingState loadingState,
    @required bool runAsRenewing,
  }) async {
    final shouldRun = _shouldLoadMoreComment(
      beginTime: beginTime,
      endTime: endTime,
      runAsRenewing: runAsRenewing,
    );
    if (!shouldRun) return;

    state = state.copyWith.commentHolder(
      state: CommentsState.loadingMore(loadingState),
    );

    final pageNationKey = state.commentHolder.pageNationKey;

    final result = await Result.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return graphQlRepository
          .queryComment(
            programId: id,
            beginTime: beginTime,
            endTime: endTime,
            sortDirection: sortDirection,
          )
          .timeout(GraphQlRepository.TIMEOUT);
    });
    if (mounted && pageNationKey == state.commentHolder.pageNationKey)
      result.when(
        success: (object) => state = state.copyWith(
          commentHolder: state.commentHolder
              .copyAsAddSingleCommentHolder(object, loadingState),
        ),
        failure: (e) => state = state.copyWith.commentHolder(
          state: CommentsState.error(toErrMsg(e)),
        ),
      );
  }

  void notifyFollowTimeLineMode(FollowTimeLineMode followTimeLineMode) =>
      state = state.copyWith.commentHolder(
        followTimeLineMode: followTimeLineMode,
      );

  bool _shouldLoadMoreComment({
    @required Duration beginTime,
    @required Duration endTime,
    @required bool runAsRenewing,
  }) =>
      beginTime != endTime &&
      (runAsRenewing || !state.commentHolder.isRenewing) &&
      state.commentHolder.state.isSuccessOrLoading;

  Future<void> renewAllComment(Duration currentPos) async {
    if (state.commentHolder.isRenewing) return;

    state = state.copyWith(commentHolder: CommentsHolder.initial(false));
    await _initComments(currentPos);
  }

  Future<void> postComment(String text) async {
    if (text.isNullOrEmpty) return;

    if (state.playOutState.currentPos < Duration.zero) return;

    CommentItem posted;
    try {
      Util.require(text.length <= COMMENT_MAX_LETTER_LEN);
      posted = await graphQlRepository.postComment(
        commentTime: state.playOutState.currentPos,
        programId: id,
        text: text,
      );
    } catch (e) {
      print(e);
      commandSnackBar(const SnackMsg.unknown());
    }

    if (mounted && posted != null && !state.commentHolder.isRenewing)
      state = state.copyWith(
        commentHolder: state.commentHolder.copyAsAddUserComment(posted),
      );
  }

  Future<bool> togglePage(PageSheetModel pageSheet) async {
    if (!mounted) return false;

    final newOne = state.copyAsPageSheet(pageSheet);
    if (newOne == null) return false;

    state = newOne;

    if (!panelController.isAttached) return false;

    if (pageSheet == const PageSheetModel.hidden()) {
      if (panelController.isPanelClosed)
        return false;
      else
        await panelController.close();
    } else
      await panelController.open();

    return true;
  }

  /// force update [state.playOutState.fullScreen]
  void takePriority({
    @required bool fullScreen,
  }) =>
      state = state.copyWith.playOutState(
        fullScreen: fullScreen,
        videoPlayerState: const VideoPlayerState.preInitialized(),
      );

  void setAsVideoControllerInitialized({
    @required bool fullScreen,
    @required Duration totalDuration,
  }) {
    assert(!totalDuration.isNegative);

    if (fullScreen == state.playOutState.fullScreen)
      state = state.copyWith.playOutState(
        fullScreen: fullScreen,
        totalDuration: totalDuration,
        videoPlayerState: const VideoPlayerState.ready(),
      );
  }

  void setCurrentPos({
    @required bool fullScreen,
    @required Duration currentPos,
    @required bool applyCurrentPosUi,
  }) {
    assert(!currentPos.isNegative);

    if (fullScreen != state.playOutState.fullScreen) return;

    state = applyCurrentPosUi
        ? state.copyWith.playOutState(
            currentPos: currentPos,
            currentPosForUi: currentPos,
            fullScreen: fullScreen,
          )
        : state.copyWith.playOutState(
            currentPos: currentPos,
            fullScreen: fullScreen,
          );
  }

  void setVideoDurations({
    @required bool fullScreen,
    @required Duration currentPos,
    @required Duration totalDuration,
    @required bool applyCurrentPosUi,
  }) {
    assert(!currentPos.isNegative);
    assert(!totalDuration.isNegative);
    assert(currentPos < totalDuration);

    if (fullScreen != state.playOutState.fullScreen) return;

    state = applyCurrentPosUi
        ? state.copyWith.playOutState(
            currentPos: currentPos,
            currentPosForUi: currentPos,
            totalDuration: totalDuration,
            fullScreen: fullScreen,
          )
        : state.copyWith.playOutState(
            currentPos: currentPos,
            totalDuration: totalDuration,
            fullScreen: fullScreen,
          );
  }

  void setVideoIsPlaying({
    @required bool fullScreen,
    @required bool isPlaying,
  }) {
    if (fullScreen == state.playOutState.fullScreen)
      state = state.copyWith.playOutState(
        isPlaying: isPlaying,
      );
  }

  /// allow commands any time though [videoPlayerState] is not ready
  void _commandVideoController({
    @required bool fullScreen,
    @required bool renewHideTimer,
    @required LastControllerCommand command,
  }) {
    if (fullScreen == state.playOutState.fullScreen) {
      state = state.copyWith.playOutState(
        lastControllerCommandHolder:
            LastControllerCommandHolder.create(command),
      );
      if (renewHideTimer) _hideTimer.renew();
    }
  }

  void updateVideoPlayerState({
    @required bool fullScreen,
    @required VideoPlayerState videoPlayerState,
  }) =>
      state = state.copyWith.playOutState(
        videoPlayerState: videoPlayerState,
      );

  void _hideController() {
    if (mounted)
      state = state.copyWith.playOutState(controllerVisibility: false);
  }

  void hide() {
    _hideTimer.cancel();
    _hideController();
  }

  void toggleVisibility() {
    if (state.playOutState.videoPlayerState != const VideoPlayerState.ready())
      return;

    final controllerVisibility = state.playOutState.controllerVisibility;
    controllerVisibility ? _hideTimer.cancel() : _hideTimer.renew();
    state = state.copyWith.playOutState(
      controllerVisibility: !controllerVisibility,
    );
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  void seek(bool fullScreen, Duration diff) {
    _commandVideoController(
      fullScreen: fullScreen,
      command: LastControllerCommand.seek(diff),
      renewHideTimer: true,
    );
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  void seekToWithBtmSheet(bool fullScreen, Duration duration) {
    _commandVideoController(
      fullScreen: fullScreen,
      command: LastControllerCommand.seekTo(duration),
      renewHideTimer: true,
    );
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  void seekToWithSlider(
      bool fullScreen, Duration duration, bool applyController, bool endDrag) {
    if (fullScreen != state.playOutState.fullScreen) return;

    _hideTimer.renew();

    state = state.copyWith.playOutState(
      isSeekBarDragging: !endDrag,
    );
    setCurrentPos(
      fullScreen: fullScreen,
      currentPos: duration,
      applyCurrentPosUi: true,
    );
    if (applyController)
      _commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seekTo(duration),
        renewHideTimer: false,
      );
  }

  void playOrPause(bool fullScreen, VideoControllerCommand command) =>
      _commandVideoController(
        fullScreen: fullScreen,
        command: command.converted,
        renewHideTimer: true,
      );

  void updateIsisBuffering({
    @required bool fullScreen,
    @required bool isBuffering,
  }) {
    if (fullScreen != state.playOutState.fullScreen) return;

    state = state.copyWith.playOutState(isBuffering: isBuffering);
  }

  void commandModal(BtmSheetState btmSheetState) =>
      state = state.copyWith(btmSheetState: btmSheetState);

  void clearModal() =>
      state = state.copyWith(btmSheetState: const BtmSheetState.none());

  void commandSnackBar(SnackMsg snackMsg) {
    final prgDataResult = state.prgDataResult;
    final isCommentAppBarShown = prgDataResult is DetailStateSuccess &&
        prgDataResult.page == const PageSheetModel.comment() &&
        state.commentHolder.followTimeLineMode ==
            const FollowTimeLineMode.follow();
    _snackBarMsgNotifier.notifyMsg(snackMsg, isCommentAppBarShown);
  }

  /// provide old values as param; [position], [cookie]
  Future<void> startPlayBackground(int position, String cookie) async {
    if (!mounted) return;

    final prgDataResult = state.prgDataResult;
    if (prgDataResult is DetailStateSuccess) {
      final playOutState = state.playOutState;
      try {
        await NativeClient.startPlayBackGround(
          url: playOutState.hlsMediaUrl,
          isLiveStream: playOutState.videoType == VideoType.LIVE,
          position: position,
          iconUrl: UrlUtil.getThumbnailUrl(id),
          cookie: cookie,
          title: prgDataResult.programDetailData.program.title,
          subtitle: prgDataResult.channelData.channel.name,
        );
      } catch (e) {
        print(e);
        //todo handle error
      }
    }
  }

// Future<ReplyData> stopBackGroundPlayer() async {
//   try {
//     return NativeClient.stopBackGround();
//   } catch (e) {
//     print(e);
//     //todo handle error
//     return null;
//   }
// }
}
