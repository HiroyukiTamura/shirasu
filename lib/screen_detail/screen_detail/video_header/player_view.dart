import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/video.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/screen_detail/screen_detail/video_player.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'player_view.g.dart';

@hwidget
Widget playerView({@required PlayOutState playOutState}) =>
    NativeViewHolder.instance
        .apply(
          url: playOutState.hlsMediaUrl,
          cookie: playOutState.cookie,
          isLiveStream: playOutState.videoType == VideoType.LIVE,
        )
        .widget;

// class KeepAliveVideo extends StatefulWidget {
//   KeepAliveVideo({
//     Key key,
//     @required this.playOutState,
//   })  : video = Video(
//           isLiveStream: playOutState.videoType == VideoType.LIVE,
//           url: playOutState.hlsMediaUrl,
//           cookie: playOutState.cookie,
//           showControls: false,
//           autoPlay: false,
//         ),
//         super(key: key);
//
//   final PlayOutState playOutState;
//   final Video video;
//
//   @override
//   _KeepAliveVideoState createState() => _KeepAliveVideoState();
// }
//
// class _KeepAliveVideoState extends State<KeepAliveVideo>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return widget.video;
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }
