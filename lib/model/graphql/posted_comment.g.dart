// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posted_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostedComment _$_$_PostedCommentFromJson(Map<String, dynamic> json) {
  return _$_PostedComment(
    comment: json['comment'] == null
        ? null
        : CommentItem.fromJson(json['comment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PostedCommentToJson(_$_PostedComment instance) =>
    <String, dynamic>{
      'comment': instance.comment,
    };
