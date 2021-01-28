import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';

part 'posted_comment.freezed.dart';

part 'posted_comment.g.dart';

@freezed
abstract class PostedComment with _$PostedComment {

  const factory PostedComment({
    @required CommentItem comment,
  }) = _PostedComment;

  factory PostedComment.fromJson(Map<String, dynamic> json) =>
      _$PostedCommentFromJson(json);
}