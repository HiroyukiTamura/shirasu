import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_comments_by_program.freezed.dart';
part 'list_comments_by_program.g.dart';

@freezed
abstract class ListCommentsByProgram with _$ListCommentsByProgram {
  factory ListCommentsByProgram({
    @required Comments comments,
  }) = _ListCommentsByProgram;

  factory ListCommentsByProgram.fromJson(Map<String, dynamic> json) =>
      _$ListCommentsByProgramFromJson(json);
}

@freezed
abstract class Comments with _$Comments {
  factory Comments({
    @required List<CommentItem> items,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}

@freezed
abstract class CommentItem with _$CommentItem {
  factory CommentItem({
    @required String id,
    @required String text,
    @required int commentTime,
    @required String userId,
    @required User user,
    @required @JsonKey(name: '__typename') String typename,
  }) = _CommentItem;

  factory CommentItem.fromJson(Map<String, dynamic> json) =>
      _$CommentItemFromJson(json);
}

@freezed
abstract class User with _$User {
  factory User({
    @required String id,
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
