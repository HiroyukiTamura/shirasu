// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'prefecture_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PrefectureData _$PrefectureDataFromJson(Map<String, dynamic> json) {
  return _PrefectureData.fromJson(json);
}

/// @nodoc
class _$PrefectureDataTearOff {
  const _$PrefectureDataTearOff();

// ignore: unused_element
  _PrefectureData call(
      {@required
      @JsonKey(name: 'prefecture')
      @protected
          List<Prefecture> rawPrefecture}) {
    return _PrefectureData(
      rawPrefecture: rawPrefecture,
    );
  }

// ignore: unused_element
  PrefectureData fromJson(Map<String, Object> json) {
    return PrefectureData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PrefectureData = _$PrefectureDataTearOff();

/// @nodoc
mixin _$PrefectureData {
  @JsonKey(name: 'prefecture')
  @protected
  List<Prefecture> get rawPrefecture;

  Map<String, dynamic> toJson();
  $PrefectureDataCopyWith<PrefectureData> get copyWith;
}

/// @nodoc
abstract class $PrefectureDataCopyWith<$Res> {
  factory $PrefectureDataCopyWith(
          PrefectureData value, $Res Function(PrefectureData) then) =
      _$PrefectureDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'prefecture') @protected List<Prefecture> rawPrefecture});
}

/// @nodoc
class _$PrefectureDataCopyWithImpl<$Res>
    implements $PrefectureDataCopyWith<$Res> {
  _$PrefectureDataCopyWithImpl(this._value, this._then);

  final PrefectureData _value;
  // ignore: unused_field
  final $Res Function(PrefectureData) _then;

  @override
  $Res call({
    Object rawPrefecture = freezed,
  }) {
    return _then(_value.copyWith(
      rawPrefecture: rawPrefecture == freezed
          ? _value.rawPrefecture
          : rawPrefecture as List<Prefecture>,
    ));
  }
}

/// @nodoc
abstract class _$PrefectureDataCopyWith<$Res>
    implements $PrefectureDataCopyWith<$Res> {
  factory _$PrefectureDataCopyWith(
          _PrefectureData value, $Res Function(_PrefectureData) then) =
      __$PrefectureDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'prefecture') @protected List<Prefecture> rawPrefecture});
}

/// @nodoc
class __$PrefectureDataCopyWithImpl<$Res>
    extends _$PrefectureDataCopyWithImpl<$Res>
    implements _$PrefectureDataCopyWith<$Res> {
  __$PrefectureDataCopyWithImpl(
      _PrefectureData _value, $Res Function(_PrefectureData) _then)
      : super(_value, (v) => _then(v as _PrefectureData));

  @override
  _PrefectureData get _value => super._value as _PrefectureData;

  @override
  $Res call({
    Object rawPrefecture = freezed,
  }) {
    return _then(_PrefectureData(
      rawPrefecture: rawPrefecture == freezed
          ? _value.rawPrefecture
          : rawPrefecture as List<Prefecture>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PrefectureData extends _PrefectureData {
  const _$_PrefectureData(
      {@required @JsonKey(name: 'prefecture') @protected this.rawPrefecture})
      : assert(rawPrefecture != null),
        super._();

  factory _$_PrefectureData.fromJson(Map<String, dynamic> json) =>
      _$_$_PrefectureDataFromJson(json);

  @override
  @JsonKey(name: 'prefecture')
  @protected
  final List<Prefecture> rawPrefecture;

  @override
  String toString() {
    return 'PrefectureData(rawPrefecture: $rawPrefecture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrefectureData &&
            (identical(other.rawPrefecture, rawPrefecture) ||
                const DeepCollectionEquality()
                    .equals(other.rawPrefecture, rawPrefecture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rawPrefecture);

  @override
  _$PrefectureDataCopyWith<_PrefectureData> get copyWith =>
      __$PrefectureDataCopyWithImpl<_PrefectureData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrefectureDataToJson(this);
  }
}

abstract class _PrefectureData extends PrefectureData {
  const _PrefectureData._() : super._();
  const factory _PrefectureData(
      {@required
      @JsonKey(name: 'prefecture')
      @protected
          List<Prefecture> rawPrefecture}) = _$_PrefectureData;

  factory _PrefectureData.fromJson(Map<String, dynamic> json) =
      _$_PrefectureData.fromJson;

  @override
  @JsonKey(name: 'prefecture')
  @protected
  List<Prefecture> get rawPrefecture;
  @override
  _$PrefectureDataCopyWith<_PrefectureData> get copyWith;
}

Prefecture _$PrefectureFromJson(Map<String, dynamic> json) {
  return _Prefecture.fromJson(json);
}

/// @nodoc
class _$PrefectureTearOff {
  const _$PrefectureTearOff();

// ignore: unused_element
  _Prefecture call(
      {@required @JsonKey(name: 'code') @protected int codeInt,
      @required String name}) {
    return _Prefecture(
      codeInt: codeInt,
      name: name,
    );
  }

// ignore: unused_element
  Prefecture fromJson(Map<String, Object> json) {
    return Prefecture.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Prefecture = _$PrefectureTearOff();

/// @nodoc
mixin _$Prefecture {
  @JsonKey(name: 'code')
  @protected
  int get codeInt;
  String get name;

  Map<String, dynamic> toJson();
  $PrefectureCopyWith<Prefecture> get copyWith;
}

/// @nodoc
abstract class $PrefectureCopyWith<$Res> {
  factory $PrefectureCopyWith(
          Prefecture value, $Res Function(Prefecture) then) =
      _$PrefectureCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'code') @protected int codeInt, String name});
}

/// @nodoc
class _$PrefectureCopyWithImpl<$Res> implements $PrefectureCopyWith<$Res> {
  _$PrefectureCopyWithImpl(this._value, this._then);

  final Prefecture _value;
  // ignore: unused_field
  final $Res Function(Prefecture) _then;

  @override
  $Res call({
    Object codeInt = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      codeInt: codeInt == freezed ? _value.codeInt : codeInt as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$PrefectureCopyWith<$Res> implements $PrefectureCopyWith<$Res> {
  factory _$PrefectureCopyWith(
          _Prefecture value, $Res Function(_Prefecture) then) =
      __$PrefectureCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'code') @protected int codeInt, String name});
}

/// @nodoc
class __$PrefectureCopyWithImpl<$Res> extends _$PrefectureCopyWithImpl<$Res>
    implements _$PrefectureCopyWith<$Res> {
  __$PrefectureCopyWithImpl(
      _Prefecture _value, $Res Function(_Prefecture) _then)
      : super(_value, (v) => _then(v as _Prefecture));

  @override
  _Prefecture get _value => super._value as _Prefecture;

  @override
  $Res call({
    Object codeInt = freezed,
    Object name = freezed,
  }) {
    return _then(_Prefecture(
      codeInt: codeInt == freezed ? _value.codeInt : codeInt as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Prefecture extends _Prefecture {
  const _$_Prefecture(
      {@required @JsonKey(name: 'code') @protected this.codeInt,
      @required this.name})
      : assert(codeInt != null),
        assert(name != null),
        super._();

  factory _$_Prefecture.fromJson(Map<String, dynamic> json) =>
      _$_$_PrefectureFromJson(json);

  @override
  @JsonKey(name: 'code')
  @protected
  final int codeInt;
  @override
  final String name;

  @override
  String toString() {
    return 'Prefecture(codeInt: $codeInt, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Prefecture &&
            (identical(other.codeInt, codeInt) ||
                const DeepCollectionEquality()
                    .equals(other.codeInt, codeInt)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(codeInt) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$PrefectureCopyWith<_Prefecture> get copyWith =>
      __$PrefectureCopyWithImpl<_Prefecture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrefectureToJson(this);
  }
}

abstract class _Prefecture extends Prefecture {
  const _Prefecture._() : super._();
  const factory _Prefecture(
      {@required @JsonKey(name: 'code') @protected int codeInt,
      @required String name}) = _$_Prefecture;

  factory _Prefecture.fromJson(Map<String, dynamic> json) =
      _$_Prefecture.fromJson;

  @override
  @JsonKey(name: 'code')
  @protected
  int get codeInt;
  @override
  String get name;
  @override
  _$PrefectureCopyWith<_Prefecture> get copyWith;
}
