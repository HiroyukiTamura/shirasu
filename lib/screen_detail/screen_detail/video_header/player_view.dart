import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/di/native_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

// part 'player_view.g.dart';

class PlayerView extends StatefulHookWidget {
  const PlayerView({
    Key key,
    @required this.programId,
    @required this.prgTitle,
    @required this.channelTitle,
  }) : super(key: key);

  final String programId;
  final String prgTitle;
  final String channelTitle;

  @override
  _PlayerViewState createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> with WidgetsBindingObserver {
  bool get isPlaying =>
      context.read(pVideoViewModel(widget.programId).state).isPlaying;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
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
  Widget build(BuildContext context) => Stack(
        children: [
          const ColoredBox(
            color: Colors.black,
          ),
          BetterPlayer(
            controller:
                useProvider(pVideoViewModel(widget.programId)).controller,
          ),
        ],
      );

  Future<void> _stopPlayBackground() async {
    if (!isPlaying) return;

    await NativeClient.stopBackGround();
    await context
        .read(pVideoViewModel(widget.programId))
        .playProgrammatically();
  }

  Future<void> _startPlayBackground() async {
    if (!isPlaying) return;

    await context
        .read(pVideoViewModel(widget.programId))
        .pauseProgrammatically();
    final playOutState =
        context.read(pVideoViewModel(widget.programId)).playOutState;
    await NativeClient.startPlayBackGround(
      url: playOutState.hlsMediaUrl,
      isLiveStream: playOutState.videoType == VideoType.LIVE,
      position: context
          .read(pVideoViewModel(widget.programId).state)
          .currentPosSafe
          .inMilliseconds,
      iconUrl: UrlUtil.getThumbnailUrl(widget.programId),
      cookie: playOutState.cookie,
      title: widget.prgTitle,
      subtitle: widget.channelTitle,
    );
  }
}
