// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reviews _$_$_ReviewsFromJson(Map<String, dynamic> json) {
  return _$_Reviews(
    rawItems: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : ReviewsItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewsToJson(_$_Reviews instance) =>
    <String, dynamic>{
      'items': instance.rawItems,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_ReviewsItem _$_$_ReviewsItemFromJson(Map<String, dynamic> json) {
  return _$_ReviewsItem(
    id: json['id'] as String,
    body: json['body'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    user: json['user'] == null
        ? null
        : Reviewer.fromJson(json['user'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewsItemToJson(_$_ReviewsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
      '__typename': instance.typename,
    };

_$_Reviewer _$_$_ReviewerFromJson(Map<String, dynamic> json) {
  return _$_Reviewer(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewerToJson(_$_Reviewer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      '__typename': instance.typename,
    };

_$_MyReview _$_$_MyReviewFromJson(Map<String, dynamic> json) {
  return _$_MyReview(
    id: json['id'] as String,
    body: json['body'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    user: json['user'] == null
        ? null
        : Reviewer.fromJson(json['user'] as Map<String, dynamic>),
    rawState: json['state'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_MyReviewToJson(_$_MyReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
      'state': instance.rawState,
      '__typename': instance.typename,
    };
