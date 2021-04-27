import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_review_data.freezed.dart';

part 'remove_review_data.g.dart';

@freezed
abstract class RemoveReviewData with _$RemoveReviewData {
  const factory RemoveReviewData({
    /// ex. genron-genron-20201027:google-oauth2|109431228853603579684
    @required String removeReview,
  }) = _RemoveReviewData;

  factory RemoveReviewData.fromJson(Map<String, dynamic> json) =>
      _$RemoveReviewDataFromJson(json);
}