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
      {@required @protected String action,
      String channelId,
      String programId}) {
    return _NtfData(
      action: action,
      channelId: channelId,
      programId: programId,
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
  @protected
  String get action;
  String get channelId;
  String get programId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NtfDataCopyWith<NtfData> get copyWith;
}

/// @nodoc
abstract class $NtfDataCopyWith<$Res> {
  factory $NtfDataCopyWith(NtfData value, $Res Function(NtfData) then) =
      _$NtfDataCopyWithImpl<$Res>;
  $Res call({@protected String action, String channelId, String programId});
}

/// @nodoc
class _$NtfDataCopyWithImpl<$Res> implements $NtfDataCopyWith<$Res> {
  _$NtfDataCopyWithImpl(this._value, this._then);

  final NtfData _value;
  // ignore: unused_field
  final $Res Function(NtfData) _then;

  @override
  $Res call({
    Object action = freezed,
    Object channelId = freezed,
    Object programId = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed ? _value.action : action as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      programId: programId == freezed ? _value.programId : programId as String,
    ));
  }
}

/// @nodoc
abstract class _$NtfDataCopyWith<$Res> implements $NtfDataCopyWith<$Res> {
  factory _$NtfDataCopyWith(_NtfData value, $Res Function(_NtfData) then) =
      __$NtfDataCopyWithImpl<$Res>;
  @override
  $Res call({@protected String action, String channelId, String programId});
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
    Object action = freezed,
    Object channelId = freezed,
    Object programId = freezed,
  }) {
    return _then(_NtfData(
      action: action == freezed ? _value.action : action as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      programId: programId == freezed ? _value.programId : programId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NtfData extends _NtfData {
  const _$_NtfData(
      {@required @protected this.action, this.channelId, this.programId})
      : assert(action != null),
        super._();

  factory _$_NtfData.fromJson(Map<String, dynamic> json) =>
      _$_$_NtfDataFromJson(json);

  @override
  @protected
  final String action;
  @override
  final String channelId;
  @override
  final String programId;

  @override
  String toString() {
    return 'NtfData(action: $action, channelId: $channelId, programId: $programId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NtfData &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(programId);

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
      {@required @protected String action,
      String channelId,
      String programId}) = _$_NtfData;

  factory _NtfData.fromJson(Map<String, dynamic> json) = _$_NtfData.fromJson;

  @override
  @protected
  String get action;
  @override
  String get channelId;
  @override
  String get programId;
  @override
  @JsonKey(ignore: true)
  _$NtfDataCopyWith<_NtfData> get copyWith;
}

/// @nodoc
class _$NtfActionTearOff {
  const _$NtfActionTearOff();

// ignore: unused_element
  _OpenChannel openChannel({@required String channelId}) {
    return _OpenChannel(
      channelId: channelId,
    );
  }

// ignore: unused_element
  _OpenProgram openProgram({@required String programId}) {
    return _OpenProgram(
      programId: programId,
    );
  }

// ignore: unused_element
  _Unknown unknown() {
    return const _Unknown();
  }
}

/// @nodoc
// ignore: unused_element
const $NtfAction = _$NtfActionTearOff();

/// @nodoc
mixin _$NtfAction {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openChannel(String channelId),
    @required TResult openProgram(String programId),
    @required TResult unknown(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openChannel(String channelId),
    TResult openProgram(String programId),
    TResult unknown(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openChannel(_OpenChannel value),
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_Unknown value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openChannel(_OpenChannel value),
    TResult openProgram(_OpenProgram value),
    TResult unknown(_Unknown value),
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
abstract class _$OpenChannelCopyWith<$Res> {
  factory _$OpenChannelCopyWith(
          _OpenChannel value, $Res Function(_OpenChannel) then) =
      __$OpenChannelCopyWithImpl<$Res>;
  $Res call({String channelId});
}

/// @nodoc
class __$OpenChannelCopyWithImpl<$Res> extends _$NtfActionCopyWithImpl<$Res>
    implements _$OpenChannelCopyWith<$Res> {
  __$OpenChannelCopyWithImpl(
      _OpenChannel _value, $Res Function(_OpenChannel) _then)
      : super(_value, (v) => _then(v as _OpenChannel));

  @override
  _OpenChannel get _value => super._value as _OpenChannel;

  @override
  $Res call({
    Object channelId = freezed,
  }) {
    return _then(_OpenChannel(
      channelId: channelId == freezed ? _value.channelId : channelId as String,
    ));
  }
}

/// @nodoc
class _$_OpenChannel implements _OpenChannel {
  const _$_OpenChannel({@required this.channelId}) : assert(channelId != null);

  @override
  final String channelId;

  @override
  String toString() {
    return 'NtfAction.openChannel(channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenChannel &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channelId);

  @JsonKey(ignore: true)
  @override
  _$OpenChannelCopyWith<_OpenChannel> get copyWith =>
      __$OpenChannelCopyWithImpl<_OpenChannel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openChannel(String channelId),
    @required TResult openProgram(String programId),
    @required TResult unknown(),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return openChannel(channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openChannel(String channelId),
    TResult openProgram(String programId),
    TResult unknown(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openChannel != null) {
      return openChannel(channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openChannel(_OpenChannel value),
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_Unknown value),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return openChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openChannel(_OpenChannel value),
    TResult openProgram(_OpenProgram value),
    TResult unknown(_Unknown value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openChannel != null) {
      return openChannel(this);
    }
    return orElse();
  }
}

abstract class _OpenChannel implements NtfAction {
  const factory _OpenChannel({@required String channelId}) = _$_OpenChannel;

  String get channelId;
  @JsonKey(ignore: true)
  _$OpenChannelCopyWith<_OpenChannel> get copyWith;
}

/// @nodoc
abstract class _$OpenProgramCopyWith<$Res> {
  factory _$OpenProgramCopyWith(
          _OpenProgram value, $Res Function(_OpenProgram) then) =
      __$OpenProgramCopyWithImpl<$Res>;
  $Res call({String programId});
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
      programId: programId == freezed ? _value.programId : programId as String,
    ));
  }
}

/// @nodoc
class _$_OpenProgram implements _OpenProgram {
  const _$_OpenProgram({@required this.programId}) : assert(programId != null);

  @override
  final String programId;

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
    @required TResult openChannel(String channelId),
    @required TResult openProgram(String programId),
    @required TResult unknown(),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return openProgram(programId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openChannel(String channelId),
    TResult openProgram(String programId),
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
    @required TResult openChannel(_OpenChannel value),
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_Unknown value),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return openProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openChannel(_OpenChannel value),
    TResult openProgram(_OpenProgram value),
    TResult unknown(_Unknown value),
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
  const factory _OpenProgram({@required String programId}) = _$_OpenProgram;

  String get programId;
  @JsonKey(ignore: true)
  _$OpenProgramCopyWith<_OpenProgram> get copyWith;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$NtfActionCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc
class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'NtfAction.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openChannel(String channelId),
    @required TResult openProgram(String programId),
    @required TResult unknown(),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openChannel(String channelId),
    TResult openProgram(String programId),
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
    @required TResult openChannel(_OpenChannel value),
    @required TResult openProgram(_OpenProgram value),
    @required TResult unknown(_Unknown value),
  }) {
    assert(openChannel != null);
    assert(openProgram != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openChannel(_OpenChannel value),
    TResult openProgram(_OpenProgram value),
    TResult unknown(_Unknown value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements NtfAction {
  const factory _Unknown() = _$_Unknown;
}
