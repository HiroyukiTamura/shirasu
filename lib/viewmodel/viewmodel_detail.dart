import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/dio_client.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'controller_hide_timer.dart';

class ViewModelDetail extends ViewModelBase<ModelDetail> {
  ViewModelDetail(this.id, this._ref)
      : channelId = UrlUtil.programId2channelId(id),
        super(ModelDetail.initial()) {
    _hideTimer = ControllerHideTimer(_hideController);
  }

  static const SEC_FAST_SEEK_BY_BTN = Duration(seconds: 30);
  static const SEC_FAST_SEEK_BY_DOUBLE_TAP = Duration(seconds: 10);

  final _apiClient = ApiClient.instance();
  final _dioClient = DioClient();
  final panelController = PanelController();
  final AutoDisposeProviderReference _ref;
  final String id;
  final String channelId;

  ControllerHideTimer _hideTimer;

  DetailPrgItem get _previewArchivedVideoData {
    final v = state.prgDataResult;
    if (v is StateSuccess)
      return v.programDetailData.program.previewPrgItem;
    else
      return null;
  }

  DetailPrgItem get _availableVideoData {
    final v = state.prgDataResult;
    if (v is StateSuccess) {
      final program = v.programDetailData.program;

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
    } else
      return null;
  }

  @override
  Future<void> initialize() async {
    if (state.prgDataResult is StateSuccess) return;

    state = state.copyWith(prgDataResult: const DetailModelState.loading());
    ModelDetail newState;
    try {
      final data = await Util.wait2<ProgramDetailData, ChannelData>(
          () async => _apiClient.queryProgramDetail(id),
          () async => _apiClient.queryChannelData(channelId));

      newState = state.copyWith(
        prgDataResult: DetailModelState.success(
          programDetailData: data.item1,
          channelData: data.item2,
          page: const PageSheetModel.hidden(),
        ),
      );
    } catch (e) {
      print(e);
      newState = state.copyWith(prgDataResult: const DetailModelState.error());
    }
    setState(newState);
  }

  Future<void> playVideo(bool preview) async {
    final prg = preview ? _previewArchivedVideoData : _availableVideoData;
    if (prg == null) return; // todo handle error

    state = state.copyAsInitialize(prg.urlAvailable, prg.videoTypeStrict);

    String cookie;
    try {
      cookie = await _dioClient.getSignedCookie(prg.id, prg.videoTypeStrict,
          HiveAuthClient.instance().authData.body.idToken);
      debugPrint(cookie);
    } catch (e) {
      print(e); //todo handle error
    }

    if (cookie != null && mounted)
      state = state.copyAsPlay(prg.urlAvailable, prg.videoTypeStrict, cookie);
  }

  Future<String> queryHandOutUrl(String handoutId) async {
    if (state.isHandoutUrlRequesting) return null;

    state = state.copyWith(isHandoutUrlRequesting: true);

    String url;
    try {
      url = await _apiClient.queryHandOutUrl(id, handoutId);
    } catch (e) {
      print(e);
    }

    if (!mounted) return null;

    if (url == null)
      _ref.read(snackBarMsgProvider).state = SnackMsg.UNKNOWN;
    else
      state = state.copyWith(isHandoutUrlRequesting: false);

    return url;
  }

  Future<void> initComments(Duration currentPos) async {
    try {
      final commentPre = await ApiClient.instance().queryComment(
        programId: id,
        beginTime: Duration.zero,
        endTime: currentPos,
        sortDirection: SortDirection.DESC,
      );
      final commentPost = await ApiClient.instance().queryComment(
        programId: id,
        beginTime: currentPos,
        endTime: currentPos + const Duration(minutes: 15),
        sortDirection: SortDirection.ASC,
      );
      if (!mounted)
        state = state.copyWith.commentHolder(
          commentsPre: commentPre,
          commentsPost: commentPost,
          state: const CommentsState.success(),
        );
    } catch (e) {
      print(e);
      if (!mounted)
        state = state.copyWith.commentHolder(
          state: const CommentsState.error(),
        );
    }
  }

  Future<void> loadMorePostComment(Duration currentPos) async {
    state = state.copyWith.commentHolder(
      state: const CommentsState.loadingMore(),
    );

    try {
      final appendee = await ApiClient.instance().queryComment(
        programId: id,
        beginTime: currentPos,
        endTime: currentPos + const Duration(minutes: 15),
        sortDirection: SortDirection.ASC,
      );
      if (!mounted)
        state = state.copyWith.commentHolder(
          commentsPre: state.commentHolder.commentsPost.copyWith(
            items: state.commentHolder.commentsPost.items + appendee.items,//todo sort
            nextToken: appendee.nextToken,
          ),
          state: const CommentsState.success(),
        );
    } catch (e) {
      print(e);
      if (!mounted)
        state = state.copyWith.commentHolder(
          state: const CommentsState.error(),
        );
    }
  }

  Future<void> loadMorePreComment(Duration currentPos) async {
    state = state.copyWith.commentHolder(
      state: const CommentsState.loadingMore(),
    );

    try {
      final appendee = await ApiClient.instance().queryComment(
        programId: id,
        beginTime: Duration.zero,
        endTime: currentPos,
        sortDirection: SortDirection.DESC,
      );
      if (!mounted)
        state = state.copyWith.commentHolder(
          commentsPre: state.commentHolder.commentsPre.copyWith(
            items: state.commentHolder.commentsPre.items + appendee.items,//todo sort
            nextToken: appendee.nextToken,
          ),
          state: const CommentsState.success(),
        );
    } catch (e) {
      print(e);
      if (!mounted)
        state = state.copyWith.commentHolder(
          state: const CommentsState.error(),
        );
    }
  }

  Future<void> togglePage(PageSheetModel pageSheet) async {
    final newOne = state.copyAsPageSheet(pageSheet);
    if (newOne == null) return;

    state = newOne;

    if (!panelController.isAttached) return;

    if (pageSheet == const PageSheetModel.hidden())
      await panelController.close();
    else
      await panelController.open();
  }

  Future<bool> tryClosePanel() async {
    if (!panelController.isAttached || panelController.isPanelClosed)
      return false;
    await panelController.close();
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
  void commandVideoController({
    @required bool fullScreen,
    @required LastControllerCommand command,
  }) {
    if (fullScreen == state.playOutState.fullScreen)
      state = state.copyWith.playOutState(
        lastControllerCommandHolder:
            LastControllerCommandHolder.create(command),
      );
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
    if (fullScreen == state.playOutState.fullScreen) {
      commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seek(diff),
      );
      _hideTimer.renew();
    }
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
      commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seekTo(duration),
      );
  }

  void playOrPause(bool fullScreen) {
    if (fullScreen != state.playOutState.fullScreen) return;

    _hideTimer.renew();
    commandVideoController(
      fullScreen: fullScreen,
      command: const LastControllerCommand.playOrPause(),
    );
  }

  void updateIsisBuffering({
    @required bool fullScreen,
    @required bool isBuffering,
  }) {
    if (fullScreen != state.playOutState.fullScreen) return;

    state = state.copyWith.playOutState(isBuffering: isBuffering);
  }
}
