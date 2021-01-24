import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:uuid/uuid.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  const factory ModelDetail({
    @required DetailModelState prgDataResult,
    @required PlayOutState playOutState,
    @required bool isHandoutUrlRequesting,
    @required CommentHolder commentHolder,
  }) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial() => ModelDetail(
        prgDataResult: const DetailModelState.preInitialized(),
        playOutState: PlayOutState.initial(),
        isHandoutUrlRequesting: false,
        commentHolder: const CommentHolder(),
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

@freezed
abstract class CommentHolder with _$CommentHolder {
  const factory CommentHolder({
    Comments commentsPre,
    Comments commentsPost,
    @Default(CommentsState.loading()) CommentsState state,
  }) = _CommentHolder;
}

@freezed
abstract class CommentsState with _$CommentsState {
  const factory CommentsState.success() = _CommentsStateSuccess;

  const factory CommentsState.loading() = _CommentsStateLoading;

  const factory CommentsState.loadingMore() = _CommentsStateLoadingMore;

  const factory CommentsState.error() = _CommentsStateError;
}