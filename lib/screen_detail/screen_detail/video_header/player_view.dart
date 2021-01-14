import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'player_view.g.dart';

@hwidget
Widget playerView({
  @required String programId,
}) =>
    BetterPlayer(
      controller: useProvider(pVideoViewModel(programId)).controller,
    );
