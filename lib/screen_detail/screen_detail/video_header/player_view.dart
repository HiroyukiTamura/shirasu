import 'package:after_layout/after_layout.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:shirasu/extension.dart';

import '../screen_detail.dart';

// part 'player_view.g.dart';

final _kPrvVideoCommand = Provider.autoDispose
    .family<LastControllerCommand, String>((ref, id) => ref
        .watch(detailSNProvider(id).state)
        .playOutState
        .lastControllerCommand);

class PlayerView extends StatefulHookWidget {
  const PlayerView({Key key, this.conf}) : super(key: key);

  final VideoViewModelConf conf;

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> with AfterLayoutMixin<PlayerView> {
  BetterPlayerController _controller;
  BetterPlayerDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    final playOutSource = _getPlayOutState(context);
    _controller = _createController(playOutSource, widget.conf.id)
      ..addEventsListener(_playerEventListener);
    _dataSource = _createDataSource(playOutSource);
  }

  // @override
  // void didUpdateWidget(covariant PlayerView oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   // _controller = _createController(_playOutState, widget.conf.id);
  //   _viewModel.ensureController(_controller);
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Colors.black,
        child: Stack(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: Dimens.IMG_RATIO,
                child: ProviderListener(
                  provider: _kPrvVideoCommand(widget.conf.id),
                  onChange: _onPlayerCommanded,
                  child: BetterPlayer(
                    controller: _controller,
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

  @override
  void afterFirstLayout(BuildContext context) => _controller.setupDataSource(_dataSource);

  void _onPlayerCommanded(BuildContext context, LastControllerCommand command) {
    command.when(
      play: () async {
        if (_controller.videoPlayerController.value.initialized)
          await _controller.play();
      },
      pause: () async {
        if (_controller.videoPlayerController.value.initialized)
          await _controller.pause();
      },
      seek: (diff) async {
        if (!_controller.videoPlayerController.value.initialized) return;

        final position = await _controller.videoPlayerController.position;
        if (position == null)
          return;
        Duration seekTo = position + diff;
        _controller.seekTo(seekTo);
      },
      seekTo: (position) {
        if (!_controller.videoPlayerController.value.initialized) return;

        final duration = _controller.videoPlayerController.value.duration;
        if (duration != null) _controller.seekTo(position);
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

    _getViewModelDetail(context).setAsVideoControllerInitialized(
      totalDuration: _controller.videoPlayerController.value.duration,
      fullScreen: widget.conf.fullScreen,
    );
  }

  void _onProgressEvent(BetterPlayerEvent event) {
    // final isSeekBarDragging = context.read(pVideoViewModel(widget.conf).state).isSeekBarDragging;
    // if (!isSeekBarDragging) {
    //   state = state.copyWith(currentPos: event.progress);
    //   _viewModelDetail.setVideoDurations(
    //     currentPos: event.progress,
    //     totalDuration: event.duration,
    //     fullScreen: widget.conf.fullScreen,
    //   );
    // }

    _getViewModelDetail(context).setVideoDurations(
      currentPos: event.progress,
      totalDuration: event.duration,
      fullScreen: widget.conf.fullScreen,
    );
  }

  void _onSeekEvent(BetterPlayerEvent event) {
    _getViewModelDetail(context).setCurrentPos(
      currentPos: event.duration,
      fullScreen: widget.conf.fullScreen,
    );
    // state = state.copyWith(currentPos: event.duration);
  }

  void _onPlayPauseEvent(bool play) =>
      _getViewModelDetail(context).setVideoIsPlaying(
        fullScreen: widget.conf.fullScreen,
        isPlaying: play,
      );

  // endregion

  static BetterPlayerController _createController(
      PlayOutState playOutState, String id) {
    assert(
        playOutState.commandedState == const PlayerCommandedState.postPlay());

    return BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: playOutState.isPlaying,
        handleLifecycle: false,
        //todo why not true??
        fit: BoxFit.contain,
        errorBuilder: (context, errorMessage) {
          //todo implement
          return Container();
        },
        startAt: playOutState.currentPos,
        controlsConfiguration: const BetterPlayerControlsConfiguration(
          showControls: false,
        ),
        //todo ugly access
        aspectRatio: Dimens.IMG_RATIO,
        fullScreenAspectRatio: Dimens.IMG_RATIO,
      ),
    );
  }

  static BetterPlayerDataSource _createDataSource(PlayOutState playOutState) => BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      playOutState.hlsMediaUrl,
      liveStream: playOutState.videoType == VideoType.LIVE,
      headers: {
        'Cookie': playOutState.cookie,
      },
    );

  VideoViewModel _getViewModel(BuildContext context) =>
      context.read(pVideoViewModel(widget.conf));

  ViewModelDetail _getViewModelDetail(BuildContext context) =>
      context.read(detailSNProvider(widget.conf.id));

  PlayOutState _getPlayOutState(BuildContext context) =>
      context.read(detailSNProvider(widget.conf.id).state).playOutState;
}
