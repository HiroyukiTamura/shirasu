// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_user_data_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthUserDataQuery _$AuthUserDataQueryFromJson(Map<String, dynamic> json) {
  return _AuthUserDataQuery.fromJson(json);
}

/// @nodoc
class _$AuthUserDataQueryTearOff {
  const _$AuthUserDataQueryTearOff();

// ignore: unused_element
  _AuthUserDataQuery call({@required String state, @required String code}) {
    return _AuthUserDataQuery(
      state: state,
      code: code,
    );
  }

// ignore: unused_element
  AuthUserDataQuery fromJson(Map<String, Object> json) {
    return AuthUserDataQuery.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthUserDataQuery = _$AuthUserDataQueryTearOff();

/// @nodoc
mixin _$AuthUserDataQuery {
  String get state;
  String get code;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthUserDataQueryCopyWith<AuthUserDataQuery> get copyWith;
}

/// @nodoc
abstract class $AuthUserDataQueryCopyWith<$Res> {
  factory $AuthUserDataQueryCopyWith(
          AuthUserDataQuery value, $Res Function(AuthUserDataQuery) then) =
      _$AuthUserDataQueryCopyWithImpl<$Res>;
  $Res call({String state, String code});
}

/// @nodoc
class _$AuthUserDataQueryCopyWithImpl<$Res>
    implements $AuthUserDataQueryCopyWith<$Res> {
  _$AuthUserDataQueryCopyWithImpl(this._value, this._then);

  final AuthUserDataQuery _value;
  // ignore: unused_field
  final $Res Function(AuthUserDataQuery) _then;

  @override
  $Res call({
    Object state = freezed,
    Object code = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserDataQueryCopyWith<$Res>
    implements $AuthUserDataQueryCopyWith<$Res> {
  factory _$AuthUserDataQueryCopyWith(
          _AuthUserDataQuery value, $Res Function(_AuthUserDataQuery) then) =
      __$AuthUserDataQueryCopyWithImpl<$Res>;
  @override
  $Res call({String state, String code});
}

/// @nodoc
class __$AuthUserDataQueryCopyWithImpl<$Res>
    extends _$AuthUserDataQueryCopyWithImpl<$Res>
    implements _$AuthUserDataQueryCopyWith<$Res> {
  __$AuthUserDataQueryCopyWithImpl(
      _AuthUserDataQuery _value, $Res Function(_AuthUserDataQuery) _then)
      : super(_value, (v) => _then(v as _AuthUserDataQuery));

  @override
  _AuthUserDataQuery get _value => super._value as _AuthUserDataQuery;

  @override
  $Res call({
    Object state = freezed,
    Object code = freezed,
  }) {
    return _then(_AuthUserDataQuery(
      state: state == freezed ? _value.state : state as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthUserDataQuery implements _AuthUserDataQuery {
  const _$_AuthUserDataQuery({@required this.state, @required this.code})
      : assert(state != null),
        assert(code != null);

  factory _$_AuthUserDataQuery.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthUserDataQueryFromJson(json);

  @override
  final String state;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthUserDataQuery(state: $state, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthUserDataQuery &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$AuthUserDataQueryCopyWith<_AuthUserDataQuery> get copyWith =>
      __$AuthUserDataQueryCopyWithImpl<_AuthUserDataQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthUserDataQueryToJson(this);
  }
}

abstract class _AuthUserDataQuery implements AuthUserDataQuery {
  const factory _AuthUserDataQuery(
      {@required String state, @required String code}) = _$_AuthUserDataQuery;

  factory _AuthUserDataQuery.fromJson(Map<String, dynamic> json) =
      _$_AuthUserDataQuery.fromJson;

  @override
  String get state;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$AuthUserDataQueryCopyWith<_AuthUserDataQuery> get copyWith;
}

AuthUserDataQueryErr _$AuthUserDataQueryErrFromJson(Map<String, dynamic> json) {
  return _AuthUserDataQueryErr.fromJson(json);
}

/// @nodoc
class _$AuthUserDataQueryErrTearOff {
  const _$AuthUserDataQueryErrTearOff();

// ignore: unused_element
  _AuthUserDataQueryErr call(
      {String error,
      @JsonKey(name: 'error_description') String errorDescription}) {
    return _AuthUserDataQueryErr(
      error: error,
      errorDescription: errorDescription,
    );
  }

// ignore: unused_element
  AuthUserDataQueryErr fromJson(Map<String, Object> json) {
    return AuthUserDataQueryErr.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthUserDataQueryErr = _$AuthUserDataQueryErrTearOff();

/// @nodoc
mixin _$AuthUserDataQueryErr {
  String get error;
  @JsonKey(name: 'error_description')
  String get errorDescription;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthUserDataQueryErrCopyWith<AuthUserDataQueryErr> get copyWith;
}

/// @nodoc
abstract class $AuthUserDataQueryErrCopyWith<$Res> {
  factory $AuthUserDataQueryErrCopyWith(AuthUserDataQueryErr value,
          $Res Function(AuthUserDataQueryErr) then) =
      _$AuthUserDataQueryErrCopyWithImpl<$Res>;
  $Res call(
      {String error,
      @JsonKey(name: 'error_description') String errorDescription});
}

/// @nodoc
class _$AuthUserDataQueryErrCopyWithImpl<$Res>
    implements $AuthUserDataQueryErrCopyWith<$Res> {
  _$AuthUserDataQueryErrCopyWithImpl(this._value, this._then);

  final AuthUserDataQueryErr _value;
  // ignore: unused_field
  final $Res Function(AuthUserDataQueryErr) _then;

  @override
  $Res call({
    Object error = freezed,
    Object errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as String,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserDataQueryErrCopyWith<$Res>
    implements $AuthUserDataQueryErrCopyWith<$Res> {
  factory _$AuthUserDataQueryErrCopyWith(_AuthUserDataQueryErr value,
          $Res Function(_AuthUserDataQueryErr) then) =
      __$AuthUserDataQueryErrCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      @JsonKey(name: 'error_description') String errorDescription});
}

/// @nodoc
class __$AuthUserDataQueryErrCopyWithImpl<$Res>
    extends _$AuthUserDataQueryErrCopyWithImpl<$Res>
    implements _$AuthUserDataQueryErrCopyWith<$Res> {
  __$AuthUserDataQueryErrCopyWithImpl(
      _AuthUserDataQueryErr _value, $Res Function(_AuthUserDataQueryErr) _then)
      : super(_value, (v) => _then(v as _AuthUserDataQueryErr));

  @override
  _AuthUserDataQueryErr get _value => super._value as _AuthUserDataQueryErr;

  @override
  $Res call({
    Object error = freezed,
    Object errorDescription = freezed,
  }) {
    return _then(_AuthUserDataQueryErr(
      error: error == freezed ? _value.error : error as String,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthUserDataQueryErr implements _AuthUserDataQueryErr {
  const _$_AuthUserDataQueryErr(
      {this.error, @JsonKey(name: 'error_description') this.errorDescription});

  factory _$_AuthUserDataQueryErr.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthUserDataQueryErrFromJson(json);

  @override
  final String error;
  @override
  @JsonKey(name: 'error_description')
  final String errorDescription;

  @override
  String toString() {
    return 'AuthUserDataQueryErr(error: $error, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthUserDataQueryErr &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.errorDescription, errorDescription) ||
                const DeepCollectionEquality()
                    .equals(other.errorDescription, errorDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errorDescription);

  @JsonKey(ignore: true)
  @override
  _$AuthUserDataQueryErrCopyWith<_AuthUserDataQueryErr> get copyWith =>
      __$AuthUserDataQueryErrCopyWithImpl<_AuthUserDataQueryErr>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthUserDataQueryErrToJson(this);
  }
}

abstract class _AuthUserDataQueryErr implements AuthUserDataQueryErr {
  const factory _AuthUserDataQueryErr(
          {String error,
          @JsonKey(name: 'error_description') String errorDescription}) =
      _$_AuthUserDataQueryErr;

  factory _AuthUserDataQueryErr.fromJson(Map<String, dynamic> json) =
      _$_AuthUserDataQueryErr.fromJson;

  @override
  String get error;
  @override
  @JsonKey(name: 'error_description')
  String get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$AuthUserDataQueryErrCopyWith<_AuthUserDataQueryErr> get copyWith;
}
