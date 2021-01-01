// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'watch_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WatchHistoriesData _$WatchHistoriesDataFromJson(Map<String, dynamic> json) {
  return _WatchHistoriesData.fromJson(json);
}

/// @nodoc
class _$WatchHistoriesDataTearOff {
  const _$WatchHistoriesDataTearOff();

// ignore: unused_element
  _WatchHistoriesData call({@required ViewerUserSimple viewerUser}) {
    return _WatchHistoriesData(
      viewerUser: viewerUser,
    );
  }

// ignore: unused_element
  WatchHistoriesData fromJson(Map<String, Object> json) {
    return WatchHistoriesData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistoriesData = _$WatchHistoriesDataTearOff();

/// @nodoc
mixin _$WatchHistoriesData {
  ViewerUserSimple get viewerUser;

  Map<String, dynamic> toJson();
  $WatchHistoriesDataCopyWith<WatchHistoriesData> get copyWith;
}

/// @nodoc
abstract class $WatchHistoriesDataCopyWith<$Res> {
  factory $WatchHistoriesDataCopyWith(
          WatchHistoriesData value, $Res Function(WatchHistoriesData) then) =
      _$WatchHistoriesDataCopyWithImpl<$Res>;
  $Res call({ViewerUserSimple viewerUser});

  $ViewerUserSimpleCopyWith<$Res> get viewerUser;
}

/// @nodoc
class _$WatchHistoriesDataCopyWithImpl<$Res>
    implements $WatchHistoriesDataCopyWith<$Res> {
  _$WatchHistoriesDataCopyWithImpl(this._value, this._then);

  final WatchHistoriesData _value;
  // ignore: unused_field
  final $Res Function(WatchHistoriesData) _then;

  @override
  $Res call({
    Object viewerUser = freezed,
  }) {
    return _then(_value.copyWith(
      viewerUser: viewerUser == freezed
          ? _value.viewerUser
          : viewerUser as ViewerUserSimple,
    ));
  }

  @override
  $ViewerUserSimpleCopyWith<$Res> get viewerUser {
    if (_value.viewerUser == null) {
      return null;
    }
    return $ViewerUserSimpleCopyWith<$Res>(_value.viewerUser, (value) {
      return _then(_value.copyWith(viewerUser: value));
    });
  }
}

/// @nodoc
abstract class _$WatchHistoriesDataCopyWith<$Res>
    implements $WatchHistoriesDataCopyWith<$Res> {
  factory _$WatchHistoriesDataCopyWith(
          _WatchHistoriesData value, $Res Function(_WatchHistoriesData) then) =
      __$WatchHistoriesDataCopyWithImpl<$Res>;
  @override
  $Res call({ViewerUserSimple viewerUser});

  @override
  $ViewerUserSimpleCopyWith<$Res> get viewerUser;
}

/// @nodoc
class __$WatchHistoriesDataCopyWithImpl<$Res>
    extends _$WatchHistoriesDataCopyWithImpl<$Res>
    implements _$WatchHistoriesDataCopyWith<$Res> {
  __$WatchHistoriesDataCopyWithImpl(
      _WatchHistoriesData _value, $Res Function(_WatchHistoriesData) _then)
      : super(_value, (v) => _then(v as _WatchHistoriesData));

  @override
  _WatchHistoriesData get _value => super._value as _WatchHistoriesData;

  @override
  $Res call({
    Object viewerUser = freezed,
  }) {
    return _then(_WatchHistoriesData(
      viewerUser: viewerUser == freezed
          ? _value.viewerUser
          : viewerUser as ViewerUserSimple,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WatchHistoriesData implements _WatchHistoriesData {
  const _$_WatchHistoriesData({@required this.viewerUser})
      : assert(viewerUser != null);

  factory _$_WatchHistoriesData.fromJson(Map<String, dynamic> json) =>
      _$_$_WatchHistoriesDataFromJson(json);

  @override
  final ViewerUserSimple viewerUser;

  @override
  String toString() {
    return 'WatchHistoriesData(viewerUser: $viewerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistoriesData &&
            (identical(other.viewerUser, viewerUser) ||
                const DeepCollectionEquality()
                    .equals(other.viewerUser, viewerUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(viewerUser);

  @override
  _$WatchHistoriesDataCopyWith<_WatchHistoriesData> get copyWith =>
      __$WatchHistoriesDataCopyWithImpl<_WatchHistoriesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WatchHistoriesDataToJson(this);
  }
}

abstract class _WatchHistoriesData implements WatchHistoriesData {
  const factory _WatchHistoriesData({@required ViewerUserSimple viewerUser}) =
      _$_WatchHistoriesData;

  factory _WatchHistoriesData.fromJson(Map<String, dynamic> json) =
      _$_WatchHistoriesData.fromJson;

  @override
  ViewerUserSimple get viewerUser;
  @override
  _$WatchHistoriesDataCopyWith<_WatchHistoriesData> get copyWith;
}

ViewerUserSimple _$ViewerUserSimpleFromJson(Map<String, dynamic> json) {
  return _ViewerUserSimple.fromJson(json);
}

/// @nodoc
class _$ViewerUserSimpleTearOff {
  const _$ViewerUserSimpleTearOff();

// ignore: unused_element
  _ViewerUserSimple call(
      {@required
          WatchHistories watchHistories,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) {
    return _ViewerUserSimple(
      watchHistories: watchHistories,
      typename: typename,
    );
  }

// ignore: unused_element
  ViewerUserSimple fromJson(Map<String, Object> json) {
    return ViewerUserSimple.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerUserSimple = _$ViewerUserSimpleTearOff();

/// @nodoc
mixin _$ViewerUserSimple {
  WatchHistories get watchHistories;
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;

  Map<String, dynamic> toJson();
  $ViewerUserSimpleCopyWith<ViewerUserSimple> get copyWith;
}

/// @nodoc
abstract class $ViewerUserSimpleCopyWith<$Res> {
  factory $ViewerUserSimpleCopyWith(
          ViewerUserSimple value, $Res Function(ViewerUserSimple) then) =
      _$ViewerUserSimpleCopyWithImpl<$Res>;
  $Res call(
      {WatchHistories watchHistories,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});

  $WatchHistoriesCopyWith<$Res> get watchHistories;
}

/// @nodoc
class _$ViewerUserSimpleCopyWithImpl<$Res>
    implements $ViewerUserSimpleCopyWith<$Res> {
  _$ViewerUserSimpleCopyWithImpl(this._value, this._then);

  final ViewerUserSimple _value;
  // ignore: unused_field
  final $Res Function(ViewerUserSimple) _then;

  @override
  $Res call({
    Object watchHistories = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as WatchHistories,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $WatchHistoriesCopyWith<$Res> get watchHistories {
    if (_value.watchHistories == null) {
      return null;
    }
    return $WatchHistoriesCopyWith<$Res>(_value.watchHistories, (value) {
      return _then(_value.copyWith(watchHistories: value));
    });
  }
}

/// @nodoc
abstract class _$ViewerUserSimpleCopyWith<$Res>
    implements $ViewerUserSimpleCopyWith<$Res> {
  factory _$ViewerUserSimpleCopyWith(
          _ViewerUserSimple value, $Res Function(_ViewerUserSimple) then) =
      __$ViewerUserSimpleCopyWithImpl<$Res>;
  @override
  $Res call(
      {WatchHistories watchHistories,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});

  @override
  $WatchHistoriesCopyWith<$Res> get watchHistories;
}

/// @nodoc
class __$ViewerUserSimpleCopyWithImpl<$Res>
    extends _$ViewerUserSimpleCopyWithImpl<$Res>
    implements _$ViewerUserSimpleCopyWith<$Res> {
  __$ViewerUserSimpleCopyWithImpl(
      _ViewerUserSimple _value, $Res Function(_ViewerUserSimple) _then)
      : super(_value, (v) => _then(v as _ViewerUserSimple));

  @override
  _ViewerUserSimple get _value => super._value as _ViewerUserSimple;

  @override
  $Res call({
    Object watchHistories = freezed,
    Object typename = freezed,
  }) {
    return _then(_ViewerUserSimple(
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as WatchHistories,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ViewerUserSimple implements _ViewerUserSimple {
  const _$_ViewerUserSimple(
      {@required
          this.watchHistories,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          this.typename})
      : assert(watchHistories != null),
        assert(typename != null);

  factory _$_ViewerUserSimple.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerUserSimpleFromJson(json);

  @override
  final WatchHistories watchHistories;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  final String typename;

  @override
  String toString() {
    return 'ViewerUserSimple(watchHistories: $watchHistories, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerUserSimple &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$ViewerUserSimpleCopyWith<_ViewerUserSimple> get copyWith =>
      __$ViewerUserSimpleCopyWithImpl<_ViewerUserSimple>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerUserSimpleToJson(this);
  }
}

abstract class _ViewerUserSimple implements ViewerUserSimple {
  const factory _ViewerUserSimple(
      {@required
          WatchHistories watchHistories,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) = _$_ViewerUserSimple;

  factory _ViewerUserSimple.fromJson(Map<String, dynamic> json) =
      _$_ViewerUserSimple.fromJson;

  @override
  WatchHistories get watchHistories;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;
  @override
  _$ViewerUserSimpleCopyWith<_ViewerUserSimple> get copyWith;
}
