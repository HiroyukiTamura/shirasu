import 'package:flutter_playout/player_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  const factory ModelDetail({
    @required DetailModelState prgDataResult,
    @required PlayOutState playOutState,
    @required bool isHandoutUrlRequesting,
  }) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial() => ModelDetail(
        prgDataResult: const DetailModelState.preInitialized(),
        playOutState: PlayOutState.initial(),
        isHandoutUrlRequesting: false,
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
    @required PlayerState playerState,
    String hlsMediaUrl,
    VideoType videoType,
    String cookie,
  }) = _PlayOutState;

  factory PlayOutState.initial() => const PlayOutState(
        commandedState: PlayerCommandedState.PRE_PLAY,
        playerState: PlayerState.PLAYING,
      );

  factory PlayOutState.initialize(String hlsMediaUrl, VideoType videoType) =>
      PlayOutState(
        commandedState: PlayerCommandedState.INITIALIZING,
        playerState: PlayerState.PLAYING,
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
      );

  factory PlayOutState.play(
          String hlsMediaUrl, VideoType videoType, String cookie) =>
      PlayOutState(
        commandedState: PlayerCommandedState.POST_PLAY,
        playerState: PlayerState.PLAYING,
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
        cookie: cookie,
      );

  const PlayOutState._();

  bool isEqualSource(PlayOutState state) =>
      cookie == state?.cookie &&
      videoType == state?.videoType &&
      hlsMediaUrl == state?.hlsMediaUrl;
}

enum PlayerCommandedState {
  PLAY_ERROR,
  PRE_PLAY,
  POST_PLAY,
  INITIALIZING,
  ERROR,
}

@freezed
abstract class PageSheetModel with _$PageSheetModel {
  const factory PageSheetModel.hidden() = PageSheetModelHidden;

  const factory PageSheetModel.handouts() = PageSheetModelHandouts;

  const factory PageSheetModel.pricing() = PageSheetModelPricing;
}
