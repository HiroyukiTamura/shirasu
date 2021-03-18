// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fcm_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HiveFcmTopicTearOff {
  const _$HiveFcmTopicTearOff();

// ignore: unused_element
  _HiveFcmTopic call(
      {@required
      @HiveField(100)
      @protected
          Map<String, HiveFcmChannelData> rawSubscribingChannels,
      @required
      @HiveField(101)
      @protected
          Map<String, HiveFcmProgramData> rawSubscribingPrograms}) {
    return _HiveFcmTopic(
      rawSubscribingChannels: rawSubscribingChannels,
      rawSubscribingPrograms: rawSubscribingPrograms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveFcmTopic = _$HiveFcmTopicTearOff();

/// @nodoc
mixin _$HiveFcmTopic {
  @HiveField(100)
  @protected
  Map<String, HiveFcmChannelData> get rawSubscribingChannels;
  @HiveField(101)
  @protected
  Map<String, HiveFcmProgramData> get rawSubscribingPrograms;

  @JsonKey(ignore: true)
  $HiveFcmTopicCopyWith<HiveFcmTopic> get copyWith;
}

/// @nodoc
abstract class $HiveFcmTopicCopyWith<$Res> {
  factory $HiveFcmTopicCopyWith(
          HiveFcmTopic value, $Res Function(HiveFcmTopic) then) =
      _$HiveFcmTopicCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(100)
      @protected
          Map<String, HiveFcmChannelData> rawSubscribingChannels,
      @HiveField(101)
      @protected
          Map<String, HiveFcmProgramData> rawSubscribingPrograms});
}

/// @nodoc
class _$HiveFcmTopicCopyWithImpl<$Res> implements $HiveFcmTopicCopyWith<$Res> {
  _$HiveFcmTopicCopyWithImpl(this._value, this._then);

  final HiveFcmTopic _value;
  // ignore: unused_field
  final $Res Function(HiveFcmTopic) _then;

  @override
  $Res call({
    Object rawSubscribingChannels = freezed,
    Object rawSubscribingPrograms = freezed,
  }) {
    return _then(_value.copyWith(
      rawSubscribingChannels: rawSubscribingChannels == freezed
          ? _value.rawSubscribingChannels
          : rawSubscribingChannels as Map<String, HiveFcmChannelData>,
      rawSubscribingPrograms: rawSubscribingPrograms == freezed
          ? _value.rawSubscribingPrograms
          : rawSubscribingPrograms as Map<String, HiveFcmProgramData>,
    ));
  }
}

/// @nodoc
abstract class _$HiveFcmTopicCopyWith<$Res>
    implements $HiveFcmTopicCopyWith<$Res> {
  factory _$HiveFcmTopicCopyWith(
          _HiveFcmTopic value, $Res Function(_HiveFcmTopic) then) =
      __$HiveFcmTopicCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(100)
      @protected
          Map<String, HiveFcmChannelData> rawSubscribingChannels,
      @HiveField(101)
      @protected
          Map<String, HiveFcmProgramData> rawSubscribingPrograms});
}

/// @nodoc
class __$HiveFcmTopicCopyWithImpl<$Res> extends _$HiveFcmTopicCopyWithImpl<$Res>
    implements _$HiveFcmTopicCopyWith<$Res> {
  __$HiveFcmTopicCopyWithImpl(
      _HiveFcmTopic _value, $Res Function(_HiveFcmTopic) _then)
      : super(_value, (v) => _then(v as _HiveFcmTopic));

  @override
  _HiveFcmTopic get _value => super._value as _HiveFcmTopic;

  @override
  $Res call({
    Object rawSubscribingChannels = freezed,
    Object rawSubscribingPrograms = freezed,
  }) {
    return _then(_HiveFcmTopic(
      rawSubscribingChannels: rawSubscribingChannels == freezed
          ? _value.rawSubscribingChannels
          : rawSubscribingChannels as Map<String, HiveFcmChannelData>,
      rawSubscribingPrograms: rawSubscribingPrograms == freezed
          ? _value.rawSubscribingPrograms
          : rawSubscribingPrograms as Map<String, HiveFcmProgramData>,
    ));
  }
}

@protected
@HiveType(typeId: 10)

/// @nodoc
class _$_HiveFcmTopic extends _HiveFcmTopic {
  const _$_HiveFcmTopic(
      {@required @HiveField(100) @protected this.rawSubscribingChannels,
      @required @HiveField(101) @protected this.rawSubscribingPrograms})
      : assert(rawSubscribingChannels != null),
        assert(rawSubscribingPrograms != null),
        super._();

  @override
  @HiveField(100)
  @protected
  final Map<String, HiveFcmChannelData> rawSubscribingChannels;
  @override
  @HiveField(101)
  @protected
  final Map<String, HiveFcmProgramData> rawSubscribingPrograms;

  @override
  String toString() {
    return 'HiveFcmTopic(rawSubscribingChannels: $rawSubscribingChannels, rawSubscribingPrograms: $rawSubscribingPrograms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveFcmTopic &&
            (identical(other.rawSubscribingChannels, rawSubscribingChannels) ||
                const DeepCollectionEquality().equals(
                    other.rawSubscribingChannels, rawSubscribingChannels)) &&
            (identical(other.rawSubscribingPrograms, rawSubscribingPrograms) ||
                const DeepCollectionEquality().equals(
                    other.rawSubscribingPrograms, rawSubscribingPrograms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawSubscribingChannels) ^
      const DeepCollectionEquality().hash(rawSubscribingPrograms);

  @JsonKey(ignore: true)
  @override
  _$HiveFcmTopicCopyWith<_HiveFcmTopic> get copyWith =>
      __$HiveFcmTopicCopyWithImpl<_HiveFcmTopic>(this, _$identity);
}

abstract class _HiveFcmTopic extends HiveFcmTopic {
  const _HiveFcmTopic._() : super._();
  const factory _HiveFcmTopic(
          {@required
          @HiveField(100)
          @protected
              Map<String, HiveFcmChannelData> rawSubscribingChannels,
          @required
          @HiveField(101)
          @protected
              Map<String, HiveFcmProgramData> rawSubscribingPrograms}) =
      _$_HiveFcmTopic;

  @override
  @HiveField(100)
  @protected
  Map<String, HiveFcmChannelData> get rawSubscribingChannels;
  @override
  @HiveField(101)
  @protected
  Map<String, HiveFcmProgramData> get rawSubscribingPrograms;
  @override
  @JsonKey(ignore: true)
  _$HiveFcmTopicCopyWith<_HiveFcmTopic> get copyWith;
}

/// @nodoc
class _$PrgIdAndChannelIdTearOff {
  const _$PrgIdAndChannelIdTearOff();

// ignore: unused_element
  _PrgIdAndChannelId call(
      {@required String programId, @required String channelId}) {
    return _PrgIdAndChannelId(
      programId: programId,
      channelId: channelId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrgIdAndChannelId = _$PrgIdAndChannelIdTearOff();

/// @nodoc
mixin _$PrgIdAndChannelId {
  String get programId;
  String get channelId;

  @JsonKey(ignore: true)
  $PrgIdAndChannelIdCopyWith<PrgIdAndChannelId> get copyWith;
}

/// @nodoc
abstract class $PrgIdAndChannelIdCopyWith<$Res> {
  factory $PrgIdAndChannelIdCopyWith(
          PrgIdAndChannelId value, $Res Function(PrgIdAndChannelId) then) =
      _$PrgIdAndChannelIdCopyWithImpl<$Res>;
  $Res call({String programId, String channelId});
}

/// @nodoc
class _$PrgIdAndChannelIdCopyWithImpl<$Res>
    implements $PrgIdAndChannelIdCopyWith<$Res> {
  _$PrgIdAndChannelIdCopyWithImpl(this._value, this._then);

  final PrgIdAndChannelId _value;
  // ignore: unused_field
  final $Res Function(PrgIdAndChannelId) _then;

  @override
  $Res call({
    Object programId = freezed,
    Object channelId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: programId == freezed ? _value.programId : programId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
    ));
  }
}

/// @nodoc
abstract class _$PrgIdAndChannelIdCopyWith<$Res>
    implements $PrgIdAndChannelIdCopyWith<$Res> {
  factory _$PrgIdAndChannelIdCopyWith(
          _PrgIdAndChannelId value, $Res Function(_PrgIdAndChannelId) then) =
      __$PrgIdAndChannelIdCopyWithImpl<$Res>;
  @override
  $Res call({String programId, String channelId});
}

/// @nodoc
class __$PrgIdAndChannelIdCopyWithImpl<$Res>
    extends _$PrgIdAndChannelIdCopyWithImpl<$Res>
    implements _$PrgIdAndChannelIdCopyWith<$Res> {
  __$PrgIdAndChannelIdCopyWithImpl(
      _PrgIdAndChannelId _value, $Res Function(_PrgIdAndChannelId) _then)
      : super(_value, (v) => _then(v as _PrgIdAndChannelId));

  @override
  _PrgIdAndChannelId get _value => super._value as _PrgIdAndChannelId;

  @override
  $Res call({
    Object programId = freezed,
    Object channelId = freezed,
  }) {
    return _then(_PrgIdAndChannelId(
      programId: programId == freezed ? _value.programId : programId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
    ));
  }
}

/// @nodoc
class _$_PrgIdAndChannelId implements _PrgIdAndChannelId {
  const _$_PrgIdAndChannelId(
      {@required this.programId, @required this.channelId})
      : assert(programId != null),
        assert(channelId != null);

  @override
  final String programId;
  @override
  final String channelId;

  @override
  String toString() {
    return 'PrgIdAndChannelId(programId: $programId, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrgIdAndChannelId &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programId) ^
      const DeepCollectionEquality().hash(channelId);

  @JsonKey(ignore: true)
  @override
  _$PrgIdAndChannelIdCopyWith<_PrgIdAndChannelId> get copyWith =>
      __$PrgIdAndChannelIdCopyWithImpl<_PrgIdAndChannelId>(this, _$identity);
}

abstract class _PrgIdAndChannelId implements PrgIdAndChannelId {
  const factory _PrgIdAndChannelId(
      {@required String programId,
      @required String channelId}) = _$_PrgIdAndChannelId;

  @override
  String get programId;
  @override
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$PrgIdAndChannelIdCopyWith<_PrgIdAndChannelId> get copyWith;
}

/// @nodoc
class _$FcmSubscribingStatusTearOff {
  const _$FcmSubscribingStatusTearOff();

// ignore: unused_element
  _Channel channel() {
    return const _Channel();
  }

// ignore: unused_element
  _Program program() {
    return const _Program();
  }

// ignore: unused_element
  _None none() {
    return const _None();
  }
}

/// @nodoc
// ignore: unused_element
const $FcmSubscribingStatus = _$FcmSubscribingStatusTearOff();

/// @nodoc
mixin _$FcmSubscribingStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult channel(),
    @required TResult program(),
    @required TResult none(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult channel(),
    TResult program(),
    TResult none(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult channel(_Channel value),
    @required TResult program(_Program value),
    @required TResult none(_None value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult channel(_Channel value),
    TResult program(_Program value),
    TResult none(_None value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FcmSubscribingStatusCopyWith<$Res> {
  factory $FcmSubscribingStatusCopyWith(FcmSubscribingStatus value,
          $Res Function(FcmSubscribingStatus) then) =
      _$FcmSubscribingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$FcmSubscribingStatusCopyWithImpl<$Res>
    implements $FcmSubscribingStatusCopyWith<$Res> {
  _$FcmSubscribingStatusCopyWithImpl(this._value, this._then);

  final FcmSubscribingStatus _value;
  // ignore: unused_field
  final $Res Function(FcmSubscribingStatus) _then;
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res>
    extends _$FcmSubscribingStatusCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;
}

/// @nodoc
class _$_Channel extends _Channel {
  const _$_Channel() : super._();

  @override
  String toString() {
    return 'FcmSubscribingStatus.channel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Channel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult channel(),
    @required TResult program(),
    @required TResult none(),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return channel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult channel(),
    TResult program(),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (channel != null) {
      return channel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult channel(_Channel value),
    @required TResult program(_Program value),
    @required TResult none(_None value),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return channel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult channel(_Channel value),
    TResult program(_Program value),
    TResult none(_None value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (channel != null) {
      return channel(this);
    }
    return orElse();
  }
}

abstract class _Channel extends FcmSubscribingStatus {
  const _Channel._() : super._();
  const factory _Channel() = _$_Channel;
}

/// @nodoc
abstract class _$ProgramCopyWith<$Res> {
  factory _$ProgramCopyWith(_Program value, $Res Function(_Program) then) =
      __$ProgramCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProgramCopyWithImpl<$Res>
    extends _$FcmSubscribingStatusCopyWithImpl<$Res>
    implements _$ProgramCopyWith<$Res> {
  __$ProgramCopyWithImpl(_Program _value, $Res Function(_Program) _then)
      : super(_value, (v) => _then(v as _Program));

  @override
  _Program get _value => super._value as _Program;
}

/// @nodoc
class _$_Program extends _Program {
  const _$_Program() : super._();

  @override
  String toString() {
    return 'FcmSubscribingStatus.program()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Program);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult channel(),
    @required TResult program(),
    @required TResult none(),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return program();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult channel(),
    TResult program(),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (program != null) {
      return program();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult channel(_Channel value),
    @required TResult program(_Program value),
    @required TResult none(_None value),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return program(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult channel(_Channel value),
    TResult program(_Program value),
    TResult none(_None value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (program != null) {
      return program(this);
    }
    return orElse();
  }
}

abstract class _Program extends FcmSubscribingStatus {
  const _Program._() : super._();
  const factory _Program() = _$_Program;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$FcmSubscribingStatusCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
class _$_None extends _None {
  const _$_None() : super._();

  @override
  String toString() {
    return 'FcmSubscribingStatus.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult channel(),
    @required TResult program(),
    @required TResult none(),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult channel(),
    TResult program(),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult channel(_Channel value),
    @required TResult program(_Program value),
    @required TResult none(_None value),
  }) {
    assert(channel != null);
    assert(program != null);
    assert(none != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult channel(_Channel value),
    TResult program(_Program value),
    TResult none(_None value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends FcmSubscribingStatus {
  const _None._() : super._();
  const factory _None() = _$_None;
}

/// @nodoc
class _$HiveFcmChannelDataTearOff {
  const _$HiveFcmChannelDataTearOff();

// ignore: unused_element
  _HiveFcmChannelData call(
      {@required @HiveField(110) String id,
      @required @HiveField(111) String name}) {
    return _HiveFcmChannelData(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveFcmChannelData = _$HiveFcmChannelDataTearOff();

/// @nodoc
mixin _$HiveFcmChannelData {
  @HiveField(110)
  String get id;
  @HiveField(111)
  String get name;

  @JsonKey(ignore: true)
  $HiveFcmChannelDataCopyWith<HiveFcmChannelData> get copyWith;
}

/// @nodoc
abstract class $HiveFcmChannelDataCopyWith<$Res> {
  factory $HiveFcmChannelDataCopyWith(
          HiveFcmChannelData value, $Res Function(HiveFcmChannelData) then) =
      _$HiveFcmChannelDataCopyWithImpl<$Res>;
  $Res call({@HiveField(110) String id, @HiveField(111) String name});
}

/// @nodoc
class _$HiveFcmChannelDataCopyWithImpl<$Res>
    implements $HiveFcmChannelDataCopyWith<$Res> {
  _$HiveFcmChannelDataCopyWithImpl(this._value, this._then);

  final HiveFcmChannelData _value;
  // ignore: unused_field
  final $Res Function(HiveFcmChannelData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$HiveFcmChannelDataCopyWith<$Res>
    implements $HiveFcmChannelDataCopyWith<$Res> {
  factory _$HiveFcmChannelDataCopyWith(
          _HiveFcmChannelData value, $Res Function(_HiveFcmChannelData) then) =
      __$HiveFcmChannelDataCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(110) String id, @HiveField(111) String name});
}

/// @nodoc
class __$HiveFcmChannelDataCopyWithImpl<$Res>
    extends _$HiveFcmChannelDataCopyWithImpl<$Res>
    implements _$HiveFcmChannelDataCopyWith<$Res> {
  __$HiveFcmChannelDataCopyWithImpl(
      _HiveFcmChannelData _value, $Res Function(_HiveFcmChannelData) _then)
      : super(_value, (v) => _then(v as _HiveFcmChannelData));

  @override
  _HiveFcmChannelData get _value => super._value as _HiveFcmChannelData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_HiveFcmChannelData(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@HiveType(typeId: 11)

/// @nodoc
class _$_HiveFcmChannelData implements _HiveFcmChannelData {
  const _$_HiveFcmChannelData(
      {@required @HiveField(110) this.id, @required @HiveField(111) this.name})
      : assert(id != null),
        assert(name != null);

  @override
  @HiveField(110)
  final String id;
  @override
  @HiveField(111)
  final String name;

  @override
  String toString() {
    return 'HiveFcmChannelData(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveFcmChannelData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$HiveFcmChannelDataCopyWith<_HiveFcmChannelData> get copyWith =>
      __$HiveFcmChannelDataCopyWithImpl<_HiveFcmChannelData>(this, _$identity);
}

abstract class _HiveFcmChannelData implements HiveFcmChannelData {
  const factory _HiveFcmChannelData(
      {@required @HiveField(110) String id,
      @required @HiveField(111) String name}) = _$_HiveFcmChannelData;

  @override
  @HiveField(110)
  String get id;
  @override
  @HiveField(111)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$HiveFcmChannelDataCopyWith<_HiveFcmChannelData> get copyWith;
}

/// @nodoc
class _$HiveFcmProgramDataTearOff {
  const _$HiveFcmProgramDataTearOff();

// ignore: unused_element
  _HiveFcmProgramData call(
      {@required @HiveField(120) String id,
      @required @HiveField(121) String title,
      @required @HiveField(122) DateTime broadcastAt}) {
    return _HiveFcmProgramData(
      id: id,
      title: title,
      broadcastAt: broadcastAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveFcmProgramData = _$HiveFcmProgramDataTearOff();

/// @nodoc
mixin _$HiveFcmProgramData {
  @HiveField(120)
  String get id;
  @HiveField(121)
  String get title;
  @HiveField(122)
  DateTime get broadcastAt;

  @JsonKey(ignore: true)
  $HiveFcmProgramDataCopyWith<HiveFcmProgramData> get copyWith;
}

/// @nodoc
abstract class $HiveFcmProgramDataCopyWith<$Res> {
  factory $HiveFcmProgramDataCopyWith(
          HiveFcmProgramData value, $Res Function(HiveFcmProgramData) then) =
      _$HiveFcmProgramDataCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(120) String id,
      @HiveField(121) String title,
      @HiveField(122) DateTime broadcastAt});
}

/// @nodoc
class _$HiveFcmProgramDataCopyWithImpl<$Res>
    implements $HiveFcmProgramDataCopyWith<$Res> {
  _$HiveFcmProgramDataCopyWithImpl(this._value, this._then);

  final HiveFcmProgramData _value;
  // ignore: unused_field
  final $Res Function(HiveFcmProgramData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object broadcastAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$HiveFcmProgramDataCopyWith<$Res>
    implements $HiveFcmProgramDataCopyWith<$Res> {
  factory _$HiveFcmProgramDataCopyWith(
          _HiveFcmProgramData value, $Res Function(_HiveFcmProgramData) then) =
      __$HiveFcmProgramDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(120) String id,
      @HiveField(121) String title,
      @HiveField(122) DateTime broadcastAt});
}

/// @nodoc
class __$HiveFcmProgramDataCopyWithImpl<$Res>
    extends _$HiveFcmProgramDataCopyWithImpl<$Res>
    implements _$HiveFcmProgramDataCopyWith<$Res> {
  __$HiveFcmProgramDataCopyWithImpl(
      _HiveFcmProgramData _value, $Res Function(_HiveFcmProgramData) _then)
      : super(_value, (v) => _then(v as _HiveFcmProgramData));

  @override
  _HiveFcmProgramData get _value => super._value as _HiveFcmProgramData;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object broadcastAt = freezed,
  }) {
    return _then(_HiveFcmProgramData(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
    ));
  }
}

@HiveType(typeId: 12)

/// @nodoc
class _$_HiveFcmProgramData implements _HiveFcmProgramData {
  const _$_HiveFcmProgramData(
      {@required @HiveField(120) this.id,
      @required @HiveField(121) this.title,
      @required @HiveField(122) this.broadcastAt})
      : assert(id != null),
        assert(title != null),
        assert(broadcastAt != null);

  @override
  @HiveField(120)
  final String id;
  @override
  @HiveField(121)
  final String title;
  @override
  @HiveField(122)
  final DateTime broadcastAt;

  @override
  String toString() {
    return 'HiveFcmProgramData(id: $id, title: $title, broadcastAt: $broadcastAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveFcmProgramData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(broadcastAt);

  @JsonKey(ignore: true)
  @override
  _$HiveFcmProgramDataCopyWith<_HiveFcmProgramData> get copyWith =>
      __$HiveFcmProgramDataCopyWithImpl<_HiveFcmProgramData>(this, _$identity);
}

abstract class _HiveFcmProgramData implements HiveFcmProgramData {
  const factory _HiveFcmProgramData(
      {@required @HiveField(120) String id,
      @required @HiveField(121) String title,
      @required @HiveField(122) DateTime broadcastAt}) = _$_HiveFcmProgramData;

  @override
  @HiveField(120)
  String get id;
  @override
  @HiveField(121)
  String get title;
  @override
  @HiveField(122)
  DateTime get broadcastAt;
  @override
  @JsonKey(ignore: true)
  _$HiveFcmProgramDataCopyWith<_HiveFcmProgramData> get copyWith;
}
