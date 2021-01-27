// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_comments_by_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ListCommentsByProgram _$ListCommentsByProgramFromJson(
    Map<String, dynamic> json) {
  return _ListCommentsByProgram.fromJson(json);
}

/// @nodoc
class _$ListCommentsByProgramTearOff {
  const _$ListCommentsByProgramTearOff();

// ignore: unused_element
  _ListCommentsByProgram call({@required Comments comments}) {
    return _ListCommentsByProgram(
      comments: comments,
    );
  }

// ignore: unused_element
  ListCommentsByProgram fromJson(Map<String, Object> json) {
    return ListCommentsByProgram.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ListCommentsByProgram = _$ListCommentsByProgramTearOff();

/// @nodoc
mixin _$ListCommentsByProgram {
  Comments get comments;

  Map<String, dynamic> toJson();
  $ListCommentsByProgramCopyWith<ListCommentsByProgram> get copyWith;
}

/// @nodoc
abstract class $ListCommentsByProgramCopyWith<$Res> {
  factory $ListCommentsByProgramCopyWith(ListCommentsByProgram value,
          $Res Function(ListCommentsByProgram) then) =
      _$ListCommentsByProgramCopyWithImpl<$Res>;
  $Res call({Comments comments});

  $CommentsCopyWith<$Res> get comments;
}

/// @nodoc
class _$ListCommentsByProgramCopyWithImpl<$Res>
    implements $ListCommentsByProgramCopyWith<$Res> {
  _$ListCommentsByProgramCopyWithImpl(this._value, this._then);

  final ListCommentsByProgram _value;
  // ignore: unused_field
  final $Res Function(ListCommentsByProgram) _then;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed ? _value.comments : comments as Comments,
    ));
  }

  @override
  $CommentsCopyWith<$Res> get comments {
    if (_value.comments == null) {
      return null;
    }
    return $CommentsCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value));
    });
  }
}

/// @nodoc
abstract class _$ListCommentsByProgramCopyWith<$Res>
    implements $ListCommentsByProgramCopyWith<$Res> {
  factory _$ListCommentsByProgramCopyWith(_ListCommentsByProgram value,
          $Res Function(_ListCommentsByProgram) then) =
      __$ListCommentsByProgramCopyWithImpl<$Res>;
  @override
  $Res call({Comments comments});

  @override
  $CommentsCopyWith<$Res> get comments;
}

/// @nodoc
class __$ListCommentsByProgramCopyWithImpl<$Res>
    extends _$ListCommentsByProgramCopyWithImpl<$Res>
    implements _$ListCommentsByProgramCopyWith<$Res> {
  __$ListCommentsByProgramCopyWithImpl(_ListCommentsByProgram _value,
      $Res Function(_ListCommentsByProgram) _then)
      : super(_value, (v) => _then(v as _ListCommentsByProgram));

  @override
  _ListCommentsByProgram get _value => super._value as _ListCommentsByProgram;

  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_ListCommentsByProgram(
      comments: comments == freezed ? _value.comments : comments as Comments,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ListCommentsByProgram implements _ListCommentsByProgram {
  const _$_ListCommentsByProgram({@required this.comments})
      : assert(comments != null);

  factory _$_ListCommentsByProgram.fromJson(Map<String, dynamic> json) =>
      _$_$_ListCommentsByProgramFromJson(json);

  @override
  final Comments comments;

  @override
  String toString() {
    return 'ListCommentsByProgram(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListCommentsByProgram &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  _$ListCommentsByProgramCopyWith<_ListCommentsByProgram> get copyWith =>
      __$ListCommentsByProgramCopyWithImpl<_ListCommentsByProgram>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListCommentsByProgramToJson(this);
  }
}

abstract class _ListCommentsByProgram implements ListCommentsByProgram {
  const factory _ListCommentsByProgram({@required Comments comments}) =
      _$_ListCommentsByProgram;

  factory _ListCommentsByProgram.fromJson(Map<String, dynamic> json) =
      _$_ListCommentsByProgram.fromJson;

  @override
  Comments get comments;
  @override
  _$ListCommentsByProgramCopyWith<_ListCommentsByProgram> get copyWith;
}

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
class _$CommentsTearOff {
  const _$CommentsTearOff();

// ignore: unused_element
  _Comments call(
      {@required
      @Deprecated('use [itemsSorted]')
          List<CommentItem> items,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelCommentConnection"')
          String typename}) {
    return _Comments(
      items: items,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  Comments fromJson(Map<String, Object> json) {
    return Comments.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Comments = _$CommentsTearOff();

/// @nodoc
mixin _$Comments {
  @Deprecated('use [itemsSorted]')
  List<CommentItem> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelCommentConnection"')
  String get typename;

  Map<String, dynamic> toJson();
  $CommentsCopyWith<Comments> get copyWith;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res>;
  $Res call(
      {@Deprecated('use [itemsSorted]')
          List<CommentItem> items,
      String nextToken,
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelCommentConnection"')
          String typename});
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res> implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  final Comments _value;
  // ignore: unused_field
  final $Res Function(Comments) _then;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<CommentItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentsCopyWith<$Res> implements $CommentsCopyWith<$Res> {
  factory _$CommentsCopyWith(_Comments value, $Res Function(_Comments) then) =
      __$CommentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@Deprecated('use [itemsSorted]')
          List<CommentItem> items,
      String nextToken,
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelCommentConnection"')
          String typename});
}

/// @nodoc
class __$CommentsCopyWithImpl<$Res> extends _$CommentsCopyWithImpl<$Res>
    implements _$CommentsCopyWith<$Res> {
  __$CommentsCopyWithImpl(_Comments _value, $Res Function(_Comments) _then)
      : super(_value, (v) => _then(v as _Comments));

  @override
  _Comments get _value => super._value as _Comments;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Comments(
      items: items == freezed ? _value.items : items as List<CommentItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Comments extends _Comments {
  const _$_Comments(
      {@required
      @Deprecated('use [itemsSorted]')
          this.items,
      this.nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelCommentConnection"')
          this.typename})
      : assert(items != null),
        assert(typename != null),
        super._();

  factory _$_Comments.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentsFromJson(json);

  @override
  @Deprecated('use [itemsSorted]')
  final List<CommentItem> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelCommentConnection"')
  final String typename;

  @override
  String toString() {
    return 'Comments(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comments &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$CommentsCopyWith<_Comments> get copyWith =>
      __$CommentsCopyWithImpl<_Comments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentsToJson(this);
  }
}

abstract class _Comments extends Comments {
  const _Comments._() : super._();
  const factory _Comments(
      {@required
      @Deprecated('use [itemsSorted]')
          List<CommentItem> items,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelCommentConnection"')
          String typename}) = _$_Comments;

  factory _Comments.fromJson(Map<String, dynamic> json) = _$_Comments.fromJson;

  @override
  @Deprecated('use [itemsSorted]')
  List<CommentItem> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelCommentConnection"')
  String get typename;
  @override
  _$CommentsCopyWith<_Comments> get copyWith;
}

CommentItem _$CommentItemFromJson(Map<String, dynamic> json) {
  return _CommentItem.fromJson(json);
}

/// @nodoc
class _$CommentItemTearOff {
  const _$CommentItemTearOff();

// ignore: unused_element
  _CommentItem call(
      {@required
          String id,
      @required
          String text,
      @required
      @Deprecated('use [commentTime]')
          int commentTime,
      @required
          String userId,
      @required
          User user,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Comment"')
          String typename}) {
    return _CommentItem(
      id: id,
      text: text,
      commentTime: commentTime,
      userId: userId,
      user: user,
      typename: typename,
    );
  }

// ignore: unused_element
  CommentItem fromJson(Map<String, Object> json) {
    return CommentItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentItem = _$CommentItemTearOff();

/// @nodoc
mixin _$CommentItem {
  String get id;
  String get text;
  @Deprecated('use [commentTime]')
  int get commentTime;
  String get userId;
  User get user;
  @JsonKey(name: '__typename')
  @Assert('typename == "Comment"')
  String get typename;

  Map<String, dynamic> toJson();
  $CommentItemCopyWith<CommentItem> get copyWith;
}

/// @nodoc
abstract class $CommentItemCopyWith<$Res> {
  factory $CommentItemCopyWith(
          CommentItem value, $Res Function(CommentItem) then) =
      _$CommentItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      @Deprecated('use [commentTime]')
          int commentTime,
      String userId,
      User user,
      @JsonKey(name: '__typename')
      @Assert('typename == "Comment"')
          String typename});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentItemCopyWithImpl<$Res> implements $CommentItemCopyWith<$Res> {
  _$CommentItemCopyWithImpl(this._value, this._then);

  final CommentItem _value;
  // ignore: unused_field
  final $Res Function(CommentItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object commentTime = freezed,
    Object userId = freezed,
    Object user = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      commentTime:
          commentTime == freezed ? _value.commentTime : commentTime as int,
      userId: userId == freezed ? _value.userId : userId as String,
      user: user == freezed ? _value.user : user as User,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$CommentItemCopyWith<$Res>
    implements $CommentItemCopyWith<$Res> {
  factory _$CommentItemCopyWith(
          _CommentItem value, $Res Function(_CommentItem) then) =
      __$CommentItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      @Deprecated('use [commentTime]')
          int commentTime,
      String userId,
      User user,
      @JsonKey(name: '__typename')
      @Assert('typename == "Comment"')
          String typename});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$CommentItemCopyWithImpl<$Res> extends _$CommentItemCopyWithImpl<$Res>
    implements _$CommentItemCopyWith<$Res> {
  __$CommentItemCopyWithImpl(
      _CommentItem _value, $Res Function(_CommentItem) _then)
      : super(_value, (v) => _then(v as _CommentItem));

  @override
  _CommentItem get _value => super._value as _CommentItem;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
    Object commentTime = freezed,
    Object userId = freezed,
    Object user = freezed,
    Object typename = freezed,
  }) {
    return _then(_CommentItem(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
      commentTime:
          commentTime == freezed ? _value.commentTime : commentTime as int,
      userId: userId == freezed ? _value.userId : userId as String,
      user: user == freezed ? _value.user : user as User,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentItem extends _CommentItem {
  const _$_CommentItem(
      {@required
          this.id,
      @required
          this.text,
      @required
      @Deprecated('use [commentTime]')
          this.commentTime,
      @required
          this.userId,
      @required
          this.user,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Comment"')
          this.typename})
      : assert(id != null),
        assert(text != null),
        assert(commentTime != null),
        assert(userId != null),
        assert(user != null),
        assert(typename != null),
        super._();

  factory _$_CommentItem.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentItemFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  @Deprecated('use [commentTime]')
  final int commentTime;
  @override
  final String userId;
  @override
  final User user;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "Comment"')
  final String typename;

  @override
  String toString() {
    return 'CommentItem(id: $id, text: $text, commentTime: $commentTime, userId: $userId, user: $user, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.commentTime, commentTime) ||
                const DeepCollectionEquality()
                    .equals(other.commentTime, commentTime)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(commentTime) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$CommentItemCopyWith<_CommentItem> get copyWith =>
      __$CommentItemCopyWithImpl<_CommentItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentItemToJson(this);
  }
}

abstract class _CommentItem extends CommentItem {
  const _CommentItem._() : super._();
  const factory _CommentItem(
      {@required
          String id,
      @required
          String text,
      @required
      @Deprecated('use [commentTime]')
          int commentTime,
      @required
          String userId,
      @required
          User user,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Comment"')
          String typename}) = _$_CommentItem;

  factory _CommentItem.fromJson(Map<String, dynamic> json) =
      _$_CommentItem.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  @Deprecated('use [commentTime]')
  int get commentTime;
  @override
  String get userId;
  @override
  User get user;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "Comment"')
  String get typename;
  @override
  _$CommentItemCopyWith<_CommentItem> get copyWith;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required
          String id,
      @required
          String name,
      @required
          String icon,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) {
    return _User(
      id: id,
      name: name,
      icon: icon,
      typename: typename,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;
  String get name;
  String get icon;
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String icon,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String icon,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required
          this.id,
      @required
          this.name,
      @required
          this.icon,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          this.typename})
      : assert(id != null),
        assert(name != null),
        assert(icon != null),
        assert(typename != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  final String typename;

  @override
  String toString() {
    return 'User(id: $id, name: $name, icon: $icon, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required
          String id,
      @required
          String name,
      @required
          String icon,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;
  @override
  _$UserCopyWith<_User> get copyWith;
}
