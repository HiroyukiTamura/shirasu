import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

import 'model/model_detail.dart';

class VideoViewModelConf {
  VideoViewModelConf(this.id, this.fullScreen);

  final String id;
  final bool fullScreen;
}