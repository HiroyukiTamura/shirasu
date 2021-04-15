import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:uuid/uuid.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  @protected
  const factory ModelDetail({
    @required DetailModelState prgDataResult,
    @required PlayOutState playOutState,
    @required bool isHandoutUrlRequesting,
    @required bool isCommentPosting,
    @required CommentsHolder commentHolder,
    @required BtmSheetState btmSheetState,
  }) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial(bool playFromStart) => ModelDetail(
        prgDataResult: const DetailModelState.preInitialized(),
        playOutState: PlayOutState.initial(),
        isHandoutUrlRequesting: false,
        isCommentPosting: false,
        commentHolder: CommentsHolder.initial(playFromStart),
        btmSheetState: const BtmSheetState.none(),
      );

  ModelDetail copyAsInitialize(String urlAvailable, VideoType videoType) =>
      copyWith(
        playOutState: PlayOutState.initialize(urlAvailable, videoType),
      );

  ModelDetail copyAsPlay(
          String urlAvailable, VideoType videoType, String cookie) =>
      copyWith(
        playOutState: PlayOutState.play(urlAvailable, videoType, cookie),
      );

  ModelDetail copyAsPageSheet(PageSheetModel pageSheetModel) {
    final p = prgDataResult;
    return p is DetailStateSuccess
        ? copyWith(
            prgDataResult: p.copyWith(
              page: pageSheetModel,
            ),
          )
        : null;
  }

  ModelDetail copyAsPrgDataResultErr(ErrorMsgCommon errMsg) => copyWith(
        prgDataResult: DetailModelState.error(errMsg),
      );
}

@freezed
abstract class DetailModelState with _$DetailModelState {
  const factory DetailModelState.preInitialized() = _DetailPreInitialized;

  const factory DetailModelState.loading() = _DetailStateLoading;

  const factory DetailModelState.success({
    @required ProgramDetailData programDetailData,
    @required ChannelData channelData,
    @required PageSheetModel page,
  }) = DetailStateSuccess;

  const factory DetailModelState.error(ErrorMsgCommon msg) = _DetailStateError;

  const DetailModelState._();

  @optionalTypeArgs
  TResult whenSuccess<TResult extends Object>(
      TResult Function(ProgramDetailData programDetailData, ChannelData channelData,
            PageSheetModel page)
        success,
  ) => maybeWhen(
      orElse: () => null,
      success: success,
    );
}

@freezed
abstract class PlayOutState implements _$PlayOutState {
  @protected
  const factory PlayOutState({
    @required PlayerCommandedState commandedState,
    String hlsMediaUrl,
    VideoType videoType,
    String cookie,
    @Default(false) bool isPlaying,
    @nullable @protected Duration currentPos,
    @nullable @protected Duration currentPosForUi,
    @nullable @protected Duration totalDuration,
    @Default(false) bool controllerVisibility,
    @Default(false) bool isSeekBarDragging,
    @Default(false) bool fullScreen,
    @Default(false) bool isBuffering,
    @Default(VideoPlayerState.preInitialized())
        VideoPlayerState videoPlayerState,
    @Default(LastControllerCommandHolder())
        LastControllerCommandHolder lastControllerCommandHolder,
  }) = _PlayOutState;

  factory PlayOutState.initial() => const PlayOutState(
        commandedState: PlayerCommandedState.prePlay(),
      );

  factory PlayOutState.initialize(String hlsMediaUrl, VideoType videoType) =>
      PlayOutState(
        commandedState: const PlayerCommandedState.initializing(),
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
      );

  factory PlayOutState.play(
          String hlsMediaUrl, VideoType videoType, String cookie) =>
      PlayOutState(
        commandedState: const PlayerCommandedState.postPlay(),
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
        cookie: cookie,
        isPlaying: true,
      );

  const PlayOutState._();

  bool isEqualSource(PlayOutState state) =>
      cookie == state?.cookie &&
      videoType == state?.videoType &&
      hlsMediaUrl == state?.hlsMediaUrl;

  Duration get currentPosForUiSafe =>
      currentPosForUi?.isPositive == true ? currentPosForUi : Duration.zero;

  Duration get currentPosSafe => currentPos?.isPositive == true ? currentPos : Duration.zero;

  Duration get totalDurationSafe => totalDuration?.isPositive == true ? totalDuration : Duration.zero;
}

/// status of statue of video command.
/// this is not status of the real video player. @see [VideoPlayerState]
/// for example, [_PlayerCommandedStatePostError] is used when failed to get cookie before the video player initialize.
@freezed
abstract class PlayerCommandedState with _$PlayerCommandedState {
  const factory PlayerCommandedState.prePlay() = _PlayerCommandedStatePrePlay;

  const factory PlayerCommandedState.postPlay() = _PlayerCommandedStatePostPlay;

  const factory PlayerCommandedState.error(ErrorMsgCommon errMsg) =
      _PlayerCommandedStatePostError;

  const factory PlayerCommandedState.initializing() =
      _PlayerCommandedStateInitializing;
}

@freezed
abstract class PageSheetModel with _$PageSheetModel {
  const factory PageSheetModel.hidden() = _PageSheetModelHidden;

  const factory PageSheetModel.handouts() = _PageSheetModelHandouts;

  const factory PageSheetModel.pricing() = _PageSheetModelPricing;

  const factory PageSheetModel.comment() = _PageSheetModelComment;
}

@freezed
abstract class LastControllerCommandHolder with _$LastControllerCommandHolder {
  @protected
  const factory LastControllerCommandHolder({
    @Default(LastControllerCommand.initial()) LastControllerCommand command,
    @Default('') String commandKey,
  }) = _LastControllerCommandHolder;

  factory LastControllerCommandHolder.create(LastControllerCommand command) =>
      LastControllerCommandHolder(commandKey: Uuid().v4(), command: command);
}

@freezed
abstract class LastControllerCommand with _$LastControllerCommand {
  const factory LastControllerCommand.initial() = _LastControllerCommandInitial;

  const factory LastControllerCommand.play(Duration position) =
      _LastControllerCommandPlay;

  const factory LastControllerCommand.pause() = _LastControllerCommandPause;

  const factory LastControllerCommand.seek(Duration diff) =
      _LastControllerCommandSeek;

  const factory LastControllerCommand.seekTo(Duration diff) =
      _LastControllerCommandSeekTo;

  const factory LastControllerCommand.playOrPause() =
      _LastControllerCommandPlayOrPause;
}

@freezed
abstract class VideoControllerCommand with _$VideoControllerCommand {
  const factory VideoControllerCommand.play(Duration position) =
      _VideoControllerCommandPlay;

  const factory VideoControllerCommand.pause() = _VideoControllerCommandPause;

  const factory VideoControllerCommand.playOrPause() =
      _VideoControllerCommandPlayOrPause;

  const VideoControllerCommand._();

  LastControllerCommand get converted => when(
        play: (position) => LastControllerCommand.play(position),
        pause: () => const LastControllerCommand.pause(),
        playOrPause: () => const LastControllerCommand.playOrPause(),
      );
}

@freezed
abstract class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.preInitialized() =
      _VideoPlayerStatePreInitialized;

  const factory VideoPlayerState.ready() = _VideoPlayerStateReady;

  const factory VideoPlayerState.error(String msg) = _VideoPlayerStateError;

  const factory VideoPlayerState.finish() = _VideoPlayerStateFinish;
}

// ignore: deprecated_member_use_from_same_package
/// count of [comments] must be under [_COMMENT_ITEM_LIMIT].
@freezed
abstract class CommentsHolder implements _$CommentsHolder {
  @protected
  const factory CommentsHolder({
    /// use [_commentSorted]
    @Deprecated('use [_commentSorted]') @required List<CommentItem> comments,
    @required String pageNationKey,
    @required bool loadedMostPastComment,
    @required bool isRenewing,
    @required bool loadedMostFutureComment,
    @required CommentsState state,
    @required FollowTimeLineMode followTimeLineMode,

    /// use [userPostedComment]
    @Deprecated('use [userPostedComment]')
    @required
        List<CommentItem> rawUserPostedComment,
  }) = _CommentsHolder;

  const CommentsHolder._();

  /// [playFromStart] : video starts playing at [Duration.zero] or not
  factory CommentsHolder.initial(bool playFromStart) => CommentsHolder(
        // ignore: deprecated_member_use_from_same_package
        comments: IterableX(<CommentItem>[]).toUnmodifiable(),
        pageNationKey: _INITIAL_PAGE_NATION_KEY,
        loadedMostPastComment: playFromStart,
        loadedMostFutureComment: false,
        state: const CommentsState.loading(),
        isRenewing: true,
        followTimeLineMode: const FollowTimeLineMode.follow(),
        // ignore: deprecated_member_use_from_same_package
        rawUserPostedComment: [],
      );

  static const _INITIAL_PAGE_NATION_KEY = 'INITIAL_PAGE_NATION_KEY';

  UnmodifiableListView<CommentItem> get userPostedComment =>
      // ignore: deprecated_member_use_from_same_package
      IteratableX(rawUserPostedComment).toUnmodifiable();

  UnmodifiableListView<CommentItem> _commentSorted(bool includeUserPosted) {
    // ignore: deprecated_member_use_from_same_package
    final list = (comments + userPostedComment)
        .sortedByDescending((it) => it.commentTimeDuration);
    return IteratableX(list).toUnmodifiable();
  }

  Duration get mostPastCommentTime =>
      IterableX(_commentSorted(true)).lastOrNull?.commentTimeDuration;

  Duration get mostFutureCommentTime =>
      IterableX(_commentSorted(true)).firstOrNull?.commentTimeDuration;

  UnmodifiableListView<CommentItem> getCommentItemsBefore(Duration duration) {
    final list =
        _commentSorted(true).where((it) => it.commentTimeDuration < duration);
    return IteratableX(list).toUnmodifiable();
  }

  UnmodifiableListView<CommentItem> getCommentItemsAfter(Duration duration) {
    final list =
        _commentSorted(true).where((it) => duration < it.commentTimeDuration);
    return IterableX(list).toUnmodifiable();
  }

  CommentsHolder copyAsAddSingleCommentHolder(
    Comments newComments,
    LoadingState loadingState,
  ) {
    final list = _regenerateCommentList(newComments, loadingState);

    return newComments.nextToken == null
        ? loadingState.when(
            feature: () => copyWith(
                  comments: list,
                  loadedMostFutureComment: true,
                  state: const CommentsState.success(),
                ),
            past: () => copyWith(
                  comments: list,
                  loadedMostPastComment: true,
                  state: const CommentsState.success(),
                ))
        : copyWith(
            comments: list,
            state: const CommentsState.success(),
          );
  }

  CommentsHolder copyAsAddUserComment(CommentItem item) => copyWith(
        rawUserPostedComment: userPostedComment + [item],
      );

  UnmodifiableListView<CommentItem> _regenerateCommentList(
    Comments newComments,
    LoadingState loadingState,
  ) {
    final raw = _commentSorted(false) + newComments.itemsSorted;
    final rawLen = raw.length;
    final distincted = raw.distinct().length;

    if (rawLen != distincted)
      debugPrint('----------- $rawLen -------------- $distincted ------------');

    Iterable<CommentItem> itr =
        raw.distinct().sortedByDescending((it) => it.commentTimeDuration);
    if (ViewModelDetail.COMMENT_MAX_ITEM_COUNT < itr.length)
      itr = loadingState.when(
        feature: () => itr.take(ViewModelDetail.COMMENT_MAX_ITEM_COUNT),
        past: () => itr.takeLast(ViewModelDetail.COMMENT_MAX_ITEM_COUNT),
      );
    return IteratableX(itr).toUnmodifiable();
  }
}

@freezed
abstract class CommentsState with _$CommentsState {
  const factory CommentsState.success() = _CommentsStateSuccess;

  const factory CommentsState.loading() = _CommentsStateLoading;

  const factory CommentsState.loadingMore(LoadingState loadingState) =
      CommentsStateLoadingMore;

  const factory CommentsState.error(ErrorMsgCommon errMsg) = _CommentsStateErr;

  const CommentsState._();

  bool get isSuccessOrLoading =>
      this == const CommentsState.success() ||
      this == const CommentsState.loading();
}

@freezed
abstract class BtmSheetState with _$BtmSheetState {
  const factory BtmSheetState.none() = _BtmSheetStateNone;

  const factory BtmSheetState.playSpeed() = _BtmSheetStatePlaySpeed;

  const factory BtmSheetState.resolution() = _BtmSheetStateResolution;

  const factory BtmSheetState.share(ShareUrl shareUrl) = _BtmSheetStateShare;

  const factory BtmSheetState.commentSelect(Duration position) =
      BtmSheetStateCommentSelect;

  const factory BtmSheetState.payment() = _BtmSheetStatePayment;

  const factory BtmSheetState.fcmMenu(String channelId, String programId) = _BtmSheetStateFcmMenu;
}

@freezed
abstract class FollowTimeLineMode with _$FollowTimeLineMode {
  const factory FollowTimeLineMode.notFollow(Duration futurePos) =
      FollowTimeLineModeNone;

  const factory FollowTimeLineMode.follow() = _FollowTimeLineModeFollow;
}

@freezed
abstract class ShareUrl with _$ShareUrl {
  const factory ShareUrl({
    @required String urlTwitter,
    @required String urlFaceBook,
    @required String url,
  }) = _ShareUrl;
}

@freezed
abstract class LoadingState with _$LoadingState {
  const factory LoadingState.feature() = _Feature;

  const factory LoadingState.past() = _Past;
}

class VideoViewModelConf {
  const VideoViewModelConf(this.id, this.fullScreen);

  final String id;
  final bool fullScreen;
}
