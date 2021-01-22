import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/viewmodel/controller_hide_timer.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

import 'model/model_detail.dart';

part 'viewmodel_video.freezed.dart';

/// don't use this provider when [PlayOutState.commandedState] != [PlayerCommandedState.POST_PLAY]
final pVideoViewModel = StateNotifierProvider.autoDispose
    .family<VideoViewModel, VideoViewModelConf>(
        (ref, conf) => VideoViewModel(ref.read, conf));

class VideoViewModelConf {
  VideoViewModelConf(this.id, this.fullScreen);

  final String id;
  final bool fullScreen;
}

class VideoViewModel extends StateNotifier<VideoModel> {
  VideoViewModel(this._read, this._conf) : super(const VideoModel()) {
    _hideTimer = ControllerHideTimer(_hideController);
  }

  static const SEC_FAST_SEEK_BY_BTN = Duration(seconds: 30);
  static const SEC_FAST_SEEK_BY_DOUBLE_TAP = Duration(seconds: 10);

  BetterPlayerController _controller;
  final Reader _read;
  final VideoViewModelConf _conf;
  ControllerHideTimer _hideTimer;

  set controller(BetterPlayerController value) {
    _controller = value..addEventsListener(_playerEventListener);
  }

  BetterPlayerController get controller => _controller;

  ViewModelDetail get _viewModelDetail => _read(detailSNProvider(_conf.id));

  @override
  void dispose() {
    super.dispose();
    _hideTimer.cancel();
    _controller?.dispose();
  }

  // region PlayerEventListener
  void _playerEventListener(BetterPlayerEvent event) {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.initialized:
        _onInitializedEvent();
        break;
      case BetterPlayerEventType.finished:
        //todo handle error
        break;
      case BetterPlayerEventType.exception:
        //todo log error
        debugPrint(event.exception);
        break;
      case BetterPlayerEventType.progress:
        _onProgressEvent(event);
        break;
      case BetterPlayerEventType.seekTo:
        // todo show progress indicator while loading??
        _onSeekEvent(event);
        break;
      case BetterPlayerEventType.play:
        _onPlayPauseEvent(true);
        break;
      case BetterPlayerEventType.pause:
        _onPlayPauseEvent(false);
        break;
      case BetterPlayerEventType.openFullscreen:
      case BetterPlayerEventType.hideFullscreen:
        throw Exception("don't rotate screen");
        break;
      default:
        break;
    }
  }

  void _onInitializedEvent() {
    if (!mounted) return;

    state = state.copyWith(
      isInitialized: true,
    );
    _viewModelDetail.takePriorityAndSetTotalDuration(
      totalDuration: controller.videoPlayerController.value.duration,
      fullScreen: _conf.fullScreen,
    );
  }

  void _onProgressEvent(BetterPlayerEvent event) {
    if (mounted && !state.isSeekBarDragging) {
      state = state.copyWith(currentPos: event.progress);
      _viewModelDetail.setVideoDurations(
        currentPos: event.progress,
        totalDuration: event.duration,
        fullScreen: _conf.fullScreen,
      );
    }
  }

  void _onSeekEvent(BetterPlayerEvent event) {
    if (mounted) {
      _viewModelDetail.setCurrentPos(
        currentPos: event.duration,
        fullScreen: _conf.fullScreen,
      );
      state = state.copyWith(currentPos: event.progress);
    }
  }

  void _onPlayPauseEvent(bool play) {
    if (mounted)
      _viewModelDetail.setVideoIsPlaying(
        fullScreen: _conf.fullScreen,
        isPlaying: play,
      );
  }

  // endregion

  void _hideController() {
    if (mounted) state = state.copyWith(controllerVisibility: false);
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

  /// must be [mounted] == true && [state.isInitialized] == true
  Future<void> seek(Duration diff) async {
    _hideTimer.renew();

    final duration = await controller.videoPlayerController.position;
    await controller.seekTo(duration + diff);
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  Future<void> seekTo(
      Duration duration, bool applyController, bool endDrag) async {
    _hideTimer.renew();

    if (endDrag) {
      state = state.copyWith(
        isSeekBarDragging: false,
      );
    } else
      state = state.copyWith(currentPos: duration);

    if (applyController) await controller.seekTo(duration);
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  Future<void> playOrPause() async {
    _hideTimer.renew();

    return _controller.isPlaying() ? controller.pause() : controller.play();
  }

  Future<void> pauseProgrammatically() async => controller.pause();

  Future<void> playProgrammatically() async => controller.play();
}

@freezed
abstract class VideoModel implements _$VideoModel {
  const factory VideoModel({
    @Default(Duration.zero) Duration currentPos,
    @Default(false) bool controllerVisibility,
    @Default(false) bool isInitialized,
    @Default(false) bool isSeekBarDragging,
  }) = _VideoModel;

  const VideoModel._();

  Duration get currentPosSafe =>
      currentPos.isNegative ? Duration.zero : currentPos;
}
