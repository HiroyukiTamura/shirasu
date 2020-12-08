// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthModelTearOff {
  const _$AuthModelTearOff();

// ignore: unused_element
  _AuthModel call({@required String lastUrl, @required double lastProgress}) {
    return _AuthModel(
      lastUrl: lastUrl,
      lastProgress: lastProgress,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthModel = _$AuthModelTearOff();

/// @nodoc
mixin _$AuthModel {
  String get lastUrl;
  double get lastProgress;

  $AuthModelCopyWith<AuthModel> get copyWith;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res>;
  $Res call({String lastUrl, double lastProgress});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;

  @override
  $Res call({
    Object lastUrl = freezed,
    Object lastProgress = freezed,
  }) {
    return _then(_value.copyWith(
      lastUrl: lastUrl == freezed ? _value.lastUrl : lastUrl as String,
      lastProgress: lastProgress == freezed
          ? _value.lastProgress
          : lastProgress as double,
    ));
  }
}

/// @nodoc
abstract class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(
          _AuthModel value, $Res Function(_AuthModel) then) =
      __$AuthModelCopyWithImpl<$Res>;
  @override
  $Res call({String lastUrl, double lastProgress});
}

/// @nodoc
class __$AuthModelCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(_AuthModel _value, $Res Function(_AuthModel) _then)
      : super(_value, (v) => _then(v as _AuthModel));

  @override
  _AuthModel get _value => super._value as _AuthModel;

  @override
  $Res call({
    Object lastUrl = freezed,
    Object lastProgress = freezed,
  }) {
    return _then(_AuthModel(
      lastUrl: lastUrl == freezed ? _value.lastUrl : lastUrl as String,
      lastProgress: lastProgress == freezed
          ? _value.lastProgress
          : lastProgress as double,
    ));
  }
}

/// @nodoc
class _$_AuthModel extends _AuthModel {
  const _$_AuthModel({@required this.lastUrl, @required this.lastProgress})
      : assert(lastUrl != null),
        assert(lastProgress != null),
        super._();

  @override
  final String lastUrl;
  @override
  final double lastProgress;

  @override
  String toString() {
    return 'AuthModel(lastUrl: $lastUrl, lastProgress: $lastProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthModel &&
            (identical(other.lastUrl, lastUrl) ||
                const DeepCollectionEquality()
                    .equals(other.lastUrl, lastUrl)) &&
            (identical(other.lastProgress, lastProgress) ||
                const DeepCollectionEquality()
                    .equals(other.lastProgress, lastProgress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastUrl) ^
      const DeepCollectionEquality().hash(lastProgress);

  @override
  _$AuthModelCopyWith<_AuthModel> get copyWith =>
      __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);
}

abstract class _AuthModel extends AuthModel {
  const _AuthModel._() : super._();
  const factory _AuthModel(
      {@required String lastUrl, @required double lastProgress}) = _$_AuthModel;

  @override
  String get lastUrl;
  @override
  double get lastProgress;
  @override
  _$AuthModelCopyWith<_AuthModel> get copyWith;
}
