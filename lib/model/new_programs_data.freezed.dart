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
class _$_NewProgramsData extends _NewProgramsData {
  _$_NewProgramsData({@required this.newPrograms})
      : assert(newPrograms != null),
        super._();

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

  @override
  _$NewProgramsDataCopyWith<_NewProgramsData> get copyWith =>
      __$NewProgramsDataCopyWithImpl<_NewProgramsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramsDataToJson(this);
  }
}

abstract class _NewProgramsData extends NewProgramsData {
  _NewProgramsData._() : super._();
  factory _NewProgramsData({@required NewPrograms newPrograms}) =
      _$_NewProgramsData;

  factory _NewProgramsData.fromJson(Map<String, dynamic> json) =
      _$_NewProgramsData.fromJson;

  @override
  NewPrograms get newPrograms;
  @override
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
      {@required List<Item> items,
      @required String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _NewPrograms(
      items: items,
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
  List<Item> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $NewProgramsCopyWith<NewPrograms> get copyWith;
}

/// @nodoc
abstract class $NewProgramsCopyWith<$Res> {
  factory $NewProgramsCopyWith(
          NewPrograms value, $Res Function(NewPrograms) then) =
      _$NewProgramsCopyWithImpl<$Res>;
  $Res call(
      {List<Item> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<Item>,
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
      {List<Item> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_NewPrograms(
      items: items == freezed ? _value.items : items as List<Item>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewPrograms implements _NewPrograms {
  _$_NewPrograms(
      {@required this.items,
      @required this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(items != null),
        assert(nextToken != null),
        assert(typename != null);

  factory _$_NewPrograms.fromJson(Map<String, dynamic> json) =>
      _$_$_NewProgramsFromJson(json);

  @override
  final List<Item> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'NewPrograms(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPrograms &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$NewProgramsCopyWith<_NewPrograms> get copyWith =>
      __$NewProgramsCopyWithImpl<_NewPrograms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewProgramsToJson(this);
  }
}

abstract class _NewPrograms implements NewPrograms {
  factory _NewPrograms(
      {@required List<Item> items,
      @required String nextToken,
      @required @JsonKey(name: '__typename') String typename}) = _$_NewPrograms;

  factory _NewPrograms.fromJson(Map<String, dynamic> json) =
      _$_NewPrograms.fromJson;

  @override
  List<Item> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$NewProgramsCopyWith<_NewPrograms> get copyWith;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required DateTime broadcastAt,
      @required String channelId,
      @required String id,
      @required int mainTime,
      @required DateTime releasedAt,
      @required String tenantId,
      @required String title,
      @required int totalPlayTime,
      String viewerPlanType,
      @required Channel channel,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Item(
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
  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  DateTime get broadcastAt;
  String get channelId;
  String get id;
  int get mainTime;
  DateTime get releasedAt;
  String get tenantId;
  String get title;
  int get totalPlayTime;
  String get viewerPlanType;
  Channel get channel;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {DateTime broadcastAt,
      String channelId,
      String id,
      int mainTime,
      DateTime releasedAt,
      String tenantId,
      String title,
      int totalPlayTime,
      String viewerPlanType,
      Channel channel,
      @JsonKey(name: '__typename') String typename});

  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

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
      channel: channel == freezed ? _value.channel : channel as Channel,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $ChannelCopyWith<$Res> get channel {
    if (_value.channel == null) {
      return null;
    }
    return $ChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
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
      String viewerPlanType,
      Channel channel,
      @JsonKey(name: '__typename') String typename});

  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

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
    return _then(_Item(
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
      channel: channel == freezed ? _value.channel : channel as Channel,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Item implements _Item {
  _$_Item(
      {@required this.broadcastAt,
      @required this.channelId,
      @required this.id,
      @required this.mainTime,
      @required this.releasedAt,
      @required this.tenantId,
      @required this.title,
      @required this.totalPlayTime,
      this.viewerPlanType,
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
        assert(typename != null);

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

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
  final String viewerPlanType;
  @override
  final Channel channel;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Item(broadcastAt: $broadcastAt, channelId: $channelId, id: $id, mainTime: $mainTime, releasedAt: $releasedAt, tenantId: $tenantId, title: $title, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, channel: $channel, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
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

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {@required DateTime broadcastAt,
      @required String channelId,
      @required String id,
      @required int mainTime,
      @required DateTime releasedAt,
      @required String tenantId,
      @required String title,
      @required int totalPlayTime,
      String viewerPlanType,
      @required Channel channel,
      @required @JsonKey(name: '__typename') String typename}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

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
  String get viewerPlanType;
  @override
  Channel get channel;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
class _$ChannelTearOff {
  const _$ChannelTearOff();

// ignore: unused_element
  _Channel call(
      {@required String id,
      @required String name,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Channel(
      id: id,
      name: name,
      typename: typename,
    );
  }

// ignore: unused_element
  Channel fromJson(Map<String, Object> json) {
    return Channel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  String get id;
  String get name;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $ChannelCopyWith<Channel> get copyWith;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

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
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object typename = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Channel implements _Channel {
  _$_Channel(
      {@required this.id,
      @required this.name,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(typename != null);

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channel &&
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

  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelToJson(this);
  }
}

abstract class _Channel implements Channel {
  factory _Channel(
      {@required String id,
      @required String name,
      @required @JsonKey(name: '__typename') String typename}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$ChannelCopyWith<_Channel> get copyWith;
}
