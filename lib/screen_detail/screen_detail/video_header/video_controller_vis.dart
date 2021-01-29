import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'video_controller_vis.g.dart';

@hwidget
Widget videoControllerVis({
  @required VideoViewModelConf conf,
  @required Widget child,
}) => Visibility(
      visible: useProvider(kPrvVideoControllerReady(conf.id)),
      child: child,
    );