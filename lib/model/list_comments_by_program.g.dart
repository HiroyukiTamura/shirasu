// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comments_by_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCommentsByProgram _$_$_ListCommentsByProgramFromJson(
    Map<String, dynamic> json) {
  return _$_ListCommentsByProgram(
    comments: json['comments'] == null
        ? null
        : Comments.fromJson(json['comments'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ListCommentsByProgramToJson(
        _$_ListCommentsByProgram instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

_$_Comments _$_$_CommentsFromJson(Map<String, dynamic> json) {
  return _$_Comments(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : CommentItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_CommentsToJson(_$_Comments instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_CommentItem _$_$_CommentItemFromJson(Map<String, dynamic> json) {
  return _$_CommentItem(
    id: json['id'] as String,
    text: json['text'] as String,
    commentTime: json['commentTime'] as int,
    userId: json['userId'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_CommentItemToJson(_$_CommentItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'commentTime': instance.commentTime,
      'userId': instance.userId,
      'user': instance.user,
      '__typename': instance.typename,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      '__typename': instance.typename,
    };
