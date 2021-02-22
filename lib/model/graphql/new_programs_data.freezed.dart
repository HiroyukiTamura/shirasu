// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_programs_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewProgramsData _$NewProgramsDataFromJson(Map<String, dynamic> json) {
  return _NewProgramsData.fromJson(json);
}

/// @nodoc
class _$NewProgramsDataTearOff {
  const _$NewProgramsDataTearOff();

// ignore: unused_element
  _NewProgramsData call({@required NewPrograms newPrograms}) {
    return _NewProgramsData(
      newPrograms: newPrograms,
    );
  }

// ignore: unused_element
  NewProgramsData fromJson(Map<String, Object> json) {
    return NewProgramsData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewProgramsData = _$NewProgramsDataTearOff();

/// @nodoc
mixin _$NewProgramsData {
  NewPrograms get newPrograms;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewProgramsDataCopyWith<NewProgramsData> get copyWith;
}

/// @nodoc
abstract class $NewProgramsDataCopyWith<$Res> {
  factory $NewProgramsDataCopyWith(
          NewProgramsData value, $Res Function(NewProgramsData) then) =
      _$NewProgramsDataCopyWithImpl<$Res>;
  $Res call({NewPrograms newPrograms});

  $NewProgramsCopyWith<$Res> get newPrograms;
}

/// @nodoc
class _$NewProgramsDataCopyWithImpl<$Res>
    implements $NewProgramsDataCopyWith<$Res> {
  _$NewProgramsDataCopyWithImpl(this._value, this._then);

  final NewProgramsData _value;
  // ignore: unused_field
  final $Res Function(NewProgramsData) _then;

  @override
  $Res call({
    Object newPrograms = freezed,
  }) {
    return _then(_value.copyWith(
      newPrograms: newPrograms == freezed
          ? _value.newPrograms
          : newPrograms as NewPrograms,
    ));
  }

  @override
  $NewProgramsCopyWith<$Res> get newPrograms {
    if (_value.newPrograms == null) {
      return null;
    }
    return $NewProgramsCopyWith<$Res>(_value.newPrograms, (value) {
      return _then(_value.copyWith(newPrograms: value));
    });
  }
}

/// @nodoc
abstract class _$NewProgramsDataCopyWith<$Res>
    implements $NewProgramsDataCopyWith<$Res> {
  factory _$NewProgramsDataCopyWith(
          _NewProgramsData value, $Res Function(_NewProgramsData) then) =
      __$NewProgramsDataCopyWithImpl<$Res>;
  @override
  $Res call({NewPrograms newPrograms});

  @override
  $NewProgramsCopyWith<$Res> get newPrograms;
}

/// @nodoc
class __$NewProgramsDataCopyWithImpl<$Res>
    extends _$NewProgramsDataCopyWithImpl<$Res>
    implements _$NewProgramsDataCopyWith<$Res> {
  __$NewProgramsDataCopyWithImpl(
      _NewProgramsData _value, $Res Function(_NewProgramsData) _then)
      : super(_value, (v) => _then(v as _NewProgramsData));

  @override
  _NewProgramsData get _value => super._value as _NewProgramsData;

  @override
  $Res call({
    Object newPrograms = freezed,
  }) {
    return _then(_NewProgramsData(
      newPrograms: newPrograms == freezed
          ? _value.newPrograms
          : newPrograms as NewPrograms,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewProgramsData implements _NewProgramsData {
  const _$_NewProgramsData({@required this.newPrograms})
      : assert(newPrograms != null);

  factory _$_NewProgramsData.fromJson(Map<String, dynamic> json) =>
      _$_$_NewProgramsDataFromJson(json);

  @override
  final NewPrograms newPrograms;

  @override
  String toString() {
    return 'NewProgramsData(newPrograms: $newPrograms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewProgramsData &&
            (identical(other.newPrograms, newPrograms) ||
                const DeepCollectionEquality()
                    .equals(other.newPrograms, newPrograms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newPrograms);

  @JsonKey(ignore: true)
  @override
  _$NewProgramsDataCopyWith<_NewProgramsData> get copyWith =>
      __$NewProgramsDataCopyWithImpl<_NewProgramsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramsDataToJson(this);
  }
}

abstract class _NewProgramsData implements NewProgramsData {
  const factory _NewProgramsData({@required NewPrograms newPrograms}) =
      _$_NewProgramsData;

  factory _NewProgramsData.fromJson(Map<String, dynamic> json) =
      _$_NewProgramsData.fromJson;

  @override
  NewPrograms get newPrograms;
  @override
  @JsonKey(ignore: true)
  _$NewProgramsDataCopyWith<_NewProgramsData> get copyWith;
}

NewPrograms _$NewProgramsFromJson(Map<String, dynamic> json) {
  return _NewPrograms.fromJson(json);
}

/// @nodoc
class _$NewProgramsTearOff {
  const _$NewProgramsTearOff();

// ignore: unused_element
  _NewPrograms call(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<NewProgramItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _NewPrograms(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  NewPrograms fromJson(Map<String, Object> json) {
    return NewPrograms.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewPrograms = _$NewProgramsTearOff();

/// @nodoc
mixin _$NewPrograms {
  @JsonKey(name: 'items')
  @protected
  List<NewProgramItem> get rawItems;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewProgramsCopyWith<NewPrograms> get copyWith;
}

/// @nodoc
abstract class $NewProgramsCopyWith<$Res> {
  factory $NewProgramsCopyWith(
          NewPrograms value, $Res Function(NewPrograms) then) =
      _$NewProgramsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<NewProgramItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$NewProgramsCopyWithImpl<$Res> implements $NewProgramsCopyWith<$Res> {
  _$NewProgramsCopyWithImpl(this._value, this._then);

  final NewPrograms _value;
  // ignore: unused_field
  final $Res Function(NewPrograms) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<NewProgramItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$NewProgramsCopyWith<$Res>
    implements $NewProgramsCopyWith<$Res> {
  factory _$NewProgramsCopyWith(
          _NewPrograms value, $Res Function(_NewPrograms) then) =
      __$NewProgramsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<NewProgramItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$NewProgramsCopyWithImpl<$Res> extends _$NewProgramsCopyWithImpl<$Res>
    implements _$NewProgramsCopyWith<$Res> {
  __$NewProgramsCopyWithImpl(
      _NewPrograms _value, $Res Function(_NewPrograms) _then)
      : super(_value, (v) => _then(v as _NewPrograms));

  @override
  _NewPrograms get _value => super._value as _NewPrograms;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_NewPrograms(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<NewProgramItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewPrograms extends _NewPrograms {
  const _$_NewPrograms(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "SearchableProgramConnection"),
        super._();

  factory _$_NewPrograms.fromJson(Map<String, dynamic> json) =>
      _$_$_NewProgramsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<NewProgramItem> rawItems;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'NewPrograms(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPrograms &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
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
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$NewProgramsCopyWith<_NewPrograms> get copyWith =>
      __$NewProgramsCopyWithImpl<_NewPrograms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramsToJson(this);
  }
}

abstract class _NewPrograms extends NewPrograms {
  const _NewPrograms._() : super._();
  const factory _NewPrograms(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<NewProgramItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_NewPrograms;

  factory _NewPrograms.fromJson(Map<String, dynamic> json) =
      _$_NewPrograms.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<NewProgramItem> get rawItems;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$NewProgramsCopyWith<_NewPrograms> get copyWith;
}

NewProgramItem _$NewProgramItemFromJson(Map<String, dynamic> json) {
  return _NewProgramItem.fromJson(json);
}

/// @nodoc
class _$NewProgramItemTearOff {
  const _$NewProgramItemTearOff();

// ignore: unused_element
  _NewProgramItem call(
      {@required DateTime broadcastAt,
      @required String channelId,
      @required String id,
      @required int mainTime,
      @required DateTime releasedAt,
      @required String tenantId,
      @required String title,
      @required int totalPlayTime,
      @visibleForOverriding String viewerPlanType,
      @required NewProgramChannel channel,
      @required @JsonKey(name: '__typename') String typename}) {
    return _NewProgramItem(
      broadcastAt: broadcastAt,
      channelId: channelId,
      id: id,
      mainTime: mainTime,
      releasedAt: releasedAt,
      tenantId: tenantId,
      title: title,
      totalPlayTime: totalPlayTime,
      viewerPlanType: viewerPlanType,
      channel: channel,
      typename: typename,
    );
  }

// ignore: unused_element
  NewProgramItem fromJson(Map<String, Object> json) {
    return NewProgramItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewProgramItem = _$NewProgramItemTearOff();

/// @nodoc
mixin _$NewProgramItem {
  DateTime get broadcastAt;
  String get channelId;
  String get id;
  int get mainTime;
  DateTime get releasedAt;
  String get tenantId;
  String get title;
  int get totalPlayTime;
  @visibleForOverriding
  String get viewerPlanType;
  NewProgramChannel get channel;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewProgramItemCopyWith<NewProgramItem> get copyWith;
}

/// @nodoc
abstract class $NewProgramItemCopyWith<$Res> {
  factory $NewProgramItemCopyWith(
          NewProgramItem value, $Res Function(NewProgramItem) then) =
      _$NewProgramItemCopyWithImpl<$Res>;
  $Res call(
      {DateTime broadcastAt,
      String channelId,
      String id,
      int mainTime,
      DateTime releasedAt,
      String tenantId,
      String title,
      int totalPlayTime,
      @visibleForOverriding String viewerPlanType,
      NewProgramChannel channel,
      @JsonKey(name: '__typename') String typename});

  $NewProgramChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$NewProgramItemCopyWithImpl<$Res>
    implements $NewProgramItemCopyWith<$Res> {
  _$NewProgramItemCopyWithImpl(this._value, this._then);

  final NewProgramItem _value;
  // ignore: unused_field
  final $Res Function(NewProgramItem) _then;

  @override
  $Res call({
    Object broadcastAt = freezed,
    Object channelId = freezed,
    Object id = freezed,
    Object mainTime = freezed,
    Object releasedAt = freezed,
    Object tenantId = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object channel = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      id: id == freezed ? _value.id : id as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      releasedAt:
          releasedAt == freezed ? _value.releasedAt : releasedAt as DateTime,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      title: title == freezed ? _value.title : title as String,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      channel:
          channel == freezed ? _value.channel : channel as NewProgramChannel,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $NewProgramChannelCopyWith<$Res> get channel {
    if (_value.channel == null) {
      return null;
    }
    return $NewProgramChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }
}

/// @nodoc
abstract class _$NewProgramItemCopyWith<$Res>
    implements $NewProgramItemCopyWith<$Res> {
  factory _$NewProgramItemCopyWith(
          _NewProgramItem value, $Res Function(_NewProgramItem) then) =
      __$NewProgramItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime broadcastAt,
      String channelId,
      String id,
      int mainTime,
      DateTime releasedAt,
      String tenantId,
      String title,
      int totalPlayTime,
      @visibleForOverriding String viewerPlanType,
      NewProgramChannel channel,
      @JsonKey(name: '__typename') String typename});

  @override
  $NewProgramChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$NewProgramItemCopyWithImpl<$Res>
    extends _$NewProgramItemCopyWithImpl<$Res>
    implements _$NewProgramItemCopyWith<$Res> {
  __$NewProgramItemCopyWithImpl(
      _NewProgramItem _value, $Res Function(_NewProgramItem) _then)
      : super(_value, (v) => _then(v as _NewProgramItem));

  @override
  _NewProgramItem get _value => super._value as _NewProgramItem;

  @override
  $Res call({
    Object broadcastAt = freezed,
    Object channelId = freezed,
    Object id = freezed,
    Object mainTime = freezed,
    Object releasedAt = freezed,
    Object tenantId = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object channel = freezed,
    Object typename = freezed,
  }) {
    return _then(_NewProgramItem(
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      id: id == freezed ? _value.id : id as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      releasedAt:
          releasedAt == freezed ? _value.releasedAt : releasedAt as DateTime,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      title: title == freezed ? _value.title : title as String,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      channel:
          channel == freezed ? _value.channel : channel as NewProgramChannel,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewProgramItem implements _NewProgramItem {
  const _$_NewProgramItem(
      {@required this.broadcastAt,
      @required this.channelId,
      @required this.id,
      @required this.mainTime,
      @required this.releasedAt,
      @required this.tenantId,
      @required this.title,
      @required this.totalPlayTime,
      @visibleForOverriding this.viewerPlanType,
      @required this.channel,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(broadcastAt != null),
        assert(channelId != null),
        assert(id != null),
        assert(mainTime != null),
        assert(releasedAt != null),
        assert(tenantId != null),
        assert(title != null),
        assert(totalPlayTime != null),
        assert(channel != null),
        assert(typename != null),
        assert(typename == "Program");

  factory _$_NewProgramItem.fromJson(Map<String, dynamic> json) =>
      _$_$_NewProgramItemFromJson(json);

  @override
  final DateTime broadcastAt;
  @override
  final String channelId;
  @override
  final String id;
  @override
  final int mainTime;
  @override
  final DateTime releasedAt;
  @override
  final String tenantId;
  @override
  final String title;
  @override
  final int totalPlayTime;
  @override
  @visibleForOverriding
  final String viewerPlanType;
  @override
  final NewProgramChannel channel;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'NewProgramItem(broadcastAt: $broadcastAt, channelId: $channelId, id: $id, mainTime: $mainTime, releasedAt: $releasedAt, tenantId: $tenantId, title: $title, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, channel: $channel, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewProgramItem &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mainTime, mainTime) ||
                const DeepCollectionEquality()
                    .equals(other.mainTime, mainTime)) &&
            (identical(other.releasedAt, releasedAt) ||
                const DeepCollectionEquality()
                    .equals(other.releasedAt, releasedAt)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.totalPlayTime, totalPlayTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalPlayTime, totalPlayTime)) &&
            (identical(other.viewerPlanType, viewerPlanType) ||
                const DeepCollectionEquality()
                    .equals(other.viewerPlanType, viewerPlanType)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mainTime) ^
      const DeepCollectionEquality().hash(releasedAt) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalPlayTime) ^
      const DeepCollectionEquality().hash(viewerPlanType) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$NewProgramItemCopyWith<_NewProgramItem> get copyWith =>
      __$NewProgramItemCopyWithImpl<_NewProgramItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramItemToJson(this);
  }
}

abstract class _NewProgramItem implements NewProgramItem {
  const factory _NewProgramItem(
          {@required DateTime broadcastAt,
          @required String channelId,
          @required String id,
          @required int mainTime,
          @required DateTime releasedAt,
          @required String tenantId,
          @required String title,
          @required int totalPlayTime,
          @visibleForOverriding String viewerPlanType,
          @required NewProgramChannel channel,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_NewProgramItem;

  factory _NewProgramItem.fromJson(Map<String, dynamic> json) =
      _$_NewProgramItem.fromJson;

  @override
  DateTime get broadcastAt;
  @override
  String get channelId;
  @override
  String get id;
  @override
  int get mainTime;
  @override
  DateTime get releasedAt;
  @override
  String get tenantId;
  @override
  String get title;
  @override
  int get totalPlayTime;
  @override
  @visibleForOverriding
  String get viewerPlanType;
  @override
  NewProgramChannel get channel;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$NewProgramItemCopyWith<_NewProgramItem> get copyWith;
}

NewProgramChannel _$NewProgramChannelFromJson(Map<String, dynamic> json) {
  return _NewProgramChannel.fromJson(json);
}

/// @nodoc
class _$NewProgramChannelTearOff {
  const _$NewProgramChannelTearOff();

// ignore: unused_element
  _NewProgramChannel call(
      {@required String id,
      @required String name,
      @required @JsonKey(name: '__typename') String typename}) {
    return _NewProgramChannel(
      id: id,
      name: name,
      typename: typename,
    );
  }

// ignore: unused_element
  NewProgramChannel fromJson(Map<String, Object> json) {
    return NewProgramChannel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewProgramChannel = _$NewProgramChannelTearOff();

/// @nodoc
mixin _$NewProgramChannel {
  String get id;
  String get name;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewProgramChannelCopyWith<NewProgramChannel> get copyWith;
}

/// @nodoc
abstract class $NewProgramChannelCopyWith<$Res> {
  factory $NewProgramChannelCopyWith(
          NewProgramChannel value, $Res Function(NewProgramChannel) then) =
      _$NewProgramChannelCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$NewProgramChannelCopyWithImpl<$Res>
    implements $NewProgramChannelCopyWith<$Res> {
  _$NewProgramChannelCopyWithImpl(this._value, this._then);

  final NewProgramChannel _value;
  // ignore: unused_field
  final $Res Function(NewProgramChannel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$NewProgramChannelCopyWith<$Res>
    implements $NewProgramChannelCopyWith<$Res> {
  factory _$NewProgramChannelCopyWith(
          _NewProgramChannel value, $Res Function(_NewProgramChannel) then) =
      __$NewProgramChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$NewProgramChannelCopyWithImpl<$Res>
    extends _$NewProgramChannelCopyWithImpl<$Res>
    implements _$NewProgramChannelCopyWith<$Res> {
  __$NewProgramChannelCopyWithImpl(
      _NewProgramChannel _value, $Res Function(_NewProgramChannel) _then)
      : super(_value, (v) => _then(v as _NewProgramChannel));

  @override
  _NewProgramChannel get _value => super._value as _NewProgramChannel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object typename = freezed,
  }) {
    return _then(_NewProgramChannel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewProgramChannel implements _NewProgramChannel {
  const _$_NewProgramChannel(
      {@required this.id,
      @required this.name,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(typename != null),
        assert(typename == "Channel");

  factory _$_NewProgramChannel.fromJson(Map<String, dynamic> json) =>
      _$_$_NewProgramChannelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'NewProgramChannel(id: $id, name: $name, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewProgramChannel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$NewProgramChannelCopyWith<_NewProgramChannel> get copyWith =>
      __$NewProgramChannelCopyWithImpl<_NewProgramChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramChannelToJson(this);
  }
}

abstract class _NewProgramChannel implements NewProgramChannel {
  const factory _NewProgramChannel(
          {@required String id,
          @required String name,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_NewProgramChannel;

  factory _NewProgramChannel.fromJson(Map<String, dynamic> json) =
      _$_NewProgramChannel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$NewProgramChannelCopyWith<_NewProgramChannel> get copyWith;
}
