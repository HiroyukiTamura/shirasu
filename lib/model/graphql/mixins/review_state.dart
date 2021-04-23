import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_state.freezed.dart';

mixin ReviewStateMixin {
  @protected
  String get rawState;
  
  ReviewState get state => ReviewState._parse(rawState);
}

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState.inReview() = _InReview;

  const factory ReviewState.open() = _Open;

  const factory ReviewState.ng() = _Ng;

  factory ReviewState._parse(String reviewState) {
    switch (reviewState) {
      case 'inReview':
        return const ReviewState.inReview();
      case 'open':
        return const ReviewState.open();
      case 'ng':
        return const ReviewState.ng();
      default:
        throw ArgumentError.value(reviewState);
    }
  }
}
