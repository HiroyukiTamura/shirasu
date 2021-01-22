import 'package:flutter/cupertino.dart';
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
    String hlsMediaUrl,
    VideoType videoType,
    String cookie,
    @Default(false) bool isPlaying,
    @Default(Duration.zero) Duration currentPos,
    @Default(Duration.zero) Duration totalDuration,
    @Default(false) bool fullScreen,
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

  Duration get currentPosSafe =>
      currentPos.isNegative ? Duration.zero : currentPos;
}

@freezed
abstract class PlayerCommandedState with _$PlayerCommandedState {
  const factory PlayerCommandedState.playError() = PlayerCommandedStatePlayError;
  const factory PlayerCommandedState.prePlay() = PlayerCommandedStatePrePlay;
  const factory PlayerCommandedState.postPlay() = PlayerCommandedStatePostPlay;
  const factory PlayerCommandedState.initializing() = PlayerCommandedStateInitializing;
  const factory PlayerCommandedState.error() = PlayerCommandedStateError;
}

@freezed
abstract class PageSheetModel with _$PageSheetModel {
  const factory PageSheetModel.hidden() = _PageSheetModelHidden;

  const factory PageSheetModel.handouts() = PageSheetModelHandouts;

  const factory PageSheetModel.pricing() = PageSheetModelPricing;
}
