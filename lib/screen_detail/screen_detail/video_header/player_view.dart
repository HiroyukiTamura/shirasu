import 'package:after_layout/after_layout.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/env_repository.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';

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
  BetterPlayerController _controller;
  BetterPlayerDataSource _dataSource;
  bool _deactivate = false;

  @override
  void initState() {
    super.initState();
    final playOutSource = _getPlayOutState(context);
    _controller = _createController(playOutSource, widget.conf.id)
      ..addEventsListener(_playerEventListener);
    _dataSource = _createDataSource(playOutSource);
  }

  @override
  void dispose() {
    _controller.videoPlayerController
        .removeListener(_rawVideoPlayerListener); //must invoke
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
                    child: BetterPlayer(
                      controller: _controller,
                    ),
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
    _controller.setupDataSource(_dataSource).then((value) {
      if (mounted && !_deactivate)
        _controller.videoPlayerController.addListener(_rawVideoPlayerListener);
    });
  }

  void _onHiveUpdate(BuildContext context, AsyncValue<double> value) =>
      value.whenData(
        (playSpeed) async {
          if (_controller.videoPlayerController.value.initialized)
            await _controller.setSpeed(playSpeed);
        },
      );

  void _onPlayerCommanded(
      BuildContext context, LastControllerCommandHolder holder) {
    holder.command.when(
      play: (position) async {
        if (_controller.videoPlayerController.value.initialized) {
          if (position != null) await _controller.seekTo(position);
          await _controller.play();
        }
      },
      pause: () async {
        if (_controller.videoPlayerController.value.initialized)
          await _controller.pause();
      },
      seek: (diff) async {
        if (!_controller.videoPlayerController.value.initialized) return;

        var position = await _controller.videoPlayerController.position;
        if (position == null || !mounted || _deactivate) return;
        position += diff;
        await _controller.seekTo(position);
      },
      seekTo: (position) async {
        if (!_controller.videoPlayerController.value.initialized) return;

        final duration = _controller.videoPlayerController.value.duration;
        if (duration != null) await _controller.seekTo(position);
      },
      playOrPause: () async {
        if (_controller.videoPlayerController.value.initialized)
          _controller.isPlaying()
              ? await _controller.pause()
              : await _controller.play();
      },
      initial: () {
        // do nothing
      },
    );
  }

  // region PlayerEventListener
  void _playerEventListener(BetterPlayerEvent event) {
    if (!mounted || _deactivate) return;

    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.initialized:
        _onInitializedEvent();
        break;
      case BetterPlayerEventType.finished:
        _onFinish();
        break;
      case BetterPlayerEventType.exception:
        _onException(event.exception);
        break;
      case BetterPlayerEventType.progress:
        _onProgressEvent(event);
        break;
      case BetterPlayerEventType.seekTo:
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
    _getViewModelDetail(context).setAsVideoControllerInitialized(
      totalDuration: _controller.videoPlayerController.value.duration,
      fullScreen: widget.conf.fullScreen,
    );
    if (_controller.videoPlayerController.value.initialized) {
      final playSpeed = context.read(kPrvHivePrefRepository).playSpeed;
      _controller.setSpeed(playSpeed);
    }
  }

  void _onProgressEvent(BetterPlayerEvent event) =>
      _getViewModelDetail(context).setVideoDurations(
        currentPos: event.progress,
        totalDuration: event.duration,
        fullScreen: widget.conf.fullScreen,
        applyCurrentPosUi: !_isSeekBarDragging(context),
      );

  void _onSeekEvent(BetterPlayerEvent event) =>
      _getViewModelDetail(context).setCurrentPos(
        currentPos: event.duration,
        fullScreen: widget.conf.fullScreen,
        applyCurrentPosUi: !_isSeekBarDragging(context),
      );

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

  // endregion

  void _rawVideoPlayerListener() {
    if (mounted && !_deactivate)
      _getViewModelDetail(context).updateIsBuffering(
        fullScreen: widget.conf.fullScreen,
        isBuffering: _controller.isBuffering(),
      );
  }

  static BetterPlayerController _createController(
      PlayOutState playOutState, String id) {
    assert(
        playOutState.commandedState == const PlayerCommandedState.postPlay());

    return BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: playOutState.isPlaying,
        handleLifecycle: false,
        fit: BoxFit.contain,
        startAt: playOutState.currentPosSafe,
        controlsConfiguration: const BetterPlayerControlsConfiguration(
          showControls: false,
        ),
        aspectRatio: Dimens.IMG_RATIO,
        fullScreenAspectRatio: Dimens.IMG_RATIO,
      ),
    );
  }

  static BetterPlayerDataSource _createDataSource(PlayOutState playOutState) =>
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        playOutState.hlsMediaUrl,
        liveStream: playOutState.videoType == const VideoType.live(),
        headers: {
          'Cookie': playOutState.cookie,
        },
      );

  ViewModelDetail _getViewModelDetail(BuildContext context) =>
      context.read(kPrvViewModelDetail(widget.conf.id));

  PlayOutState _getPlayOutState(BuildContext context) =>
      context.read(kPrvViewModelDetail(widget.conf.id).state).playOutState;

  bool _isSeekBarDragging(BuildContext context) =>
      _getPlayOutState(context).isSeekBarDragging;
}
