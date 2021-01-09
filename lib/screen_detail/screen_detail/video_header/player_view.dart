import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/video.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/screen_detail/screen_detail/video_holder.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'player_view.g.dart';

@hwidget
Widget playerView({@required PlayOutState playOutState}) {
  final holder = useProvider(videoProvider);

  if (!holder.isEqualSource(playOutState))
    holder.widget = KeepAliveVideo(playOutState: playOutState);

  return holder.widget;
}

class KeepAliveVideo extends StatefulWidget {
  const KeepAliveVideo({
    Key key,
    @required this.playOutState,
  }) : super(key: key);

  final PlayOutState playOutState;

  @override
  _KeepAliveVideoState createState() => _KeepAliveVideoState();
}

class _KeepAliveVideoState extends State<KeepAliveVideo>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Video(
      isLiveStream: widget.playOutState.videoType == VideoType.LIVE,
      url: widget.playOutState.hlsMediaUrl,
      cookie: widget.playOutState.cookie,
      autoPlay: false,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
