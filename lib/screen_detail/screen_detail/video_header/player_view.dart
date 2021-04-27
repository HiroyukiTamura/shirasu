import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/env_repository.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:video_player/video_player.dart';

part 'player_view.g.dart';

final _kPrvVideoCommand = Provider.autoDispose
    .family<LastControllerCommandHolder, String>((ref, id) => ref
        .watch(kPrvViewModelDetail(id).state)
        .playOutState
        .lastControllerCommandHolder);

@hwidget
Widget playerViewWrapper({
  @required VideoViewModelConf conf,
}) =>
    useProvider(kPrvEnv).enableVideoPlugin
        ? _PlayerView(conf: conf)
        : const Placeholder();

class _PlayerView extends StatefulHookWidget {
  const _PlayerView({Key key, this.conf}) : super(key: key);

  final VideoViewModelConf conf;

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<_PlayerView>
    with AfterLayoutMixin<_PlayerView> {
  VideoPlayerController _controller;
  bool _deactivate = false;
  VideoPlayerValue _lastVideoValue = VideoPlayerValue.uninitialized();

  bool get _isInitialized =>_controller.value.isInitialized;

  @override
  void initState() {
    super.initState();
    _controller = _createVideoController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose(); //must be btm
  }

  @override
  void deactivate() {
    super.deactivate();
    _deactivate = true;
  }

  @override
  Widget build(BuildContext context) {
    _deactivate = false;
    return ColoredBox(
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: Dimens.IMG_RATIO,
              child: ProviderListener(
                provider: _kPrvVideoCommand(widget.conf.id),
                onChange: _onPlayerCommanded,
                child: ProviderListener(
                  provider: kPrvHivePlaySpeedUpdate,
                  onChange: _onHiveUpdate,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          ),
          PlayerControllerView(
            conf: widget.conf,
          ),
        ],
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _getViewModelDetail(context)
        .takePriority(fullScreen: widget.conf.fullScreen);
    context.forceFullScreenIfHorizontalScreen();
    _initVideoController();
  }

  Future<void> _initVideoController() async {
    await _controller.initialize();
    await _controller.play();
  }

  VideoPlayerController _createVideoController() {
    final playOutState = _getPlayOutState(context);
    return VideoPlayerController.network(
      playOutState.hlsMediaUrl,
      httpHeaders: {
        'Cookie': playOutState.cookie,
      },
    )..addListener(_videoControllerListener);
  }

  void _onHiveUpdate(BuildContext context, AsyncValue<double> value) =>
      value.whenData(
        (playSpeed) async {
          if (_isInitialized)
            await _controller.setPlaybackSpeed(playSpeed);
        },
      );

  void _onPlayerCommanded(
      BuildContext context, LastControllerCommandHolder holder) {
    holder.command.when(
      play: (position) async {
        if (_isInitialized) {
          if (position != null) await _controller.seekTo(position);
          await _controller.play();
        }
      },
      pause: () async {
        if (_isInitialized) await _controller.pause();
      },
      seek: (diff) async {
        if (!_isInitialized) return;

        var position = await _controller.position;
        if (position == null || !mounted || _deactivate) return;
        position += diff;
        await _controller.seekTo(position);
      },
      seekTo: (position) async {
        if (!_controller.value.isInitialized) return;

        final duration = _controller.value.duration;
        if (duration != null) await _controller.seekTo(position);
      },
      playOrPause: () async {
        if (_controller.value.isInitialized)
          _controller.value.isPlaying
              ? await _controller.pause()
              : await _controller.play();
      },
      initial: () {
        // do nothing
      },
    );
  }

  // region PlayerEventListener
  void _videoControllerListener() {
    if (!mounted || _deactivate) return;

    final currentVideoValue = _controller.value;

    if (!_lastVideoValue.isInitialized && currentVideoValue.isInitialized) {
      _lastVideoValue = currentVideoValue;
      _onInitializedEvent(currentVideoValue.duration);
    } else if (!_lastVideoValue.isFinished && currentVideoValue.isFinished) {
      _lastVideoValue = currentVideoValue;
      _onFinish();
    } else if (!_lastVideoValue.hasError && currentVideoValue.hasError) {
      _lastVideoValue = currentVideoValue;
      _onException(currentVideoValue.errorDescription);
    } else if (_lastVideoValue.position != currentVideoValue.position) {
      _lastVideoValue = currentVideoValue;
      _onProgressEvent(
        progress: currentVideoValue.position,
        duration: currentVideoValue.duration,
      );
    } else if (_lastVideoValue.isPlaying != currentVideoValue.isPlaying) {
      _lastVideoValue = currentVideoValue;
      _onPlayPauseEvent(currentVideoValue.isPlaying);
    } else if (_lastVideoValue.isBuffering != currentVideoValue.isBuffering) {
      _lastVideoValue = currentVideoValue;
      _onBufferingChange(currentVideoValue.isBuffering);
    } else
      _lastVideoValue = currentVideoValue;
  }

  void _onInitializedEvent(Duration duration) {
    _getViewModelDetail(context).setAsVideoControllerInitialized(
      totalDuration: duration,
      fullScreen: widget.conf.fullScreen,
    );
    if (_controller.value.isInitialized) {
      final playSpeed = context.read(kPrvHivePrefRepository).playSpeed;
      _controller.setPlaybackSpeed(playSpeed);
    }
  }

  void _onProgressEvent({
    @required Duration progress,
    @required Duration duration,
  }) =>
      _getViewModelDetail(context).setVideoDurations(
        currentPos: progress,
        totalDuration: duration,
        fullScreen: widget.conf.fullScreen,
        applyCurrentPosUi: !_isSeekBarDragging(context),
      );

  // void _onSeekEvent(BetterPlayerEvent event) =>
  //     _getViewModelDetail(context).setCurrentPos(
  //       currentPos: event.duration,
  //       fullScreen: widget.conf.fullScreen,
  //       applyCurrentPosUi: !_isSeekBarDragging(context),
  //     );

  void _onPlayPauseEvent(bool play) =>
      _getViewModelDetail(context).setVideoIsPlaying(
        fullScreen: widget.conf.fullScreen,
        isPlaying: play,
      );

  void _onException(String exception) =>
      _getViewModelDetail(context).updateVideoPlayerState(
        fullScreen: widget.conf.fullScreen,
        videoPlayerState: VideoPlayerState.error(exception),
      );

  void _onFinish() => _getViewModelDetail(context).updateVideoPlayerState(
        fullScreen: widget.conf.fullScreen,
        videoPlayerState: const VideoPlayerState.finish(),
      );

  void _onBufferingChange(bool isBuffering) =>
      _getViewModelDetail(context).updateIsBuffering(
        fullScreen: widget.conf.fullScreen,
        isBuffering: isBuffering,
      );

  // endregion

  ViewModelDetail _getViewModelDetail(BuildContext context) =>
      context.read(kPrvViewModelDetail(widget.conf.id));

  PlayOutState _getPlayOutState(BuildContext context) =>
      context.read(kPrvViewModelDetail(widget.conf.id).state).playOutState;

  bool _isSeekBarDragging(BuildContext context) =>
      _getPlayOutState(context).isSeekBarDragging;
}

extension on VideoPlayerValue {
  /// duration and position may be zero if error occurred
  bool get isFinished => !isPlaying && Duration.zero < duration && duration <= position;
}
