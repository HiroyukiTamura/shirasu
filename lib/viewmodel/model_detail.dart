import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail implements _$ModelDetail {
  const factory ModelDetail(
      DetailModelState prgDataResult, PlayOutState playOutState) = _ModelDetail;

  const ModelDetail._();

  factory ModelDetail.initial() => ModelDetail(
      const DetailModelState.preInitialized(), PlayOutState.initial());

  ModelDetail copyAsInitialize(String urlAvailable, VideoType videoType) =>
      copyWith(
        playOutState: PlayOutState.initialize(urlAvailable, videoType),
      );

  ModelDetail copyAsPlay(String urlAvailable, VideoType videoType, String cookie) =>
      copyWith(
        playOutState: PlayOutState.play(urlAvailable, videoType, cookie),
      );
}
