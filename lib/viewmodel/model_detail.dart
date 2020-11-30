import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';

part 'model_detail.freezed.dart';

@freezed
abstract class ModelDetail with _$ModelDetail {

  const factory ModelDetail(DetailModelState prgDataResult, PlayOutState playOutState) = _ModelDetail;

  factory ModelDetail.initial() => ModelDetail(const DetailModelState.preInitialized(), PlayOutState.initial());
}