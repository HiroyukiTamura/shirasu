import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/client/api_client.dart';
import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/util/single_timer.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'model/model_detail.dart';

class ViewModelDetail extends ViewModelBase<ModelDetail> {
  ViewModelDetail(Reader reader, this.id)
      : channelId = UrlUtil.programId2channelId(id),
        super(reader, ModelDetail.initial(true)) {
    _hideTimer = SingleTimer(_hideController, const Duration(seconds: 2));
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

  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvDetailSnackBarMsgNotifier);

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

    bool authExpired = false;

    try {
      final data = await Util.wait2<ProgramDetailData, ChannelData>(
          () async => ApiClient.instance.queryProgramDetail(id),
          () async => ApiClient.instance.queryChannelData(channelId));

      state = state.copyWith(
        prgDataResult: DetailModelState.success(
          programDetailData: data.item1,
          channelData: data.item2,
          page: const PageSheetModel.hidden(),
        ),
      );
    } on AuthExpiredException catch (e) {
      print(e);
      authExpired = true;
    } catch (e) {
      print(e);
      if (mounted)
        state = state.copyWith(prgDataResult: const DetailModelState.error());
    }

    if (!mounted)
      return;

    if (authExpired)
      pushAuthExpireScreen();
    else
      await _initComments(Duration.zero);
  }

  Future<void> playVideo(bool preview) async {
    final prg = preview ? _previewArchivedVideoData : _availableVideoData;
    if (prg == null) return; // todo handle error

    state = state.copyAsInitialize(prg.urlAvailable, prg.videoTypeStrict);

    bool authExpired = false;
    String cookie;
    try {
      cookie = await DioClient.instance.getSignedCookie(prg.id,
          prg.videoTypeStrict, HiveAuthClient.instance().authData.body.idToken);
      debugPrint(cookie);
    } on AuthExpiredException catch (e) {
      print(e); //todo handle error
      authExpired = true;
    } catch (e) {
      print(e); //todo handle error
    }

    if (!mounted)
      return;

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
      url = await ApiClient.instance.queryHandOutUrl(id, handoutId);
    } catch (e) {
      print(e);
    }

    if (!mounted) return null;

    if (url == null)
      commandSnackBar(const SnackMsg.unknown());
    else
      state = state.copyWith(isHandoutUrlRequesting: false);

    return url;
  }

  Future<void> _initComments(Duration currentPos) async {
    if (mounted) await loadMorePreComment(currentPos, true);
    if (mounted) await loadMorePostComment(currentPos, true);
    if (mounted)
      state = state.copyWith.commentHolder(
        isRenewing: false,
      );
  }

  ///todo rename
  Future<void> loadMorePostComment(Duration currentPos, bool forceRun) async =>
      _loadMoreComment(
        beginTime: currentPos,
        endTime: 1.days,
        sortDirection: SortDirection.ASC,
        loadingState: LoadingState.FUTURE,
        forceRun: forceRun,
      );

  ///todo rename
  Future<void> loadMorePreComment(Duration currentPos, bool forceRun) async =>
      _loadMoreComment(
        beginTime: Duration.zero,
        endTime: currentPos,
        sortDirection: SortDirection.DESC,
        loadingState: LoadingState.PAST,
        forceRun: forceRun,
      );

  /// todo synchronous??
  Future<void> _loadMoreComment({
    @required Duration beginTime,
    @required Duration endTime,
    @required SortDirection sortDirection,
    @required LoadingState loadingState,
    @required bool forceRun,
  }) async {
    final shouldRun = _shouldLoadMoreComment(
      beginTime: beginTime,
      endTime: endTime,
      forceRun: forceRun,
    );
    if (!shouldRun) return;

    state = state.copyWith
        .commentHolder(state: CommentsState.loadingMore(loadingState));

    final pageNationKey = state.commentHolder.pageNationKey;

    try {
      final object = await ApiClient.instance.queryComment(
        programId: id,
        beginTime: beginTime,
        endTime: endTime,
        sortDirection: sortDirection,
      );
      if (mounted && pageNationKey == state.commentHolder.pageNationKey)
        state = state.copyWith(
          commentHolder: state.commentHolder
              .copyAsAddSingleCommentHolder(object, loadingState),
        );
    } catch (e) {
      print(e);
      if (mounted && pageNationKey == state.commentHolder.pageNationKey)
        state = state.copyWith.commentHolder(
          state: const CommentsState.error(),
        );
    }
  }

  void notifyFollowTimeLineMode(FollowTimeLineMode followTimeLineMode) =>
      state = state.copyWith.commentHolder(
        followTimeLineMode: followTimeLineMode,
      );

  bool _shouldLoadMoreComment({
    @required Duration beginTime,
    @required Duration endTime,
    @required bool forceRun,
  }) {
    if (beginTime == endTime) return false;

    if (!forceRun && state.commentHolder.isRenewing) return false;

    final commentState = state.commentHolder.state;

    if ((commentState is CommentsStateLoadingMore) ||
        commentState == const CommentsState.error()) return false;

    return true;
  }

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
      posted = await ApiClient.instance.postComment(
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
  void seekToWithBtmSheet(bool fullScreen, Duration duration) {
    if (fullScreen == state.playOutState.fullScreen) {
      commandVideoController(
        fullScreen: fullScreen,
        command: LastControllerCommand.seekTo(duration),
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

  void commandModal(BtmSheetState btmSheetState) =>
      state = state.copyWith(btmSheetState: btmSheetState);

  void clearModal() =>
      state = state.copyWith(btmSheetState: const BtmSheetState.none());

  void commandSnackBar(SnackMsg snackMsg) {
    final prgDataResult = state.prgDataResult;
    final isCommentAppBarShown = prgDataResult is StateSuccess &&
        prgDataResult.page == const PageSheetModel.comment() &&
        state.commentHolder.followTimeLineMode ==
            const FollowTimeLineMode.follow();
    _snackBarMsgNotifier.notifyMsg(snackMsg, isCommentAppBarShown);
  }
}
