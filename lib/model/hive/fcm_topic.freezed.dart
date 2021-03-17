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
      {@HiveField(100)
      @protected
          Set<HiveFcmChannelData> rawSubscribingChannels = const {},
      @HiveField(101)
      @protected
          Set<HiveFcmProgramData> rawSubscribingPrograms = const {}}) {
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
  Set<HiveFcmChannelData> get rawSubscribingChannels;
  @HiveField(101)
  @protected
  Set<HiveFcmProgramData> get rawSubscribingPrograms;

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
          Set<HiveFcmChannelData> rawSubscribingChannels,
      @HiveField(101)
      @protected
          Set<HiveFcmProgramData> rawSubscribingPrograms});
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
          : rawSubscribingChannels as Set<HiveFcmChannelData>,
      rawSubscribingPrograms: rawSubscribingPrograms == freezed
          ? _value.rawSubscribingPrograms
          : rawSubscribingPrograms as Set<HiveFcmProgramData>,
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
          Set<HiveFcmChannelData> rawSubscribingChannels,
      @HiveField(101)
      @protected
          Set<HiveFcmProgramData> rawSubscribingPrograms});
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
          : rawSubscribingChannels as Set<HiveFcmChannelData>,
      rawSubscribingPrograms: rawSubscribingPrograms == freezed
          ? _value.rawSubscribingPrograms
          : rawSubscribingPrograms as Set<HiveFcmProgramData>,
    ));
  }
}

@HiveType(typeId: 100)

/// @nodoc
class _$_HiveFcmTopic extends _HiveFcmTopic {
  const _$_HiveFcmTopic(
      {@HiveField(100) @protected this.rawSubscribingChannels = const {},
      @HiveField(101) @protected this.rawSubscribingPrograms = const {}})
      : assert(rawSubscribingChannels != null),
        assert(rawSubscribingPrograms != null),
        super._();

  @JsonKey(defaultValue: const {})
  @override
  @HiveField(100)
  @protected
  final Set<HiveFcmChannelData> rawSubscribingChannels;
  @JsonKey(defaultValue: const {})
  @override
  @HiveField(101)
  @protected
  final Set<HiveFcmProgramData> rawSubscribingPrograms;

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
      {@HiveField(100)
      @protected
          Set<HiveFcmChannelData> rawSubscribingChannels,
      @HiveField(101)
      @protected
          Set<HiveFcmProgramData> rawSubscribingPrograms}) = _$_HiveFcmTopic;

  @override
  @HiveField(100)
  @protected
  Set<HiveFcmChannelData> get rawSubscribingChannels;
  @override
  @HiveField(101)
  @protected
  Set<HiveFcmProgramData> get rawSubscribingPrograms;
  @override
  @JsonKey(ignore: true)
  _$HiveFcmTopicCopyWith<_HiveFcmTopic> get copyWith;
}

/// @nodoc
class _$HiveFcmChannelDataTearOff {
  const _$HiveFcmChannelDataTearOff();

// ignore: unused_element
  _HiveFcmChannelData call(
      {@required @HiveField(200) String id,
      @required @HiveField(201) String name}) {
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
  @HiveField(200)
  String get id;
  @HiveField(201)
  String get name;

  @JsonKey(ignore: true)
  $HiveFcmChannelDataCopyWith<HiveFcmChannelData> get copyWith;
}

/// @nodoc
abstract class $HiveFcmChannelDataCopyWith<$Res> {
  factory $HiveFcmChannelDataCopyWith(
          HiveFcmChannelData value, $Res Function(HiveFcmChannelData) then) =
      _$HiveFcmChannelDataCopyWithImpl<$Res>;
  $Res call({@HiveField(200) String id, @HiveField(201) String name});
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
  $Res call({@HiveField(200) String id, @HiveField(201) String name});
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

@HiveType(typeId: 200)

/// @nodoc
class _$_HiveFcmChannelData implements _HiveFcmChannelData {
  const _$_HiveFcmChannelData(
      {@required @HiveField(200) this.id, @required @HiveField(201) this.name})
      : assert(id != null),
        assert(name != null);

  @override
  @HiveField(200)
  final String id;
  @override
  @HiveField(201)
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
      {@required @HiveField(200) String id,
      @required @HiveField(201) String name}) = _$_HiveFcmChannelData;

  @override
  @HiveField(200)
  String get id;
  @override
  @HiveField(201)
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
      {@required @HiveField(300) String id,
      @required @HiveField(301) String title,
      @required @HiveField(302) DateTime broadcastAt}) {
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
  @HiveField(300)
  String get id;
  @HiveField(301)
  String get title;
  @HiveField(302)
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
      {@HiveField(300) String id,
      @HiveField(301) String title,
      @HiveField(302) DateTime broadcastAt});
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
      {@HiveField(300) String id,
      @HiveField(301) String title,
      @HiveField(302) DateTime broadcastAt});
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

@HiveType(typeId: 300)

/// @nodoc
class _$_HiveFcmProgramData implements _HiveFcmProgramData {
  const _$_HiveFcmProgramData(
      {@required @HiveField(300) this.id,
      @required @HiveField(301) this.title,
      @required @HiveField(302) this.broadcastAt})
      : assert(id != null),
        assert(title != null),
        assert(broadcastAt != null);

  @override
  @HiveField(300)
  final String id;
  @override
  @HiveField(301)
  final String title;
  @override
  @HiveField(302)
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
      {@required @HiveField(300) String id,
      @required @HiveField(301) String title,
      @required @HiveField(302) DateTime broadcastAt}) = _$_HiveFcmProgramData;

  @override
  @HiveField(300)
  String get id;
  @override
  @HiveField(301)
  String get title;
  @override
  @HiveField(302)
  DateTime get broadcastAt;
  @override
  @JsonKey(ignore: true)
  _$HiveFcmProgramDataCopyWith<_HiveFcmProgramData> get copyWith;
}
