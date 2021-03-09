// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_subscribed_programs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ListSubscribedPrograms _$ListSubscribedProgramsFromJson(
    Map<String, dynamic> json) {
  return _ListSubscribedPrograms.fromJson(json);
}

/// @nodoc
class _$ListSubscribedProgramsTearOff {
  const _$ListSubscribedProgramsTearOff();

// ignore: unused_element
  _ListSubscribedPrograms call({@required ViewerUser viewerUser}) {
    return _ListSubscribedPrograms(
      viewerUser: viewerUser,
    );
  }

// ignore: unused_element
  ListSubscribedPrograms fromJson(Map<String, Object> json) {
    return ListSubscribedPrograms.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ListSubscribedPrograms = _$ListSubscribedProgramsTearOff();

/// @nodoc
mixin _$ListSubscribedPrograms {
  ViewerUser get viewerUser;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ListSubscribedProgramsCopyWith<ListSubscribedPrograms> get copyWith;
}

/// @nodoc
abstract class $ListSubscribedProgramsCopyWith<$Res> {
  factory $ListSubscribedProgramsCopyWith(ListSubscribedPrograms value,
          $Res Function(ListSubscribedPrograms) then) =
      _$ListSubscribedProgramsCopyWithImpl<$Res>;
  $Res call({ViewerUser viewerUser});

  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class _$ListSubscribedProgramsCopyWithImpl<$Res>
    implements $ListSubscribedProgramsCopyWith<$Res> {
  _$ListSubscribedProgramsCopyWithImpl(this._value, this._then);

  final ListSubscribedPrograms _value;
  // ignore: unused_field
  final $Res Function(ListSubscribedPrograms) _then;

  @override
  $Res call({
    Object viewerUser = freezed,
  }) {
    return _then(_value.copyWith(
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }

  @override
  $ViewerUserCopyWith<$Res> get viewerUser {
    if (_value.viewerUser == null) {
      return null;
    }
    return $ViewerUserCopyWith<$Res>(_value.viewerUser, (value) {
      return _then(_value.copyWith(viewerUser: value));
    });
  }
}

/// @nodoc
abstract class _$ListSubscribedProgramsCopyWith<$Res>
    implements $ListSubscribedProgramsCopyWith<$Res> {
  factory _$ListSubscribedProgramsCopyWith(_ListSubscribedPrograms value,
          $Res Function(_ListSubscribedPrograms) then) =
      __$ListSubscribedProgramsCopyWithImpl<$Res>;
  @override
  $Res call({ViewerUser viewerUser});

  @override
  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class __$ListSubscribedProgramsCopyWithImpl<$Res>
    extends _$ListSubscribedProgramsCopyWithImpl<$Res>
    implements _$ListSubscribedProgramsCopyWith<$Res> {
  __$ListSubscribedProgramsCopyWithImpl(_ListSubscribedPrograms _value,
      $Res Function(_ListSubscribedPrograms) _then)
      : super(_value, (v) => _then(v as _ListSubscribedPrograms));

  @override
  _ListSubscribedPrograms get _value => super._value as _ListSubscribedPrograms;

  @override
  $Res call({
    Object viewerUser = freezed,
  }) {
    return _then(_ListSubscribedPrograms(
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ListSubscribedPrograms implements _ListSubscribedPrograms {
  const _$_ListSubscribedPrograms({@required this.viewerUser})
      : assert(viewerUser != null);

  factory _$_ListSubscribedPrograms.fromJson(Map<String, dynamic> json) =>
      _$_$_ListSubscribedProgramsFromJson(json);

  @override
  final ViewerUser viewerUser;

  @override
  String toString() {
    return 'ListSubscribedPrograms(viewerUser: $viewerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListSubscribedPrograms &&
            (identical(other.viewerUser, viewerUser) ||
                const DeepCollectionEquality()
                    .equals(other.viewerUser, viewerUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(viewerUser);

  @JsonKey(ignore: true)
  @override
  _$ListSubscribedProgramsCopyWith<_ListSubscribedPrograms> get copyWith =>
      __$ListSubscribedProgramsCopyWithImpl<_ListSubscribedPrograms>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListSubscribedProgramsToJson(this);
  }
}

abstract class _ListSubscribedPrograms implements ListSubscribedPrograms {
  const factory _ListSubscribedPrograms({@required ViewerUser viewerUser}) =
      _$_ListSubscribedPrograms;

  factory _ListSubscribedPrograms.fromJson(Map<String, dynamic> json) =
      _$_ListSubscribedPrograms.fromJson;

  @override
  ViewerUser get viewerUser;
  @override
  @JsonKey(ignore: true)
  _$ListSubscribedProgramsCopyWith<_ListSubscribedPrograms> get copyWith;
}

ViewerUser _$ViewerUserFromJson(Map<String, dynamic> json) {
  return _ViewerUser.fromJson(json);
}

/// @nodoc
class _$ViewerUserTearOff {
  const _$ViewerUserTearOff();

// ignore: unused_element
  _ViewerUser call(
      {@required ProgramCollection subscribedPrograms,
      @required String id,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ViewerUser(
      subscribedPrograms: subscribedPrograms,
      id: id,
      typename: typename,
    );
  }

// ignore: unused_element
  ViewerUser fromJson(Map<String, Object> json) {
    return ViewerUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerUser = _$ViewerUserTearOff();

/// @nodoc
mixin _$ViewerUser {
  ProgramCollection get subscribedPrograms;
  String get id;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ViewerUserCopyWith<ViewerUser> get copyWith;
}

/// @nodoc
abstract class $ViewerUserCopyWith<$Res> {
  factory $ViewerUserCopyWith(
          ViewerUser value, $Res Function(ViewerUser) then) =
      _$ViewerUserCopyWithImpl<$Res>;
  $Res call(
      {ProgramCollection subscribedPrograms,
      String id,
      @JsonKey(name: '__typename') String typename});

  $ProgramCollectionCopyWith<$Res> get subscribedPrograms;
}

/// @nodoc
class _$ViewerUserCopyWithImpl<$Res> implements $ViewerUserCopyWith<$Res> {
  _$ViewerUserCopyWithImpl(this._value, this._then);

  final ViewerUser _value;
  // ignore: unused_field
  final $Res Function(ViewerUser) _then;

  @override
  $Res call({
    Object subscribedPrograms = freezed,
    Object id = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      subscribedPrograms: subscribedPrograms == freezed
          ? _value.subscribedPrograms
          : subscribedPrograms as ProgramCollection,
      id: id == freezed ? _value.id : id as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $ProgramCollectionCopyWith<$Res> get subscribedPrograms {
    if (_value.subscribedPrograms == null) {
      return null;
    }
    return $ProgramCollectionCopyWith<$Res>(_value.subscribedPrograms, (value) {
      return _then(_value.copyWith(subscribedPrograms: value));
    });
  }
}

/// @nodoc
abstract class _$ViewerUserCopyWith<$Res> implements $ViewerUserCopyWith<$Res> {
  factory _$ViewerUserCopyWith(
          _ViewerUser value, $Res Function(_ViewerUser) then) =
      __$ViewerUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProgramCollection subscribedPrograms,
      String id,
      @JsonKey(name: '__typename') String typename});

  @override
  $ProgramCollectionCopyWith<$Res> get subscribedPrograms;
}

/// @nodoc
class __$ViewerUserCopyWithImpl<$Res> extends _$ViewerUserCopyWithImpl<$Res>
    implements _$ViewerUserCopyWith<$Res> {
  __$ViewerUserCopyWithImpl(
      _ViewerUser _value, $Res Function(_ViewerUser) _then)
      : super(_value, (v) => _then(v as _ViewerUser));

  @override
  _ViewerUser get _value => super._value as _ViewerUser;

  @override
  $Res call({
    Object subscribedPrograms = freezed,
    Object id = freezed,
    Object typename = freezed,
  }) {
    return _then(_ViewerUser(
      subscribedPrograms: subscribedPrograms == freezed
          ? _value.subscribedPrograms
          : subscribedPrograms as ProgramCollection,
      id: id == freezed ? _value.id : id as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ViewerUser implements _ViewerUser {
  const _$_ViewerUser(
      {@required this.subscribedPrograms,
      @required this.id,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(subscribedPrograms != null),
        assert(id != null),
        assert(typename != null),
        assert(typename == "User");

  factory _$_ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerUserFromJson(json);

  @override
  final ProgramCollection subscribedPrograms;
  @override
  final String id;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ViewerUser(subscribedPrograms: $subscribedPrograms, id: $id, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerUser &&
            (identical(other.subscribedPrograms, subscribedPrograms) ||
                const DeepCollectionEquality()
                    .equals(other.subscribedPrograms, subscribedPrograms)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscribedPrograms) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ViewerUserCopyWith<_ViewerUser> get copyWith =>
      __$ViewerUserCopyWithImpl<_ViewerUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerUserToJson(this);
  }
}

abstract class _ViewerUser implements ViewerUser {
  const factory _ViewerUser(
      {@required ProgramCollection subscribedPrograms,
      @required String id,
      @required @JsonKey(name: '__typename') String typename}) = _$_ViewerUser;

  factory _ViewerUser.fromJson(Map<String, dynamic> json) =
      _$_ViewerUser.fromJson;

  @override
  ProgramCollection get subscribedPrograms;
  @override
  String get id;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ViewerUserCopyWith<_ViewerUser> get copyWith;
}

ProgramCollection _$ProgramCollectionFromJson(Map<String, dynamic> json) {
  return _ProgramCollection.fromJson(json);
}

/// @nodoc
class _$ProgramCollectionTearOff {
  const _$ProgramCollectionTearOff();

// ignore: unused_element
  _ProgramCollection call(
      {@required @JsonKey(name: 'items') @protected List<Item> rawItems,
      @required @JsonKey(name: '__typename') String typename,
      String nextToken}) {
    return _ProgramCollection(
      rawItems: rawItems,
      typename: typename,
      nextToken: nextToken,
    );
  }

// ignore: unused_element
  ProgramCollection fromJson(Map<String, Object> json) {
    return ProgramCollection.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramCollection = _$ProgramCollectionTearOff();

/// @nodoc
mixin _$ProgramCollection {
  @JsonKey(name: 'items')
  @protected
  List<Item> get rawItems;
  @JsonKey(name: '__typename')
  String get typename;
  String get nextToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramCollectionCopyWith<ProgramCollection> get copyWith;
}

/// @nodoc
abstract class $ProgramCollectionCopyWith<$Res> {
  factory $ProgramCollectionCopyWith(
          ProgramCollection value, $Res Function(ProgramCollection) then) =
      _$ProgramCollectionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<Item> rawItems,
      @JsonKey(name: '__typename') String typename,
      String nextToken});
}

/// @nodoc
class _$ProgramCollectionCopyWithImpl<$Res>
    implements $ProgramCollectionCopyWith<$Res> {
  _$ProgramCollectionCopyWithImpl(this._value, this._then);

  final ProgramCollection _value;
  // ignore: unused_field
  final $Res Function(ProgramCollection) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
    Object nextToken = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed ? _value.rawItems : rawItems as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
    ));
  }
}

/// @nodoc
abstract class _$ProgramCollectionCopyWith<$Res>
    implements $ProgramCollectionCopyWith<$Res> {
  factory _$ProgramCollectionCopyWith(
          _ProgramCollection value, $Res Function(_ProgramCollection) then) =
      __$ProgramCollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<Item> rawItems,
      @JsonKey(name: '__typename') String typename,
      String nextToken});
}

/// @nodoc
class __$ProgramCollectionCopyWithImpl<$Res>
    extends _$ProgramCollectionCopyWithImpl<$Res>
    implements _$ProgramCollectionCopyWith<$Res> {
  __$ProgramCollectionCopyWithImpl(
      _ProgramCollection _value, $Res Function(_ProgramCollection) _then)
      : super(_value, (v) => _then(v as _ProgramCollection));

  @override
  _ProgramCollection get _value => super._value as _ProgramCollection;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
    Object nextToken = freezed,
  }) {
    return _then(_ProgramCollection(
      rawItems: rawItems == freezed ? _value.rawItems : rawItems as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramCollection extends _ProgramCollection {
  const _$_ProgramCollection(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      @required @JsonKey(name: '__typename') this.typename,
      this.nextToken})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ProgramCollection"),
        super._();

  factory _$_ProgramCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramCollectionFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<Item> rawItems;
  @override
  @JsonKey(name: '__typename')
  final String typename;
  @override
  final String nextToken;

  @override
  String toString() {
    return 'ProgramCollection(rawItems: $rawItems, typename: $typename, nextToken: $nextToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramCollection &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(typename) ^
      const DeepCollectionEquality().hash(nextToken);

  @JsonKey(ignore: true)
  @override
  _$ProgramCollectionCopyWith<_ProgramCollection> get copyWith =>
      __$ProgramCollectionCopyWithImpl<_ProgramCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramCollectionToJson(this);
  }
}

abstract class _ProgramCollection extends ProgramCollection {
  const _ProgramCollection._() : super._();
  const factory _ProgramCollection(
      {@required @JsonKey(name: 'items') @protected List<Item> rawItems,
      @required @JsonKey(name: '__typename') String typename,
      String nextToken}) = _$_ProgramCollection;

  factory _ProgramCollection.fromJson(Map<String, dynamic> json) =
      _$_ProgramCollection.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<Item> get rawItems;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  String get nextToken;
  @override
  @JsonKey(ignore: true)
  _$ProgramCollectionCopyWith<_ProgramCollection> get copyWith;
}
