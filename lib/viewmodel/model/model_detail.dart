import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:uuid/uuid.dart';
import 'package:dartx/dartx.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  @protected
  const factory ModelDetail({
    @required DetailModelState prgDataResult,
    @required PlayOutState playOutState,
    @required bool isHandoutUrlRequesting,
    @required CommentsHolder commentHolder,
    @required PortalState portalState,
  }) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial(bool playFromStart) => ModelDetail(
        prgDataResult: const DetailModelState.preInitialized(),
        playOutState: PlayOutState.initial(),
        isHandoutUrlRequesting: false,
        commentHolder: CommentsHolder.initial(playFromStart),
        portalState: const PortalState.none(),
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
    return p is StateSuccess
        ? copyWith(prgDataResult: p.copyWith(page: pageSheetModel))
        : null;
  }
}

@freezed
abstract class DetailModelState with _$DetailModelState {
  const factory DetailModelState.preInitialized() = PreInitialized;

  const factory DetailModelState.loading() = StateLoading;

  const factory DetailModelState.success({
    @required ProgramDetailData programDetailData,
    @required ChannelData channelData,
    @required PageSheetModel page,
  }) = StateSuccess;

  const factory DetailModelState.error() = StateError;
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
    @Default(Duration.zero) Duration currentPos,
    @Default(Duration.zero) Duration currentPosForUi,
    @Default(Duration.zero) Duration totalDuration,
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
      currentPosForUi.isNegative ? Duration.zero : currentPos;
}

@freezed
abstract class PlayerCommandedState with _$PlayerCommandedState {
  const factory PlayerCommandedState.playError() =
      PlayerCommandedStatePlayError;

  const factory PlayerCommandedState.prePlay() = PlayerCommandedStatePrePlay;

  const factory PlayerCommandedState.postPlay() = PlayerCommandedStatePostPlay;

  const factory PlayerCommandedState.initializing() =
      PlayerCommandedStateInitializing;

  const factory PlayerCommandedState.error() = PlayerCommandedStateError;
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

  const factory LastControllerCommand.play() = _LastControllerCommandPlay;

  const factory LastControllerCommand.pause() = _LastControllerCommandPause;

  const factory LastControllerCommand.seek(Duration diff) =
      _LastControllerCommandSeek;

  const factory LastControllerCommand.seekTo(Duration diff) =
      _LastControllerCommandSeekTo;

  const factory LastControllerCommand.playOrPause() =
      _LastControllerCommandPlayOrPause;
}

@freezed
abstract class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.preInitialized() =
      _VideoPlayerStatePreInitialized;

  const factory VideoPlayerState.ready() = _VideoPlayerStateReady;

  const factory VideoPlayerState.error(String msg) = _VideoPlayerStateError;

  const factory VideoPlayerState.finish() = _VideoPlayerStateFinish;
}

/// count of [comments] must be under [_COMMENT_ITEM_LIMIT].
@freezed
abstract class CommentsHolder implements _$CommentsHolder {
  @protected
  const factory CommentsHolder({
    @Deprecated('use [commentsSorted]') @required List<CommentItem> comments,
    @required String pageNationKey,
    @required bool loadedMostPastComment,
    @required bool isRenewing,
    @required bool loadedMostFutureComment,
    @required CommentsState state,
  }) = _CommentsHolder;

  const CommentsHolder._();

  /// [playFromStart] : video starts playing at [Duration.zero] or not
  factory CommentsHolder.initial(bool playFromStart) => CommentsHolder(
        // ignore: deprecated_member_use_from_same_package
        comments: <CommentItem>[].toUnmodifiable(),
        pageNationKey: Uuid().v4(),
        loadedMostPastComment: playFromStart,
        loadedMostFutureComment: false,
        state: const CommentsState.loading(),
        isRenewing: true,
      );

  static const _COMMENT_ITEM_LIMIT = 500;

  // ignore: deprecated_member_use_from_same_package
  List<CommentItem> get _commentSorted => comments
      .sortedByDescending((it) => it.commentTimeDuration)
      .toUnmodifiable();

  Duration get mostPastCommentTime =>
      _commentSorted.lastOrNull?.commentTimeDuration;

  Duration get mostFutureCommentTime =>
      _commentSorted.firstOrNull?.commentTimeDuration;

  List<CommentItem> getCommentItemsBefore(Duration duration) => _commentSorted
      .filter((it) => it.commentTimeDuration < duration)
      .toUnmodifiable();

  List<CommentItem> getCommentItemsAfter(Duration duration) => _commentSorted
      .filter((it) => duration < it.commentTimeDuration)
      .toUnmodifiable();

  CommentsHolder copyAsAddSingleCommentHolder(
    Comments newComments,
    LoadingState loadingState,
  ) {
    final list = _regenerateCommentList(newComments, loadingState);

    if (newComments.nextToken == null)
      switch (loadingState) {
        case LoadingState.FUTURE:
          return copyWith(
            comments: list,
            loadedMostFutureComment: true,
            state: const CommentsState.success(),
          );
        case LoadingState.PAST:
          return copyWith(
            comments: list,
            loadedMostPastComment: true,
            state: const CommentsState.success(),
          );
        default:
          throw ArgumentError(loadingState);
      }
    return copyWith(
      comments: list,
      state: const CommentsState.success(),
    );
  }

  List<CommentItem> _regenerateCommentList(
    Comments newComments,
    LoadingState loadingState,
  ) {
    final raw = [..._commentSorted, ...newComments.itemsSorted];
    final rawLen = raw.length;
    final distincted = raw.distinct().length;

    if (rawLen != distincted)
      debugPrint('----------- $rawLen -------------- $distincted ------------');

    Iterable<CommentItem> itr = [..._commentSorted, ...newComments.itemsSorted]
        .distinct()
        .sortedByDescending((it) => it.commentTimeDuration);
    if (_COMMENT_ITEM_LIMIT < itr.length)
      switch (loadingState) {
        case LoadingState.FUTURE:
          itr = itr.take(_COMMENT_ITEM_LIMIT);
          break;
        case LoadingState.PAST:
          itr = itr.takeLast(_COMMENT_ITEM_LIMIT);
          break;
        default:
          throw ArgumentError(loadingState);
      }
    return itr.toUnmodifiable();
  }
}

@freezed
abstract class CommentsState with _$CommentsState {
  const factory CommentsState.success() = _CommentsStateSuccess;

  const factory CommentsState.loading() = _CommentsStateLoading;

  const factory CommentsState.loadingMore(LoadingState loadingState) =
      CommentsStateLoadingMore;

  const factory CommentsState.error() = CommentsStateErr;
}

@freezed
abstract class PortalState with _$PortalState {
  const factory PortalState.none() = _PortalStateNone;

  const factory PortalState.playSpeed() = _PortalStatePlaySpeed;

  const factory PortalState.resolution() = _PortalStateResolution;
}

enum LoadingState { FUTURE, PAST }
