// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ntf_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NtfData _$NtfDataFromJson(Map<String, dynamic> json) {
  return _NtfData.fromJson(json);
}

/// @nodoc
class _$NtfDataTearOff {
  const _$NtfDataTearOff();

// ignore: unused_element
  _NtfData call(
      {@required String programId, @required @protected String action}) {
    return _NtfData(
      programId: programId,
      action: action,
    );
  }

// ignore: unused_element
  NtfData fromJson(Map<String, Object> json) {
    return NtfData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NtfData = _$NtfDataTearOff();

/// @nodoc
mixin _$NtfData {
  String get programId;
  @protected
  String get action;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NtfDataCopyWith<NtfData> get copyWith;
}

/// @nodoc
abstract class $NtfDataCopyWith<$Res> {
  factory $NtfDataCopyWith(NtfData value, $Res Function(NtfData) then) =
      _$NtfDataCopyWithImpl<$Res>;
  $Res call({String programId, @protected String action});
}

/// @nodoc
class _$NtfDataCopyWithImpl<$Res> implements $NtfDataCopyWith<$Res> {
  _$NtfDataCopyWithImpl(this._value, this._then);

  final NtfData _value;
  // ignore: unused_field
  final $Res Function(NtfData) _then;

  @override
  $Res call({
    Object programId = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      programId: programId == freezed ? _value.programId : programId as String,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
abstract class _$NtfDataCopyWith<$Res> implements $NtfDataCopyWith<$Res> {
  factory _$NtfDataCopyWith(_NtfData value, $Res Function(_NtfData) then) =
      __$NtfDataCopyWithImpl<$Res>;
  @override
  $Res call({String programId, @protected String action});
}

/// @nodoc
class __$NtfDataCopyWithImpl<$Res> extends _$NtfDataCopyWithImpl<$Res>
    implements _$NtfDataCopyWith<$Res> {
  __$NtfDataCopyWithImpl(_NtfData _value, $Res Function(_NtfData) _then)
      : super(_value, (v) => _then(v as _NtfData));

  @override
  _NtfData get _value => super._value as _NtfData;

  @override
  $Res call({
    Object programId = freezed,
    Object action = freezed,
  }) {
    return _then(_NtfData(
      programId: programId == freezed ? _value.programId : programId as String,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NtfData extends _NtfData {
  const _$_NtfData({@required this.programId, @required @protected this.action})
      : assert(programId != null),
        assert(action != null),
        super._();

  factory _$_NtfData.fromJson(Map<String, dynamic> json) =>
      _$_$_NtfDataFromJson(json);

  @override
  final String programId;
  @override
  @protected
  final String action;

  @override
  String toString() {
    return 'NtfData(programId: $programId, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NtfData &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programId) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$NtfDataCopyWith<_NtfData> get copyWith =>
      __$NtfDataCopyWithImpl<_NtfData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NtfDataToJson(this);
  }
}

abstract class _NtfData extends NtfData {
  const _NtfData._() : super._();
  const factory _NtfData(
      {@required String programId,
      @required @protected String action}) = _$_NtfData;

  factory _NtfData.fromJson(Map<String, dynamic> json) = _$_NtfData.fromJson;

  @override
  String get programId;
  @override
  @protected
  String get action;
  @override
  @JsonKey(ignore: true)
  _$NtfDataCopyWith<_NtfData> get copyWith;
}

/// @nodoc
class _$NtfActionTearOff {
  const _$NtfActionTearOff();

// ignore: unused_element
  _OpenProgram openProgram(dynamic programId) {
    return _OpenProgram(
      programId,
    );
  }

// ignore: unused_element
  _UNKNOWN unknown() {
    return const _UNKNOWN();
  }
}

/// @nodoc
// ignore: unused_element
const $NtfAction = _$NtfActionTearOff();

/// @nodoc
mixin _$NtfAction {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openProgram(dynamic programId),
    @required TResult unknown(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openProgram(dynamic programId),
    TResult unknown(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_UNKNOWN value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openProgram(_OpenProgram value),
    TResult unknown(_UNKNOWN value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NtfActionCopyWith<$Res> {
  factory $NtfActionCopyWith(NtfAction value, $Res Function(NtfAction) then) =
      _$NtfActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NtfActionCopyWithImpl<$Res> implements $NtfActionCopyWith<$Res> {
  _$NtfActionCopyWithImpl(this._value, this._then);

  final NtfAction _value;
  // ignore: unused_field
  final $Res Function(NtfAction) _then;
}

/// @nodoc
abstract class _$OpenProgramCopyWith<$Res> {
  factory _$OpenProgramCopyWith(
          _OpenProgram value, $Res Function(_OpenProgram) then) =
      __$OpenProgramCopyWithImpl<$Res>;
  $Res call({dynamic programId});
}

/// @nodoc
class __$OpenProgramCopyWithImpl<$Res> extends _$NtfActionCopyWithImpl<$Res>
    implements _$OpenProgramCopyWith<$Res> {
  __$OpenProgramCopyWithImpl(
      _OpenProgram _value, $Res Function(_OpenProgram) _then)
      : super(_value, (v) => _then(v as _OpenProgram));

  @override
  _OpenProgram get _value => super._value as _OpenProgram;

  @override
  $Res call({
    Object programId = freezed,
  }) {
    return _then(_OpenProgram(
      programId == freezed ? _value.programId : programId,
    ));
  }
}

/// @nodoc
class _$_OpenProgram implements _OpenProgram {
  const _$_OpenProgram(this.programId) : assert(programId != null);

  @override
  final dynamic programId;

  @override
  String toString() {
    return 'NtfAction.openProgram(programId: $programId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenProgram &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(programId);

  @JsonKey(ignore: true)
  @override
  _$OpenProgramCopyWith<_OpenProgram> get copyWith =>
      __$OpenProgramCopyWithImpl<_OpenProgram>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openProgram(dynamic programId),
    @required TResult unknown(),
  }) {
    assert(openProgram != null);
    assert(unknown != null);
    return openProgram(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openProgram(dynamic programId),
    TResult unknown(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openProgram != null) {
      return openProgram(programId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_UNKNOWN value),
  }) {
    assert(openProgram != null);
    assert(unknown != null);
    return openProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openProgram(_OpenProgram value),
    TResult unknown(_UNKNOWN value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openProgram != null) {
      return openProgram(this);
    }
    return orElse();
  }
}

abstract class _OpenProgram implements NtfAction {
  const factory _OpenProgram(dynamic programId) = _$_OpenProgram;

  dynamic get programId;
  @JsonKey(ignore: true)
  _$OpenProgramCopyWith<_OpenProgram> get copyWith;
}

/// @nodoc
abstract class _$UNKNOWNCopyWith<$Res> {
  factory _$UNKNOWNCopyWith(_UNKNOWN value, $Res Function(_UNKNOWN) then) =
      __$UNKNOWNCopyWithImpl<$Res>;
}

/// @nodoc
class __$UNKNOWNCopyWithImpl<$Res> extends _$NtfActionCopyWithImpl<$Res>
    implements _$UNKNOWNCopyWith<$Res> {
  __$UNKNOWNCopyWithImpl(_UNKNOWN _value, $Res Function(_UNKNOWN) _then)
      : super(_value, (v) => _then(v as _UNKNOWN));

  @override
  _UNKNOWN get _value => super._value as _UNKNOWN;
}

/// @nodoc
class _$_UNKNOWN implements _UNKNOWN {
  const _$_UNKNOWN();

  @override
  String toString() {
    return 'NtfAction.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UNKNOWN);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openProgram(dynamic programId),
    @required TResult unknown(),
  }) {
    assert(openProgram != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openProgram(dynamic programId),
    TResult unknown(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_UNKNOWN value),
  }) {
    assert(openProgram != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openProgram(_OpenProgram value),
    TResult unknown(_UNKNOWN value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UNKNOWN implements NtfAction {
  const factory _UNKNOWN() = _$_UNKNOWN;
}
