import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:uuid/uuid.dart';
import 'package:dartx/dartx.dart';
// import 'package:shirasu/extension.dart' show IteratableX;

import '../viewmodel_detail.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  @protected
  const factory ModelDetail({
    @required DetailModelState prgDataResult,
    @required PlayOutState playOutState,
    @required bool isHandoutUrlRequesting,
    @required CommentsHolder commentHolder,
    @required BtmSheetState btmSheetState,
  }) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial(bool playFromStart) => ModelDetail(
        prgDataResult: const DetailModelState.preInitialized(),
        playOutState: PlayOutState.initial(),
        isHandoutUrlRequesting: false,
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
    return p is StateSuccess
        ? copyWith(prgDataResult: p.copyWith(page: pageSheetModel))
        : null;
  }
}

@freezed
abstract class DetailModelState with _$DetailModelState {
  const factory DetailModelState.preInitialized() = _PreInitialized;

  const factory DetailModelState.loading() = _StateLoading;

  const factory DetailModelState.success({
    @required ProgramDetailData programDetailData,
    @required ChannelData channelData,
    @required PageSheetModel page,
  }) = StateSuccess;

  const factory DetailModelState.error() = _StateError;
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
      _PlayerCommandedStatePlayError;

  const factory PlayerCommandedState.prePlay() = _PlayerCommandedStatePrePlay;

  const factory PlayerCommandedState.postPlay() = _PlayerCommandedStatePostPlay;

  const factory PlayerCommandedState.initializing() =
      _PlayerCommandedStateInitializing;

  const factory PlayerCommandedState.error() = _PlayerCommandedStateError;
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

// ignore: deprecated_member_use_from_same_package
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
    @required FollowTimeLineMode followTimeLineMode,
    @Deprecated('use [userPostedComment]')
    @required
        List<CommentItem> rawUserPostedComment,
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
        followTimeLineMode: const FollowTimeLineMode.follow(),
        // ignore: deprecated_member_use_from_same_package
        rawUserPostedComment: [],
      );

  UnmodifiableListView<CommentItem> get userPostedComment =>
      // ignore: deprecated_member_use_from_same_package
      rawUserPostedComment.toUnmodifiable()
          as UnmodifiableListView<CommentItem>;

  UnmodifiableListView<CommentItem> _commentSorted(bool includeUserPosted) =>
      // ignore: deprecated_member_use_from_same_package
      (comments + userPostedComment)
          .sortedByDescending((it) => it.commentTimeDuration)
          .toUnmodifiable() as UnmodifiableListView<CommentItem>;

  Duration get mostPastCommentTime =>
      _commentSorted(true).lastOrNull?.commentTimeDuration;

  Duration get mostFutureCommentTime =>
      _commentSorted(true).firstOrNull?.commentTimeDuration;

  UnmodifiableListView<CommentItem> getCommentItemsBefore(Duration duration) =>
      _commentSorted(true)
          .filter((it) => it.commentTimeDuration < duration)
          .toUnmodifiable() as UnmodifiableListView<CommentItem>;

  List<CommentItem> getCommentItemsAfter(Duration duration) =>
      _commentSorted(true)
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
      switch (loadingState) {
        case LoadingState.FUTURE: //todo freezed
          itr = itr.take(ViewModelDetail.COMMENT_MAX_ITEM_COUNT);
          break;
        case LoadingState.PAST:
          itr = itr.takeLast(ViewModelDetail.COMMENT_MAX_ITEM_COUNT);
          break;
        default:
          throw ArgumentError(loadingState);
      }
    return itr.toUnmodifiable() as UnmodifiableListView<CommentItem>;
  }
}

@freezed
abstract class CommentsState with _$CommentsState {
  const factory CommentsState.success() = _CommentsStateSuccess;

  const factory CommentsState.loading() = _CommentsStateLoading;

  const factory CommentsState.loadingMore(LoadingState loadingState) =
      CommentsStateLoadingMore;

  const factory CommentsState.error() = _CommentsStateErr;
}

@freezed
abstract class BtmSheetState with _$BtmSheetState {
  const factory BtmSheetState.none() = _BtmSheetStateNone;

  const factory BtmSheetState.playSpeed() = _BtmSheetStatePlaySpeed;

  const factory BtmSheetState.resolution() = _BtmSheetStateResolution;

  const factory BtmSheetState.share(ShareUrl shareUrl) = _BtmSheetStateShare;

  const factory BtmSheetState.commentSelect(Duration position) =
      BtmSheetStateCommentSelect;
}

@freezed
abstract class FollowTimeLineMode with _$FollowTimeLineMode {
  const factory FollowTimeLineMode.notFollow(Duration futurePos) =
      FollowTimeLineModeNone;

  const factory FollowTimeLineMode.follow() = _FollowTimeLineModeFollow;
}

class ShareUrl {
  const ShareUrl({
    @required this.urlTwitter,
    @required this.urlFaceBook,
    @required this.url,
  });

  final String urlTwitter;
  final String urlFaceBook;
  final String url;
}

enum LoadingState { FUTURE, PAST }
