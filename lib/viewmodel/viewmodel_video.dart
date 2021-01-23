import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
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

/// todo merge to DetailViewModel?
class VideoViewModel extends StateNotifier<VideoModel> {
  VideoViewModel(this._read, this._conf) : super(const VideoModel()) {
    _hideTimer = ControllerHideTimer(_hideController);
  }

  static const SEC_FAST_SEEK_BY_BTN = Duration(seconds: 30);
  static const SEC_FAST_SEEK_BY_DOUBLE_TAP = Duration(seconds: 10);

  final Reader _read;
  final VideoViewModelConf _conf;
  ControllerHideTimer _hideTimer;

  ViewModelDetail get _viewModelDetail => _read(detailSNProvider(_conf.id));

  @override
  void dispose() {
    super.dispose();
    _hideTimer.cancel();
    // _controller?.dispose();
  }

  void _hideController() {
    if (mounted) state = state.copyWith(controllerVisibility: false);
  }

  void hide() {
    _hideTimer.cancel();
    _hideController();
  }

  void toggleVisibility() {
    if (!_viewModelDetail.state.playOutState.isVideoControllerInitialized)
      return;

    final controllerVisibility = state.controllerVisibility;
    controllerVisibility ? _hideTimer.cancel() : _hideTimer.renew();
    state = state.copyWith(
      controllerVisibility: !controllerVisibility,
    );
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  Future<void> seek(Duration diff) async {
    _hideTimer.renew();
    _viewModelDetail.commandVideoController(LastControllerCommand.seek(diff));
  }

  /// must be [mounted] == true && [state.isInitialized] == true
  Future<void> seekToWithSlider(
      Duration duration, bool applyController, bool endDrag) async {
    _hideTimer.renew();

    if (endDrag) {
      state = state.copyWith(
        isSeekBarDragging: false,
      );
    }
    _viewModelDetail.setCurrentPos(
      fullScreen: _conf.fullScreen,
      currentPos: duration,
      applyCurrentPosUi: true,
    );
    if (applyController)
      _viewModelDetail
          .commandVideoController(LastControllerCommand.seekTo(duration));
  }

  void playOrPause() {
    _hideTimer.renew();
    _viewModelDetail
        .commandVideoController(const LastControllerCommand.playOrPause());
  }

// Future<void> pauseProgrammatically() async => controller.pause();
//
// Future<void> playProgrammatically() async => controller.play();
}

@freezed
abstract class VideoModel implements _$VideoModel {
  const factory VideoModel({
    @Default(false) bool controllerVisibility,
    @Default(false) bool isSeekBarDragging,
  }) = _VideoModel;

  const VideoModel._();
}
