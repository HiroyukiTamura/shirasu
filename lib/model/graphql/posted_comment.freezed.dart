// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posted_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostedComment _$PostedCommentFromJson(Map<String, dynamic> json) {
  return _PostedComment.fromJson(json);
}

/// @nodoc
class _$PostedCommentTearOff {
  const _$PostedCommentTearOff();

// ignore: unused_element
  _PostedComment call({@required CommentItem comment}) {
    return _PostedComment(
      comment: comment,
    );
  }

// ignore: unused_element
  PostedComment fromJson(Map<String, Object> json) {
    return PostedComment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostedComment = _$PostedCommentTearOff();

/// @nodoc
mixin _$PostedComment {
  CommentItem get comment;

  Map<String, dynamic> toJson();
  $PostedCommentCopyWith<PostedComment> get copyWith;
}

/// @nodoc
abstract class $PostedCommentCopyWith<$Res> {
  factory $PostedCommentCopyWith(
          PostedComment value, $Res Function(PostedComment) then) =
      _$PostedCommentCopyWithImpl<$Res>;
  $Res call({CommentItem comment});

  $CommentItemCopyWith<$Res> get comment;
}

/// @nodoc
class _$PostedCommentCopyWithImpl<$Res>
    implements $PostedCommentCopyWith<$Res> {
  _$PostedCommentCopyWithImpl(this._value, this._then);

  final PostedComment _value;
  // ignore: unused_field
  final $Res Function(PostedComment) _then;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as CommentItem,
    ));
  }

  @override
  $CommentItemCopyWith<$Res> get comment {
    if (_value.comment == null) {
      return null;
    }
    return $CommentItemCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$PostedCommentCopyWith<$Res>
    implements $PostedCommentCopyWith<$Res> {
  factory _$PostedCommentCopyWith(
          _PostedComment value, $Res Function(_PostedComment) then) =
      __$PostedCommentCopyWithImpl<$Res>;
  @override
  $Res call({CommentItem comment});

  @override
  $CommentItemCopyWith<$Res> get comment;
}

/// @nodoc
class __$PostedCommentCopyWithImpl<$Res>
    extends _$PostedCommentCopyWithImpl<$Res>
    implements _$PostedCommentCopyWith<$Res> {
  __$PostedCommentCopyWithImpl(
      _PostedComment _value, $Res Function(_PostedComment) _then)
      : super(_value, (v) => _then(v as _PostedComment));

  @override
  _PostedComment get _value => super._value as _PostedComment;

  @override
  $Res call({
    Object comment = freezed,
  }) {
    return _then(_PostedComment(
      comment: comment == freezed ? _value.comment : comment as CommentItem,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostedComment implements _PostedComment {
  const _$_PostedComment({@required this.comment}) : assert(comment != null);

  factory _$_PostedComment.fromJson(Map<String, dynamic> json) =>
      _$_$_PostedCommentFromJson(json);

  @override
  final CommentItem comment;

  @override
  String toString() {
    return 'PostedComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostedComment &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @override
  _$PostedCommentCopyWith<_PostedComment> get copyWith =>
      __$PostedCommentCopyWithImpl<_PostedComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostedCommentToJson(this);
  }
}

abstract class _PostedComment implements PostedComment {
  const factory _PostedComment({@required CommentItem comment}) =
      _$_PostedComment;

  factory _PostedComment.fromJson(Map<String, dynamic> json) =
      _$_PostedComment.fromJson;

  @override
  CommentItem get comment;
  @override
  _$PostedCommentCopyWith<_PostedComment> get copyWith;
}
