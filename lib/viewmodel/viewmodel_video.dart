import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view.dart';
import 'package:shirasu/extension.dart';

import 'model/model_detail.dart';

part 'viewmodel_video.freezed.dart';

final _pPlayOutState = Provider.autoDispose.family<PlayOutState, String>(
    (ref, id) => ref.watch(detailSNProvider(id).state).playOutState);

/// don't use this provider when [PlayOutState.commandedState] != [PlayerCommandedState.POST_PLAY]
final pVideoViewModel =
    StateNotifierProvider.autoDispose.family<VideoViewModel, String>((ref, id) {
  final state = ref.watch(_pPlayOutState(id));
  return VideoViewModel(state, id);
});

BetterPlayerController _createController(PlayOutState playOutState, String id) {
  assert(playOutState.commandedState == PlayerCommandedState.POST_PLAY);

  final dataSource = BetterPlayerDataSource(
    BetterPlayerDataSourceType.network,
    playOutState.hlsMediaUrl,
    liveStream: playOutState.videoType == VideoType.LIVE,
    headers: {
      'Cookie': playOutState.cookie,
    },
  );
  return BetterPlayerController(
    BetterPlayerConfiguration(
      overlay: PlayerControllerView(programId: id),
      autoPlay: true,
      autoDispose: false,
      autoDetectFullscreenDeviceOrientation: true,
      errorBuilder: (context, errorMessage) {
        //todo implement
        return Container();
      },
      controlsConfiguration: const BetterPlayerControlsConfiguration(
        showControls: false,
        loadingColor: Styles.PRIMARY_COLOR,
      ),
      //todo ugly access
      aspectRatio: Dimens.IMG_RATIO,
      fullScreenAspectRatio: Dimens.IMG_RATIO,
    ),
    betterPlayerDataSource: dataSource,
  );
}

/// must not be used if [playOutState.commandedState] != [PlayerCommandedState.POST_PLAY]
class VideoViewModel extends StateNotifier<VideoModel> {
  VideoViewModel(this.playOutState, String id)
      : controller =
            playOutState.commandedState == PlayerCommandedState.POST_PLAY
                ? _createController(playOutState, id)
                : null,
        super(const VideoModel()) {
    controller?.addEventsListener(_playerEventListener);
  }

  final PlayOutState playOutState;
  final BetterPlayerController controller;

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  void _playerEventListener(BetterPlayerEvent event) {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.initialized:
        final totalDuration = controller.videoPlayerController.value.duration;
        debugPrint(totalDuration.inSeconds.toDouble().toString());
        state = state.copyWith(
          durationSec: totalDuration.inSeconds.toDouble(),
          isInitialized: true,
        );
        break;
      case BetterPlayerEventType.finished:
        //todo handle error
        break;
      case BetterPlayerEventType.exception:
        //todo log error
        debugPrint(event.exception);
        break;
      case BetterPlayerEventType.progress:
        state = state.copyWith(
          currentPosSec: event.progress.inSeconds.toDouble(),
          durationSec: event.duration.inSeconds.toDouble(),
        );
        break;
      case BetterPlayerEventType.play:
        state = state.copyWith(isPlaying: true);
        break;
      case BetterPlayerEventType.pause:
        state = state.copyWith(isPlaying: false);
        break;
      case BetterPlayerEventType.openFullscreen:
        state = state.copyWith(isFullScreen: true);
        break;
      case BetterPlayerEventType.hideFullscreen:
        state = state.copyWith(isFullScreen: false);
        break;
      default:
        break;
    }
  }

  void toggleVisibility() {
    if (state.isInitialized)
      state = state.copyWith(
        controllerVisibility: !state.controllerVisibility,
      );
  }

  Future<void> seek(Duration diff) async {
    final duration = await controller.videoPlayerController.position;
    await controller.videoPlayerController.seekTo(duration + diff);
  }

  Future<void> seekTo(double sec, bool applyController) async {
    state = state.copyWith(currentPosSec: sec);

    if (applyController)
      await controller.videoPlayerController
          .seekTo(Duration(seconds: sec.toInt()));
  }

  Future<void> play() async => controller.videoPlayerController.play();

  Future<void> pause() async => controller.videoPlayerController.pause();

  void toggleFullScreen() => controller.toggleFullScreen();
}

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    @Default(0) double durationSec,
    @Default(0) double currentPosSec,
    @Default(false) bool isPlaying,
    @Default(false) bool controllerVisibility,
    @Default(false) bool isInitialized,
    @Default(false) bool isFullScreen,
  }) = _VideoModel;
}
