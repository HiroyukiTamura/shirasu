import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_video_background/model/replay_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/native_client.dart';
import 'package:shirasu/repository/ntf_message_repository.dart';
import 'package:shirasu/repository/ntf_message_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/util/single_timer.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:shirasu/extension.dart';

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

  DetailPrgItem get _previewArchivedVideoData => state.prgDataResult.maybeWhen(
      orElse: () => null,
      success: (prgDetailData, _, __) => prgDetailData.program.previewPrgItem);

  /// warning! returns null if archive is not available and the live streaming is ended
  DetailPrgItem get _availableVideoData => state.prgDataResult.maybeWhen(
        orElse: () => null,
        success: (prgDetailData, _, __) => prgDetailData.program.itemToPlay,
      );

  /// must access from [commandSnackBar] only.
  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvSnackBarDetail);

  NtfMessageRepository get _fcmRepository => reader(kPrvNtfMessage);

  @override
  Future<void> initialize() async {
    if (state.prgDataResult != const DetailModelState.preInitialized()) return;

    state = state.copyWith(
      prgDataResult: const DetailModelState.loading(),
    );
    final result = await logger.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return Util.wait2<ProgramDetailData, ChannelData>(
              () async => graphQlRepository.queryProgramDetail(id),
              () async => graphQlRepository.queryChannelData(channelId))
          .timeout(GraphQlRepository.TIMEOUT);
    });
    if (mounted)
      await result.when(
        success: (data) async {
          state = state.copyWith(
            prgDataResult: DetailModelState.success(
              programDetailData: data.item1,
              channelData: data.item2,
              page: const PageSheetModel.hidden(),
            ),
          );
          if (data.item1.program.isPurchased)
            return _initComments(Duration.zero);
        },
        failure: (e) {
          if (mounted) state = state.copyAsPrgDataResultErr(toErrMsg(e));
          if (e is UnauthorizedException) pushAuthErrScreen(e.detectedByTime);
        },
      );
  }

  Future<void> playVideo(bool preview) async {
    if (state.playOutState.commandedState !=
        const PlayerCommandedState.prePlay()) return;

    final prg = preview ? _previewArchivedVideoData : _availableVideoData;
    if (prg == null) {
      state = state.copyWith.playOutState(
        commandedState:
            const PlayerCommandedState.error(ErrorMsgCommon.unknown()),
      );
      return;
    }

    state = state.copyAsInitialize(prg.urlAvailable, prg.videoTypeStrict);

    final result = await logger.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return dioClient.getSignedCookie(
        prg.id,
        prg.videoTypeStrict,
        hiveAuthRepository.authData.body.idToken,
      );
    });
    if (mounted)
      state = result.when(
        success: (cookie) =>
            state.copyAsPlay(prg.urlAvailable, prg.videoTypeStrict, cookie),
        failure: (e) {
          ErrorMsgCommon msg = const ErrorMsgCommon.unknown();
          if (e is NetworkDisconnectException)
            msg = const ErrorMsgCommon.networkDisconnected();
          else if (e is DioError && e.isTimeoutErr)
            msg = const ErrorMsgCommon.networkTimeout();
          return state.copyWith.playOutState(
            commandedState: PlayerCommandedState.error(msg), //todo fix
          );
        },
      );
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
        sortDirection: const SortDirection.asc(),
        loadingState: const LoadingState.feature(),
        runAsRenewing: runAsRenewing,
      );

  Future<void> loadMorePastComment(
          Duration currentPos, bool runAsRenewing) async =>
      _loadMoreComment(
        beginTime: Duration.zero,
        endTime: currentPos,
        sortDirection: const SortDirection.desc(),
        loadingState: const LoadingState.past(),
        runAsRenewing: runAsRenewing,
      );

  /// synchronous operation by [_shouldLoadMoreComment] checks [CommentsState.isSuccessOrLoading]
  /// [runAsRenewing] : if true, force to request comments although [CommentsHolder.isRenewing] is true
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

    final result = await logger.guardFuture(() async {
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
    if (text.isNullOrEmpty ||
        state.isCommentPosting ||
        state.playOutState.currentPosSafe == Duration.zero) return;

    state = state.copyWith(isCommentPosting: true);
    final result = await logger.guardFuture(() async {
      Util.require(text.length <= COMMENT_MAX_LETTER_LEN);
      await connectivityRepository.ensureNotDisconnect();
      return graphQlRepository
          .postComment(
            commentTime: state.playOutState.currentPosSafe,
            programId: id,
            text: text,
          )
          .timeout(GraphQlRepository.TIMEOUT);
    });
    if (!mounted) return;

    state = state.copyWith(isCommentPosting: false);
    result.when(
      success: (posted) {
        if (!state.commentHolder.isRenewing)
          state = state.copyWith(
            commentHolder: state.commentHolder.copyAsAddUserComment(posted),
          );
      },
      failure: (e) {
        commandSnackBar(toNetworkSnack(e));
      },
    );
  }

  Future<String> queryHandOutUrl(String handoutId) async {
    if (state.isHandoutUrlRequesting) return null;

    state = state.copyWith(isHandoutUrlRequesting: true);

    final result = await logger.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return graphQlRepository
          .queryHandOutUrl(id, handoutId)
          .timeout(GraphQlRepository.TIMEOUT);
    });
    if (!mounted) return null;
    final url = result.when(
        success: (url) => url,
        failure: (e) {
          commandSnackBar(toNetworkSnack(e));
          return null;
        });
    state = state.copyWith(
      isHandoutUrlRequesting: false,
    );
    return url;
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

    if (fullScreen == state.playOutState.fullScreen)
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

  /// [currentPos] may negative and nullable
  /// [totalDuration] may negative and nullable
  void setVideoDurations({
    @required bool fullScreen,
    @required Duration currentPos,
    @required Duration totalDuration,
    @required bool applyCurrentPosUi,
  }) {
    if (fullScreen == state.playOutState.fullScreen)
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
    if (fullScreen != state.playOutState.fullScreen) return;
    state = state.copyWith.playOutState(
      lastControllerCommandHolder: LastControllerCommandHolder.create(command),
    );
    if (renewHideTimer) _hideTimer.renew();
  }

  /// todo check [fullScreen]?
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
  void seek(bool fullScreen, Duration diff) => _commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seek(diff),
        renewHideTimer: true,
      );

  /// must be [mounted] == true && [state.isInitialized] == true
  void seekToWithBtmSheet(bool fullScreen, Duration duration) =>
      _commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seekTo(duration),
        renewHideTimer: true,
      );

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

  void updateIsBuffering({
    @required bool fullScreen,
    @required bool isBuffering,
  }) {
    if (fullScreen == state.playOutState.fullScreen)
      state = state.copyWith.playOutState(isBuffering: isBuffering);
  }

  void commandModal(BtmSheetState btmSheetState) =>
      state = state.copyWith(btmSheetState: btmSheetState);

  void clearModal() =>
      state = state.copyWith(btmSheetState: const BtmSheetState.none());

  void commandSnackBar(SnackMsg snackMsg) {
    final isCommentAppBarShown = state.prgDataResult.maybeWhen(
      orElse: () => false,
      success: (_, __, page) =>
          page == const PageSheetModel.comment() &&
          state.commentHolder.followTimeLineMode ==
              const FollowTimeLineMode.follow(),
    );
    _snackBarMsgNotifier.notifyMsg(snackMsg, isCommentAppBarShown);
  }

  /// provide old values as param; [position], [cookie]
  Future<void> startPlayBackground(int position, String cookie) async {
    if (mounted)
      await state.prgDataResult.whenSuccess(
          (prgDetailData, channelData, page) async =>
              logger.guardFuture(() async => NativeClient.startPlayBackGround(
                    url: state.playOutState.hlsMediaUrl,
                    isLiveStream:
                        state.playOutState.videoType == const VideoType.live(),
                    position: position,
                    iconUrl: UrlUtil.getThumbnailUrl(id),
                    cookie: cookie,
                    title: prgDetailData.program.title,
                    subtitle: channelData.channel.name,
                  )));
  }

  Future<ReplyData> stopBackGroundPlayer() async {
    final result = await Result.guardFuture(
        logger, () async => NativeClient.stopBackGround());
    return result.when(success: (data) => data, failure: (e) => null);
  }

  Future<void> subscribeChannel() async => await state.prgDataResult.whenSuccess((_, channelData, __) async {
      final hiveData = HiveFcmChannelData.parse(channelData.channel);
      await _fcmRepository.subscribeChannel(hiveData);
      if (mounted) commandSnackBar(const SnackMsg.fcmSubscribe());
    });

  Future<void> subscribeProgram() async => await state.prgDataResult.whenSuccess((programData, _, __) async {
    final hiveData = HiveFcmProgramData.parse(programData.program);
    await _fcmRepository.subscribeProgram(hiveData);
    if (mounted) commandSnackBar(const SnackMsg.fcmSubscribe());
  });

  Future<void> unSubscribeChannel() async {
    final success = await _fcmRepository.unsubscribeChannel(channelId);
    if (!mounted) return;
    if (!success) await _fcmRepository.unsubscribeProgram(id);
    commandSnackBar(const SnackMsg.fcmUnsubscribe());
  }
}
