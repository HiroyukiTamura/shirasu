import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'model_edit_review.freezed.dart';

@freezed
abstract class ModelEditReview with _$ModelEditReview {
  const factory ModelEditReview({
    String text,
  }) = _ModelEditReview;

  const ModelEditReview._();

  static const TEXT_LEN_MIN = 30;
  static const TEXT_LEN_MAX = 4000;

  bool get isValidLength => (text?.length ?? 0).between(TEXT_LEN_MIN, TEXT_LEN_MAX);
}
