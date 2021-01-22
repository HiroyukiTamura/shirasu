import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

import '../screen_detail.dart';

// part 'player_view.g.dart';

class PlayerView extends StatefulHookWidget {
  const PlayerView({
    Key key,
    @required this.conf,
  }) : super(key: key);

  final VideoViewModelConf conf;

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> with WidgetsBindingObserver {
  bool get isPlaying =>
      context.read(detailSNProvider(widget.conf.id).state).playOutState.isPlaying;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final playOutState =
        context.read(detailSNProvider(widget.conf.id).state).playOutState;
    context.read(pVideoViewModel(widget.conf)).controller =
        _createController(playOutState, widget.conf.id);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.dependOnInheritedWidgetOfExactType();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _stopPlayBackground();
        break;
      case AppLifecycleState.inactive:
        _startPlayBackground(); //todo is it good??
        break;
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        break;
    }
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Colors.black,
        child: Stack(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: Dimens.IMG_RATIO,
                child: BetterPlayer(
                  controller:
                      useProvider(pVideoViewModel(widget.conf)).controller,
                ),
              ),
            ),
            PlayerControllerView(
              conf: widget.conf,
            ),
          ],
        ),
      );

  Future<void> _stopPlayBackground() async {
    // if (!isPlaying) return;
    //
    // await NativeClient.stopBackGround();
    // await context.read(pVideoViewModel(widget.config)).playProgrammatically();
  }

  Future<void> _startPlayBackground() async {
    // if (!isPlaying) return;
    //
    // await context.read(pVideoViewModel(widget.config)).pauseProgrammatically();
    //
    // final prgDataResult =
    //     context.read(detailSNProvider(widget.config.id).state).prgDataResult;
    // if (prgDataResult is StateSuccess) {
    //   final playOutState =
    //       context.read(pVideoViewModel(widget.config)).playOutState;
    //   await NativeClient.startPlayBackGround(
    //     url: playOutState.hlsMediaUrl,
    //     isLiveStream: playOutState.videoType == VideoType.LIVE,
    //     position: context
    //         .read(pVideoViewModel(widget.config).state)
    //         .currentPosSafe
    //         .inMilliseconds,
    //     iconUrl: UrlUtil.getThumbnailUrl(widget.config.id),
    //     cookie: playOutState.cookie,
    //     title: prgDataResult.programDetailData.program.title,
    //     subtitle: prgDataResult.channelData.channel.name,
    //   );
    // }
  }

  static BetterPlayerController _createController(
      PlayOutState playOutState, String id) {
    assert(playOutState.commandedState == PlayerCommandedState.postPlay());

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
      betterPlayerDataSource: dataSource,
    );
  }
}
