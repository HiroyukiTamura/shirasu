import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'player_view.g.dart';

@hwidget
Widget playerView({@required PlayOutState playOutState}) =>
    BetterPlayer.network(
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      betterPlayerConfiguration: BetterPlayerConfiguration(
        autoPlay: true,
      ),
    );
