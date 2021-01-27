import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:dartx/dartx.dart';

part 'list_comments_by_program.freezed.dart';

part 'list_comments_by_program.g.dart';

@freezed
abstract class ListCommentsByProgram with _$ListCommentsByProgram {
  const factory ListCommentsByProgram({
    @required Comments comments,
  }) = _ListCommentsByProgram;

  factory ListCommentsByProgram.fromJson(Map<String, dynamic> json) =>
      _$ListCommentsByProgramFromJson(json);
}

@freezed
abstract class Comments with _$Comments implements BaseModelCommentConnection {
  const factory Comments({
    @Deprecated('use [itemsSorted]') @required List<CommentItem> items,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "ModelCommentConnection"')
        String typename,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);

  const Comments._();

  List<CommentItem> get itemsSorted =>
      // ignore: deprecated_member_use_from_same_package
      items.sortedByDescending((it) => it.commentTimeDuration);
}

@freezed
abstract class CommentItem with _$CommentItem implements BaseComment {
  const factory CommentItem({
    @required String id,
    @required String text,
    @Deprecated('use [commentTime]') @required int commentTime,
    @required String userId,
    @required User user,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Comment"')
        String typename,
  }) = _CommentItem;

  factory CommentItem.fromJson(Map<String, dynamic> json) =>
      _$CommentItemFromJson(json);

  const CommentItem._();

  Duration get commentTimeDuration => commentTime.milliseconds;
}

@freezed
abstract class User with _$User implements BaseUser {
  const factory User({
    @required String id,
    @required String name,
    @required String icon,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "User"')
        String typename,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
