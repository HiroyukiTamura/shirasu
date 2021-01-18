import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/viewmodel/controller_hide_timer.dart';

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
      autoPlay: true,
      autoDispose: false,
      autoDetectFullscreenDeviceOrientation: true,
      errorBuilder: (context, errorMessage) {
        //todo implement
        return Container();
      },
      placeholder: VideoThumbnail(
        isLoading: true,
        programId: id,
      ),
      controlsConfiguration: BetterPlayerControlsConfiguration(
        playerTheme: BetterPlayerTheme.custom,
        customControlsBuilder: (controller) =>
            PlayerControllerView(programId: id),
        loadingColor:
            Styles.PRIMARY_COLOR, //todo debug loading circle is not appear??
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
    _hideTimer = ControllerHideTimer(_hideController);
    controller?.addEventsListener(_playerEventListener);
  }

  static const SEC_FAST_SEEK_BY_BTN = Duration(seconds: 30);
  static const SEC_FAST_SEEK_BY_DOUBLE_TAP = Duration(seconds: 10);

  final PlayOutState playOutState;
  final BetterPlayerController controller;
  ControllerHideTimer _hideTimer;

  @override
  void dispose() {
    super.dispose();
    _hideTimer.cancel();
    controller?.dispose();
  }

  void _hideController() {
    if (mounted) state = state.copyWith(controllerVisibility: false);
  }

  void _playerEventListener(BetterPlayerEvent event) {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.initialized:
        final totalDuration = controller.videoPlayerController.value.duration;
        state = state.copyWith(
          totalDuration: totalDuration,
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
        if (!state.isSeekBarDragging)
          state = state.copyWith(
            currentPos: event.progress,
            totalDuration: event.duration,
          );
        break;
      case BetterPlayerEventType.seekTo:
        // todo show progress indicator while loading??
        state = state.copyWith(
          currentPos: event.duration,
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

  void hide() {
    _hideTimer.cancel();
    _hideController();
  }

  void toggleVisibility() {
    if (!state.isInitialized) return;

    final controllerVisibility = state.controllerVisibility;
    controllerVisibility ? _hideTimer.cancel() : _hideTimer.renew();
    state = state.copyWith(
      controllerVisibility: !controllerVisibility,
    );
  }

  Future<void> seek(Duration diff) async {
    _hideTimer.renew();

    final duration = await controller.videoPlayerController.position;
    await controller.seekTo(duration + diff);
  }

  Future<void> seekTo(
      Duration duration, bool applyController, bool endDrag) async {
    _hideTimer.renew();

    if (endDrag)
      state = state.copyWith(
        currentPos: duration,
        isSeekBarDragging: false,
      );
    else
      state = state.copyWith(currentPos: duration);

    if (applyController) await controller.seekTo(duration);
  }

  Future<void> playOrPause() async {
    _hideTimer.renew();

    return state.isPlaying ? controller.pause() : controller.play();
  }

  void toggleFullScreen() {
    _hideTimer.renew();
    controller.toggleFullScreen();
  }

  void setAsSeekBarDragging() =>
      state = state.copyWith(isSeekBarDragging: true);
}

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    @Default(Duration.zero) Duration totalDuration,
    @Default(Duration.zero) Duration currentPos,
    @Default(false) bool isPlaying,
    @Default(false) bool controllerVisibility,
    @Default(false) bool isInitialized,
    @Default(false) bool isFullScreen,
    @Default(false) bool isSeekBarDragging,
  }) = _VideoModel;
}