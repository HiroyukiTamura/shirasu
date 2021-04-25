import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/model/graphql/mixins/review_state.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
abstract class ReviewData with _$ReviewData {
  const factory ReviewData({
    @required ReviewsItem review,
  }) = _ReviewData;

  factory ReviewData.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataFromJson(json);
}

@freezed
abstract class Reviews with _$Reviews implements BaseReviewConnection {
  @Assert('typename == "ReviewConnection"')
  const factory Reviews({
    @protected @required @JsonKey(name: 'items') List<ReviewsItem> rawItems,
    String nextToken,
    // ignore: always_put_required_named_parameters_first
    @required @JsonKey(name: '__typename') String typename,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);

  const Reviews._();

  UnmodifiableListView<ReviewsItem> get items =>
      rawItems.toUnmodifiable();
}

@freezed
abstract class ReviewsItem with _$ReviewsItem implements BaseReview {
  @Assert('typename == "Review"')
  const factory ReviewsItem({
    @required String id,
    @required String body,
    @required DateTime createdAt,
    @required Reviewer user,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ReviewsItem;

  factory ReviewsItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewsItemFromJson(json);
}

@freezed
abstract class Reviewer with _$Reviewer implements BaseUser {
  @Assert('typename == "User"')
  const factory Reviewer({
    @required String id,
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Reviewer;

  factory Reviewer.fromJson(Map<String, dynamic> json) =>
      _$ReviewerFromJson(json);
}

@freezed
abstract class MyReview
    with _$MyReview, ReviewStateMixin
    implements BaseReview {
  const factory MyReview({
    @required String id,
    @required String body,
    @required DateTime createdAt,
    @required Reviewer user,
    @required @JsonKey(name: 'state') @protected String rawState,
    @required @JsonKey(name: '__typename') String typename,
  }) = _MyReview;

  factory MyReview.fromJson(Map<String, dynamic> json) =>
      _$MyReviewFromJson(json);

  const MyReview._();
}