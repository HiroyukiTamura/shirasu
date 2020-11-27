// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'featured_programs_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FeatureProgramData _$FeatureProgramDataFromJson(Map<String, dynamic> json) {
  return _FeatureProgramData.fromJson(json);
}

/// @nodoc
class _$FeatureProgramDataTearOff {
  const _$FeatureProgramDataTearOff();

// ignore: unused_element
  _FeatureProgramData call(
      {@required Broadcastings nowBroadcastings,
      @required Broadcastings comingBroadcastings,
      @required ViewerUser viewerUser}) {
    return _FeatureProgramData(
      nowBroadcastings: nowBroadcastings,
      comingBroadcastings: comingBroadcastings,
      viewerUser: viewerUser,
    );
  }

// ignore: unused_element
  FeatureProgramData fromJson(Map<String, Object> json) {
    return FeatureProgramData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProgramData = _$FeatureProgramDataTearOff();

/// @nodoc
mixin _$FeatureProgramData {
  Broadcastings get nowBroadcastings;
  Broadcastings get comingBroadcastings;
  ViewerUser get viewerUser;

  Map<String, dynamic> toJson();
  $FeatureProgramDataCopyWith<FeatureProgramData> get copyWith;
}

/// @nodoc
abstract class $FeatureProgramDataCopyWith<$Res> {
  factory $FeatureProgramDataCopyWith(
          FeatureProgramData value, $Res Function(FeatureProgramData) then) =
      _$FeatureProgramDataCopyWithImpl<$Res>;
  $Res call(
      {Broadcastings nowBroadcastings,
      Broadcastings comingBroadcastings,
      ViewerUser viewerUser});

  $BroadcastingsCopyWith<$Res> get nowBroadcastings;
  $BroadcastingsCopyWith<$Res> get comingBroadcastings;
  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class _$FeatureProgramDataCopyWithImpl<$Res>
    implements $FeatureProgramDataCopyWith<$Res> {
  _$FeatureProgramDataCopyWithImpl(this._value, this._then);

  final FeatureProgramData _value;
  // ignore: unused_field
  final $Res Function(FeatureProgramData) _then;

  @override
  $Res call({
    Object nowBroadcastings = freezed,
    Object comingBroadcastings = freezed,
    Object viewerUser = freezed,
  }) {
    return _then(_value.copyWith(
      nowBroadcastings: nowBroadcastings == freezed
          ? _value.nowBroadcastings
          : nowBroadcastings as Broadcastings,
      comingBroadcastings: comingBroadcastings == freezed
          ? _value.comingBroadcastings
          : comingBroadcastings as Broadcastings,
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }

  @override
  $BroadcastingsCopyWith<$Res> get nowBroadcastings {
    if (_value.nowBroadcastings == null) {
      return null;
    }
    return $BroadcastingsCopyWith<$Res>(_value.nowBroadcastings, (value) {
      return _then(_value.copyWith(nowBroadcastings: value));
    });
  }

  @override
  $BroadcastingsCopyWith<$Res> get comingBroadcastings {
    if (_value.comingBroadcastings == null) {
      return null;
    }
    return $BroadcastingsCopyWith<$Res>(_value.comingBroadcastings, (value) {
      return _then(_value.copyWith(comingBroadcastings: value));
    });
  }

  @override
  $ViewerUserCopyWith<$Res> get viewerUser {
    if (_value.viewerUser == null) {
      return null;
    }
    return $ViewerUserCopyWith<$Res>(_value.viewerUser, (value) {
      return _then(_value.copyWith(viewerUser: value));
    });
  }
}

/// @nodoc
abstract class _$FeatureProgramDataCopyWith<$Res>
    implements $FeatureProgramDataCopyWith<$Res> {
  factory _$FeatureProgramDataCopyWith(
          _FeatureProgramData value, $Res Function(_FeatureProgramData) then) =
      __$FeatureProgramDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Broadcastings nowBroadcastings,
      Broadcastings comingBroadcastings,
      ViewerUser viewerUser});

  @override
  $BroadcastingsCopyWith<$Res> get nowBroadcastings;
  @override
  $BroadcastingsCopyWith<$Res> get comingBroadcastings;
  @override
  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class __$FeatureProgramDataCopyWithImpl<$Res>
    extends _$FeatureProgramDataCopyWithImpl<$Res>
    implements _$FeatureProgramDataCopyWith<$Res> {
  __$FeatureProgramDataCopyWithImpl(
      _FeatureProgramData _value, $Res Function(_FeatureProgramData) _then)
      : super(_value, (v) => _then(v as _FeatureProgramData));

  @override
  _FeatureProgramData get _value => super._value as _FeatureProgramData;

  @override
  $Res call({
    Object nowBroadcastings = freezed,
    Object comingBroadcastings = freezed,
    Object viewerUser = freezed,
  }) {
    return _then(_FeatureProgramData(
      nowBroadcastings: nowBroadcastings == freezed
          ? _value.nowBroadcastings
          : nowBroadcastings as Broadcastings,
      comingBroadcastings: comingBroadcastings == freezed
          ? _value.comingBroadcastings
          : comingBroadcastings as Broadcastings,
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeatureProgramData extends _FeatureProgramData
    with DiagnosticableTreeMixin {
  const _$_FeatureProgramData(
      {@required this.nowBroadcastings,
      @required this.comingBroadcastings,
      @required this.viewerUser})
      : assert(nowBroadcastings != null),
        assert(comingBroadcastings != null),
        assert(viewerUser != null),
        super._();

  factory _$_FeatureProgramData.fromJson(Map<String, dynamic> json) =>
      _$_$_FeatureProgramDataFromJson(json);

  @override
  final Broadcastings nowBroadcastings;
  @override
  final Broadcastings comingBroadcastings;
  @override
  final ViewerUser viewerUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeatureProgramData(nowBroadcastings: $nowBroadcastings, comingBroadcastings: $comingBroadcastings, viewerUser: $viewerUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeatureProgramData'))
      ..add(DiagnosticsProperty('nowBroadcastings', nowBroadcastings))
      ..add(DiagnosticsProperty('comingBroadcastings', comingBroadcastings))
      ..add(DiagnosticsProperty('viewerUser', viewerUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeatureProgramData &&
            (identical(other.nowBroadcastings, nowBroadcastings) ||
                const DeepCollectionEquality()
                    .equals(other.nowBroadcastings, nowBroadcastings)) &&
            (identical(other.comingBroadcastings, comingBroadcastings) ||
                const DeepCollectionEquality()
                    .equals(other.comingBroadcastings, comingBroadcastings)) &&
            (identical(other.viewerUser, viewerUser) ||
                const DeepCollectionEquality()
                    .equals(other.viewerUser, viewerUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nowBroadcastings) ^
      const DeepCollectionEquality().hash(comingBroadcastings) ^
      const DeepCollectionEquality().hash(viewerUser);

  @override
  _$FeatureProgramDataCopyWith<_FeatureProgramData> get copyWith =>
      __$FeatureProgramDataCopyWithImpl<_FeatureProgramData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeatureProgramDataToJson(this);
  }
}

abstract class _FeatureProgramData extends FeatureProgramData {
  const _FeatureProgramData._() : super._();
  const factory _FeatureProgramData(
      {@required Broadcastings nowBroadcastings,
      @required Broadcastings comingBroadcastings,
      @required ViewerUser viewerUser}) = _$_FeatureProgramData;

  factory _FeatureProgramData.fromJson(Map<String, dynamic> json) =
      _$_FeatureProgramData.fromJson;

  @override
  Broadcastings get nowBroadcastings;
  @override
  Broadcastings get comingBroadcastings;
  @override
  ViewerUser get viewerUser;
  @override
  _$FeatureProgramDataCopyWith<_FeatureProgramData> get copyWith;
}

Broadcastings _$BroadcastingsFromJson(Map<String, dynamic> json) {
  return _Broadcastings.fromJson(json);
}

/// @nodoc
class _$BroadcastingsTearOff {
  const _$BroadcastingsTearOff();

// ignore: unused_element
  _Broadcastings call(
      {@required
          List<Item> items,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "SearchableProgramConnection"')
          String typename}) {
    return _Broadcastings(
      items: items,
      typename: typename,
    );
  }

// ignore: unused_element
  Broadcastings fromJson(Map<String, Object> json) {
    return Broadcastings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Broadcastings = _$BroadcastingsTearOff();

/// @nodoc
mixin _$Broadcastings {
  List<Item> get items;
  @JsonKey(name: '__typename')
  @Assert('typename == "SearchableProgramConnection"')
  String get typename;

  Map<String, dynamic> toJson();
  $BroadcastingsCopyWith<Broadcastings> get copyWith;
}

/// @nodoc
abstract class $BroadcastingsCopyWith<$Res> {
  factory $BroadcastingsCopyWith(
          Broadcastings value, $Res Function(Broadcastings) then) =
      _$BroadcastingsCopyWithImpl<$Res>;
  $Res call(
      {List<Item> items,
      @JsonKey(name: '__typename')
      @Assert('typename == "SearchableProgramConnection"')
          String typename});
}

/// @nodoc
class _$BroadcastingsCopyWithImpl<$Res>
    implements $BroadcastingsCopyWith<$Res> {
  _$BroadcastingsCopyWithImpl(this._value, this._then);

  final Broadcastings _value;
  // ignore: unused_field
  final $Res Function(Broadcastings) _then;

  @override
  $Res call({
    Object items = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$BroadcastingsCopyWith<$Res>
    implements $BroadcastingsCopyWith<$Res> {
  factory _$BroadcastingsCopyWith(
          _Broadcastings value, $Res Function(_Broadcastings) then) =
      __$BroadcastingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Item> items,
      @JsonKey(name: '__typename')
      @Assert('typename == "SearchableProgramConnection"')
          String typename});
}

/// @nodoc
class __$BroadcastingsCopyWithImpl<$Res>
    extends _$BroadcastingsCopyWithImpl<$Res>
    implements _$BroadcastingsCopyWith<$Res> {
  __$BroadcastingsCopyWithImpl(
      _Broadcastings _value, $Res Function(_Broadcastings) _then)
      : super(_value, (v) => _then(v as _Broadcastings));

  @override
  _Broadcastings get _value => super._value as _Broadcastings;

  @override
  $Res call({
    Object items = freezed,
    Object typename = freezed,
  }) {
    return _then(_Broadcastings(
      items: items == freezed ? _value.items : items as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()
@Implements(BaseSearchableProgramConnection)

/// @nodoc
class _$_Broadcastings with DiagnosticableTreeMixin implements _Broadcastings {
  const _$_Broadcastings(
      {@required
          this.items,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "SearchableProgramConnection"')
          this.typename})
      : assert(items != null),
        assert(typename != null);

  factory _$_Broadcastings.fromJson(Map<String, dynamic> json) =>
      _$_$_BroadcastingsFromJson(json);

  @override
  final List<Item> items;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "SearchableProgramConnection"')
  final String typename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Broadcastings(items: $items, typename: $typename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Broadcastings'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('typename', typename));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Broadcastings &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$BroadcastingsCopyWith<_Broadcastings> get copyWith =>
      __$BroadcastingsCopyWithImpl<_Broadcastings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BroadcastingsToJson(this);
  }
}

abstract class _Broadcastings
    implements Broadcastings, BaseSearchableProgramConnection {
  const factory _Broadcastings(
      {@required
          List<Item> items,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "SearchableProgramConnection"')
          String typename}) = _$_Broadcastings;

  factory _Broadcastings.fromJson(Map<String, dynamic> json) =
      _$_Broadcastings.fromJson;

  @override
  List<Item> get items;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "SearchableProgramConnection"')
  String get typename;
  @override
  _$BroadcastingsCopyWith<_Broadcastings> get copyWith;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required
          DateTime broadcastAt,
      @required
          String channelId,
      @required
          String id,
      @required
          int mainTime,
      @required
          DateTime releasedAt,
      @required
          String tenantId,
      @required
          String title,
      @required
          int totalPlayTime,
      String viewerPlanType,
      @required
          Channel channel,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Program"')
          String typename}) {
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
  @Assert('typename == "Program"')
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
      @JsonKey(name: '__typename')
      @Assert('typename == "Program"')
          String typename});

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
      @JsonKey(name: '__typename')
      @Assert('typename == "Program"')
          String typename});

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
@Implements(BaseProgram)

/// @nodoc
class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(
      {@required
          this.broadcastAt,
      @required
          this.channelId,
      @required
          this.id,
      @required
          this.mainTime,
      @required
          this.releasedAt,
      @required
          this.tenantId,
      @required
          this.title,
      @required
          this.totalPlayTime,
      this.viewerPlanType,
      @required
          this.channel,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Program"')
          this.typename})
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
  @Assert('typename == "Program"')
  final String typename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(broadcastAt: $broadcastAt, channelId: $channelId, id: $id, mainTime: $mainTime, releasedAt: $releasedAt, tenantId: $tenantId, title: $title, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, channel: $channel, typename: $typename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('broadcastAt', broadcastAt))
      ..add(DiagnosticsProperty('channelId', channelId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mainTime', mainTime))
      ..add(DiagnosticsProperty('releasedAt', releasedAt))
      ..add(DiagnosticsProperty('tenantId', tenantId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('totalPlayTime', totalPlayTime))
      ..add(DiagnosticsProperty('viewerPlanType', viewerPlanType))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('typename', typename));
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

abstract class _Item implements Item, BaseProgram {
  const factory _Item(
      {@required
          DateTime broadcastAt,
      @required
          String channelId,
      @required
          String id,
      @required
          int mainTime,
      @required
          DateTime releasedAt,
      @required
          String tenantId,
      @required
          String title,
      @required
          int totalPlayTime,
      String viewerPlanType,
      @required
          Channel channel,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Program"')
          String typename}) = _$_Item;

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
  @Assert('typename == "Program"')
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
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Channel"')
          String typename}) {
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
  @Assert('typename == "Channel"')
  String get typename;

  Map<String, dynamic> toJson();
  $ChannelCopyWith<Channel> get copyWith;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: '__typename')
      @Assert('typename == "Channel"')
          String typename});
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
      {String id,
      String name,
      @JsonKey(name: '__typename')
      @Assert('typename == "Channel"')
          String typename});
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
@Implements(BaseChannel)

/// @nodoc
class _$_Channel with DiagnosticableTreeMixin implements _Channel {
  const _$_Channel(
      {@required
          this.id,
      @required
          this.name,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Channel"')
          this.typename})
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
  @Assert('typename == "Channel"')
  final String typename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Channel(id: $id, name: $name, typename: $typename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Channel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('typename', typename));
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

abstract class _Channel implements Channel, BaseChannel {
  const factory _Channel(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "Channel"')
          String typename}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "Channel"')
  String get typename;
  @override
  _$ChannelCopyWith<_Channel> get copyWith;
}

ViewerUser _$ViewerUserFromJson(Map<String, dynamic> json) {
  return _ViewerUser.fromJson(json);
}

/// @nodoc
class _$ViewerUserTearOff {
  const _$ViewerUserTearOff();

// ignore: unused_element
  _ViewerUser call(
      {@required
          String id,
      @required
          List<Item> subscribedPrograms,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) {
    return _ViewerUser(
      id: id,
      subscribedPrograms: subscribedPrograms,
      typename: typename,
    );
  }

// ignore: unused_element
  ViewerUser fromJson(Map<String, Object> json) {
    return ViewerUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerUser = _$ViewerUserTearOff();

/// @nodoc
mixin _$ViewerUser {
  String get id;
  List<Item> get subscribedPrograms;
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;

  Map<String, dynamic> toJson();
  $ViewerUserCopyWith<ViewerUser> get copyWith;
}

/// @nodoc
abstract class $ViewerUserCopyWith<$Res> {
  factory $ViewerUserCopyWith(
          ViewerUser value, $Res Function(ViewerUser) then) =
      _$ViewerUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<Item> subscribedPrograms,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});
}

/// @nodoc
class _$ViewerUserCopyWithImpl<$Res> implements $ViewerUserCopyWith<$Res> {
  _$ViewerUserCopyWithImpl(this._value, this._then);

  final ViewerUser _value;
  // ignore: unused_field
  final $Res Function(ViewerUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object subscribedPrograms = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      subscribedPrograms: subscribedPrograms == freezed
          ? _value.subscribedPrograms
          : subscribedPrograms as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ViewerUserCopyWith<$Res> implements $ViewerUserCopyWith<$Res> {
  factory _$ViewerUserCopyWith(
          _ViewerUser value, $Res Function(_ViewerUser) then) =
      __$ViewerUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<Item> subscribedPrograms,
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename});
}

/// @nodoc
class __$ViewerUserCopyWithImpl<$Res> extends _$ViewerUserCopyWithImpl<$Res>
    implements _$ViewerUserCopyWith<$Res> {
  __$ViewerUserCopyWithImpl(
      _ViewerUser _value, $Res Function(_ViewerUser) _then)
      : super(_value, (v) => _then(v as _ViewerUser));

  @override
  _ViewerUser get _value => super._value as _ViewerUser;

  @override
  $Res call({
    Object id = freezed,
    Object subscribedPrograms = freezed,
    Object typename = freezed,
  }) {
    return _then(_ViewerUser(
      id: id == freezed ? _value.id : id as String,
      subscribedPrograms: subscribedPrograms == freezed
          ? _value.subscribedPrograms
          : subscribedPrograms as List<Item>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()
@Implements(BaseUser)

/// @nodoc
class _$_ViewerUser with DiagnosticableTreeMixin implements _ViewerUser {
  const _$_ViewerUser(
      {@required
          this.id,
      @required
          this.subscribedPrograms,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          this.typename})
      : assert(id != null),
        assert(subscribedPrograms != null),
        assert(typename != null);

  factory _$_ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerUserFromJson(json);

  @override
  final String id;
  @override
  final List<Item> subscribedPrograms;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  final String typename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewerUser(id: $id, subscribedPrograms: $subscribedPrograms, typename: $typename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewerUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('subscribedPrograms', subscribedPrograms))
      ..add(DiagnosticsProperty('typename', typename));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subscribedPrograms, subscribedPrograms) ||
                const DeepCollectionEquality()
                    .equals(other.subscribedPrograms, subscribedPrograms)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subscribedPrograms) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$ViewerUserCopyWith<_ViewerUser> get copyWith =>
      __$ViewerUserCopyWithImpl<_ViewerUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerUserToJson(this);
  }
}

abstract class _ViewerUser implements ViewerUser, BaseUser {
  const factory _ViewerUser(
      {@required
          String id,
      @required
          List<Item> subscribedPrograms,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "User"')
          String typename}) = _$_ViewerUser;

  factory _ViewerUser.fromJson(Map<String, dynamic> json) =
      _$_ViewerUser.fromJson;

  @override
  String get id;
  @override
  List<Item> get subscribedPrograms;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "User"')
  String get typename;
  @override
  _$ViewerUserCopyWith<_ViewerUser> get copyWith;
}

Channels _$ChannelsFromJson(Map<String, dynamic> json) {
  return _Channels.fromJson(json);
}

/// @nodoc
class _$ChannelsTearOff {
  const _$ChannelsTearOff();

// ignore: unused_element
  _Channels call(
      {@required
          List<Channel> items,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelChannelConnection"')
          String typename}) {
    return _Channels(
      items: items,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  Channels fromJson(Map<String, Object> json) {
    return Channels.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Channels = _$ChannelsTearOff();

/// @nodoc
mixin _$Channels {
  List<Channel> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelChannelConnection"')
  String get typename;

  Map<String, dynamic> toJson();
  $ChannelsCopyWith<Channels> get copyWith;
}

/// @nodoc
abstract class $ChannelsCopyWith<$Res> {
  factory $ChannelsCopyWith(Channels value, $Res Function(Channels) then) =
      _$ChannelsCopyWithImpl<$Res>;
  $Res call(
      {List<Channel> items,
      String nextToken,
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelChannelConnection"')
          String typename});
}

/// @nodoc
class _$ChannelsCopyWithImpl<$Res> implements $ChannelsCopyWith<$Res> {
  _$ChannelsCopyWithImpl(this._value, this._then);

  final Channels _value;
  // ignore: unused_field
  final $Res Function(Channels) _then;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<Channel>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ChannelsCopyWith<$Res> implements $ChannelsCopyWith<$Res> {
  factory _$ChannelsCopyWith(_Channels value, $Res Function(_Channels) then) =
      __$ChannelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Channel> items,
      String nextToken,
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelChannelConnection"')
          String typename});
}

/// @nodoc
class __$ChannelsCopyWithImpl<$Res> extends _$ChannelsCopyWithImpl<$Res>
    implements _$ChannelsCopyWith<$Res> {
  __$ChannelsCopyWithImpl(_Channels _value, $Res Function(_Channels) _then)
      : super(_value, (v) => _then(v as _Channels));

  @override
  _Channels get _value => super._value as _Channels;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Channels(
      items: items == freezed ? _value.items : items as List<Channel>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()
@Implements(BaseModelChannelConnection)

/// @nodoc
class _$_Channels with DiagnosticableTreeMixin implements _Channels {
  const _$_Channels(
      {@required
          this.items,
      this.nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelChannelConnection"')
          this.typename})
      : assert(items != null),
        assert(typename != null);

  factory _$_Channels.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelsFromJson(json);

  @override
  final List<Channel> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelChannelConnection"')
  final String typename;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Channels(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Channels'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('nextToken', nextToken))
      ..add(DiagnosticsProperty('typename', typename));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channels &&
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
  _$ChannelsCopyWith<_Channels> get copyWith =>
      __$ChannelsCopyWithImpl<_Channels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelsToJson(this);
  }
}

abstract class _Channels implements Channels, BaseModelChannelConnection {
  const factory _Channels(
      {@required
          List<Channel> items,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
      @Assert('typename == "ModelChannelConnection"')
          String typename}) = _$_Channels;

  factory _Channels.fromJson(Map<String, dynamic> json) = _$_Channels.fromJson;

  @override
  List<Channel> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  @Assert('typename == "ModelChannelConnection"')
  String get typename;
  @override
  _$ChannelsCopyWith<_Channels> get copyWith;
}
