// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'channel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChannelData _$ChannelDataFromJson(Map<String, dynamic> json) {
  return _ChannelData.fromJson(json);
}

/// @nodoc
class _$ChannelDataTearOff {
  const _$ChannelDataTearOff();

// ignore: unused_element
  _ChannelData call({@required Channel channel}) {
    return _ChannelData(
      channel: channel,
    );
  }

// ignore: unused_element
  ChannelData fromJson(Map<String, Object> json) {
    return ChannelData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelData = _$ChannelDataTearOff();

/// @nodoc
mixin _$ChannelData {
  Channel get channel;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ChannelDataCopyWith<ChannelData> get copyWith;
}

/// @nodoc
abstract class $ChannelDataCopyWith<$Res> {
  factory $ChannelDataCopyWith(
          ChannelData value, $Res Function(ChannelData) then) =
      _$ChannelDataCopyWithImpl<$Res>;
  $Res call({Channel channel});

  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$ChannelDataCopyWithImpl<$Res> implements $ChannelDataCopyWith<$Res> {
  _$ChannelDataCopyWithImpl(this._value, this._then);

  final ChannelData _value;
  // ignore: unused_field
  final $Res Function(ChannelData) _then;

  @override
  $Res call({
    Object channel = freezed,
  }) {
    return _then(_value.copyWith(
      channel: channel == freezed ? _value.channel : channel as Channel,
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
abstract class _$ChannelDataCopyWith<$Res>
    implements $ChannelDataCopyWith<$Res> {
  factory _$ChannelDataCopyWith(
          _ChannelData value, $Res Function(_ChannelData) then) =
      __$ChannelDataCopyWithImpl<$Res>;
  @override
  $Res call({Channel channel});

  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$ChannelDataCopyWithImpl<$Res> extends _$ChannelDataCopyWithImpl<$Res>
    implements _$ChannelDataCopyWith<$Res> {
  __$ChannelDataCopyWithImpl(
      _ChannelData _value, $Res Function(_ChannelData) _then)
      : super(_value, (v) => _then(v as _ChannelData));

  @override
  _ChannelData get _value => super._value as _ChannelData;

  @override
  $Res call({
    Object channel = freezed,
  }) {
    return _then(_ChannelData(
      channel: channel == freezed ? _value.channel : channel as Channel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChannelData implements _ChannelData {
  const _$_ChannelData({@required this.channel}) : assert(channel != null);

  factory _$_ChannelData.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelDataFromJson(json);

  @override
  final Channel channel;

  @override
  String toString() {
    return 'ChannelData(channel: $channel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelData &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality().equals(other.channel, channel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channel);

  @JsonKey(ignore: true)
  @override
  _$ChannelDataCopyWith<_ChannelData> get copyWith =>
      __$ChannelDataCopyWithImpl<_ChannelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelDataToJson(this);
  }
}

abstract class _ChannelData implements ChannelData {
  const factory _ChannelData({@required Channel channel}) = _$_ChannelData;

  factory _ChannelData.fromJson(Map<String, dynamic> json) =
      _$_ChannelData.fromJson;

  @override
  Channel get channel;
  @override
  @JsonKey(ignore: true)
  _$ChannelDataCopyWith<_ChannelData> get copyWith;
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
      @Deprecated('no need to use') dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      @required String detail,
      @required @JsonKey(name: '__typename') String typename,
      @required SubscriptionPlan subscriptionPlan,
      @required ChannelPrograms programs,
      @required Announcements announcements}) {
    return _Channel(
      id: id,
      name: name,
      icon: icon,
      twitterUrl: twitterUrl,
      facebookUrl: facebookUrl,
      textOnPurchaseScreen: textOnPurchaseScreen,
      detail: detail,
      typename: typename,
      subscriptionPlan: subscriptionPlan,
      programs: programs,
      announcements: announcements,
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
  @Deprecated('no need to use')
  dynamic get icon;
  String get twitterUrl;
  String get facebookUrl;
  String get textOnPurchaseScreen;
  String get detail;
  @JsonKey(name: '__typename')
  String get typename;
  SubscriptionPlan get subscriptionPlan;
  ChannelPrograms get programs;
  Announcements get announcements;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @Deprecated('no need to use') dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      String detail,
      @JsonKey(name: '__typename') String typename,
      SubscriptionPlan subscriptionPlan,
      ChannelPrograms programs,
      Announcements announcements});

  $SubscriptionPlanCopyWith<$Res> get subscriptionPlan;
  $ChannelProgramsCopyWith<$Res> get programs;
  $AnnouncementsCopyWith<$Res> get announcements;
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
    Object icon = freezed,
    Object twitterUrl = freezed,
    Object facebookUrl = freezed,
    Object textOnPurchaseScreen = freezed,
    Object detail = freezed,
    Object typename = freezed,
    Object subscriptionPlan = freezed,
    Object programs = freezed,
    Object announcements = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as dynamic,
      twitterUrl:
          twitterUrl == freezed ? _value.twitterUrl : twitterUrl as String,
      facebookUrl:
          facebookUrl == freezed ? _value.facebookUrl : facebookUrl as String,
      textOnPurchaseScreen: textOnPurchaseScreen == freezed
          ? _value.textOnPurchaseScreen
          : textOnPurchaseScreen as String,
      detail: detail == freezed ? _value.detail : detail as String,
      typename: typename == freezed ? _value.typename : typename as String,
      subscriptionPlan: subscriptionPlan == freezed
          ? _value.subscriptionPlan
          : subscriptionPlan as SubscriptionPlan,
      programs:
          programs == freezed ? _value.programs : programs as ChannelPrograms,
      announcements: announcements == freezed
          ? _value.announcements
          : announcements as Announcements,
    ));
  }

  @override
  $SubscriptionPlanCopyWith<$Res> get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }
    return $SubscriptionPlanCopyWith<$Res>(_value.subscriptionPlan, (value) {
      return _then(_value.copyWith(subscriptionPlan: value));
    });
  }

  @override
  $ChannelProgramsCopyWith<$Res> get programs {
    if (_value.programs == null) {
      return null;
    }
    return $ChannelProgramsCopyWith<$Res>(_value.programs, (value) {
      return _then(_value.copyWith(programs: value));
    });
  }

  @override
  $AnnouncementsCopyWith<$Res> get announcements {
    if (_value.announcements == null) {
      return null;
    }
    return $AnnouncementsCopyWith<$Res>(_value.announcements, (value) {
      return _then(_value.copyWith(announcements: value));
    });
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
      @Deprecated('no need to use') dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      String detail,
      @JsonKey(name: '__typename') String typename,
      SubscriptionPlan subscriptionPlan,
      ChannelPrograms programs,
      Announcements announcements});

  @override
  $SubscriptionPlanCopyWith<$Res> get subscriptionPlan;
  @override
  $ChannelProgramsCopyWith<$Res> get programs;
  @override
  $AnnouncementsCopyWith<$Res> get announcements;
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
    Object icon = freezed,
    Object twitterUrl = freezed,
    Object facebookUrl = freezed,
    Object textOnPurchaseScreen = freezed,
    Object detail = freezed,
    Object typename = freezed,
    Object subscriptionPlan = freezed,
    Object programs = freezed,
    Object announcements = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as dynamic,
      twitterUrl:
          twitterUrl == freezed ? _value.twitterUrl : twitterUrl as String,
      facebookUrl:
          facebookUrl == freezed ? _value.facebookUrl : facebookUrl as String,
      textOnPurchaseScreen: textOnPurchaseScreen == freezed
          ? _value.textOnPurchaseScreen
          : textOnPurchaseScreen as String,
      detail: detail == freezed ? _value.detail : detail as String,
      typename: typename == freezed ? _value.typename : typename as String,
      subscriptionPlan: subscriptionPlan == freezed
          ? _value.subscriptionPlan
          : subscriptionPlan as SubscriptionPlan,
      programs:
          programs == freezed ? _value.programs : programs as ChannelPrograms,
      announcements: announcements == freezed
          ? _value.announcements
          : announcements as Announcements,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Channel extends _Channel {
  const _$_Channel(
      {@required this.id,
      @required this.name,
      @Deprecated('no need to use') this.icon,
      this.twitterUrl,
      this.facebookUrl,
      this.textOnPurchaseScreen,
      @required this.detail,
      @required @JsonKey(name: '__typename') this.typename,
      @required this.subscriptionPlan,
      @required this.programs,
      @required this.announcements})
      : assert(id != null),
        assert(name != null),
        assert(detail != null),
        assert(typename != null),
        assert(subscriptionPlan != null),
        assert(programs != null),
        assert(announcements != null),
        assert(typename == "Channel"),
        super._();

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @Deprecated('no need to use')
  final dynamic icon;
  @override
  final String twitterUrl;
  @override
  final String facebookUrl;
  @override
  final String textOnPurchaseScreen;
  @override
  final String detail;
  @override
  @JsonKey(name: '__typename')
  final String typename;
  @override
  final SubscriptionPlan subscriptionPlan;
  @override
  final ChannelPrograms programs;
  @override
  final Announcements announcements;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, icon: $icon, twitterUrl: $twitterUrl, facebookUrl: $facebookUrl, textOnPurchaseScreen: $textOnPurchaseScreen, detail: $detail, typename: $typename, subscriptionPlan: $subscriptionPlan, programs: $programs, announcements: $announcements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.twitterUrl, twitterUrl) ||
                const DeepCollectionEquality()
                    .equals(other.twitterUrl, twitterUrl)) &&
            (identical(other.facebookUrl, facebookUrl) ||
                const DeepCollectionEquality()
                    .equals(other.facebookUrl, facebookUrl)) &&
            (identical(other.textOnPurchaseScreen, textOnPurchaseScreen) ||
                const DeepCollectionEquality().equals(
                    other.textOnPurchaseScreen, textOnPurchaseScreen)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionPlan, subscriptionPlan)) &&
            (identical(other.programs, programs) ||
                const DeepCollectionEquality()
                    .equals(other.programs, programs)) &&
            (identical(other.announcements, announcements) ||
                const DeepCollectionEquality()
                    .equals(other.announcements, announcements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(twitterUrl) ^
      const DeepCollectionEquality().hash(facebookUrl) ^
      const DeepCollectionEquality().hash(textOnPurchaseScreen) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(typename) ^
      const DeepCollectionEquality().hash(subscriptionPlan) ^
      const DeepCollectionEquality().hash(programs) ^
      const DeepCollectionEquality().hash(announcements);

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelToJson(this);
  }
}

abstract class _Channel extends Channel {
  const _Channel._() : super._();
  const factory _Channel(
      {@required String id,
      @required String name,
      @Deprecated('no need to use') dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      @required String detail,
      @required @JsonKey(name: '__typename') String typename,
      @required SubscriptionPlan subscriptionPlan,
      @required ChannelPrograms programs,
      @required Announcements announcements}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @Deprecated('no need to use')
  dynamic get icon;
  @override
  String get twitterUrl;
  @override
  String get facebookUrl;
  @override
  String get textOnPurchaseScreen;
  @override
  String get detail;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  SubscriptionPlan get subscriptionPlan;
  @override
  ChannelPrograms get programs;
  @override
  Announcements get announcements;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith;
}

Announcements _$AnnouncementsFromJson(Map<String, dynamic> json) {
  return _Announcements.fromJson(json);
}

/// @nodoc
class _$AnnouncementsTearOff {
  const _$AnnouncementsTearOff();

// ignore: unused_element
  _Announcements call(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<AnnouncementsItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _Announcements(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  Announcements fromJson(Map<String, Object> json) {
    return Announcements.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Announcements = _$AnnouncementsTearOff();

/// @nodoc
mixin _$Announcements {
  @JsonKey(name: 'items')
  @protected
  List<AnnouncementsItem> get rawItems;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AnnouncementsCopyWith<Announcements> get copyWith;
}

/// @nodoc
abstract class $AnnouncementsCopyWith<$Res> {
  factory $AnnouncementsCopyWith(
          Announcements value, $Res Function(Announcements) then) =
      _$AnnouncementsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<AnnouncementsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$AnnouncementsCopyWithImpl<$Res>
    implements $AnnouncementsCopyWith<$Res> {
  _$AnnouncementsCopyWithImpl(this._value, this._then);

  final Announcements _value;
  // ignore: unused_field
  final $Res Function(Announcements) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<AnnouncementsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementsCopyWith<$Res>
    implements $AnnouncementsCopyWith<$Res> {
  factory _$AnnouncementsCopyWith(
          _Announcements value, $Res Function(_Announcements) then) =
      __$AnnouncementsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<AnnouncementsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$AnnouncementsCopyWithImpl<$Res>
    extends _$AnnouncementsCopyWithImpl<$Res>
    implements _$AnnouncementsCopyWith<$Res> {
  __$AnnouncementsCopyWithImpl(
      _Announcements _value, $Res Function(_Announcements) _then)
      : super(_value, (v) => _then(v as _Announcements));

  @override
  _Announcements get _value => super._value as _Announcements;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Announcements(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<AnnouncementsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Announcements extends _Announcements {
  const _$_Announcements(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ModelChannelAnnouncementConnection"),
        super._();

  factory _$_Announcements.fromJson(Map<String, dynamic> json) =>
      _$_$_AnnouncementsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<AnnouncementsItem> rawItems;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Announcements(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Announcements &&
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
  _$AnnouncementsCopyWith<_Announcements> get copyWith =>
      __$AnnouncementsCopyWithImpl<_Announcements>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementsToJson(this);
  }
}

abstract class _Announcements extends Announcements {
  const _Announcements._() : super._();
  const factory _Announcements(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<AnnouncementsItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_Announcements;

  factory _Announcements.fromJson(Map<String, dynamic> json) =
      _$_Announcements.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<AnnouncementsItem> get rawItems;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementsCopyWith<_Announcements> get copyWith;
}

AnnouncementsItem _$AnnouncementsItemFromJson(Map<String, dynamic> json) {
  return _AnnouncementsItem.fromJson(json);
}

/// @nodoc
class _$AnnouncementsItemTearOff {
  const _$AnnouncementsItemTearOff();

// ignore: unused_element
  _AnnouncementsItem call(
      {@required String id,
      @required bool isOpen,
      @required bool isSubscriberOnly,
      @required String title,
      @required String text,
      @required DateTime publishedAt,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _AnnouncementsItem(
      id: id,
      isOpen: isOpen,
      isSubscriberOnly: isSubscriberOnly,
      title: title,
      text: text,
      publishedAt: publishedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      typename: typename,
    );
  }

// ignore: unused_element
  AnnouncementsItem fromJson(Map<String, Object> json) {
    return AnnouncementsItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AnnouncementsItem = _$AnnouncementsItemTearOff();

/// @nodoc
mixin _$AnnouncementsItem {
  String get id;
  bool get isOpen;
  bool get isSubscriberOnly;
  String get title;
  String get text;
  DateTime get publishedAt;
  DateTime get createdAt;
  DateTime get updatedAt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AnnouncementsItemCopyWith<AnnouncementsItem> get copyWith;
}

/// @nodoc
abstract class $AnnouncementsItemCopyWith<$Res> {
  factory $AnnouncementsItemCopyWith(
          AnnouncementsItem value, $Res Function(AnnouncementsItem) then) =
      _$AnnouncementsItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isOpen,
      bool isSubscriberOnly,
      String title,
      String text,
      DateTime publishedAt,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$AnnouncementsItemCopyWithImpl<$Res>
    implements $AnnouncementsItemCopyWith<$Res> {
  _$AnnouncementsItemCopyWithImpl(this._value, this._then);

  final AnnouncementsItem _value;
  // ignore: unused_field
  final $Res Function(AnnouncementsItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isOpen = freezed,
    Object isSubscriberOnly = freezed,
    Object title = freezed,
    Object text = freezed,
    Object publishedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      isSubscriberOnly: isSubscriberOnly == freezed
          ? _value.isSubscriberOnly
          : isSubscriberOnly as bool,
      title: title == freezed ? _value.title : title as String,
      text: text == freezed ? _value.text : text as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementsItemCopyWith<$Res>
    implements $AnnouncementsItemCopyWith<$Res> {
  factory _$AnnouncementsItemCopyWith(
          _AnnouncementsItem value, $Res Function(_AnnouncementsItem) then) =
      __$AnnouncementsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isOpen,
      bool isSubscriberOnly,
      String title,
      String text,
      DateTime publishedAt,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$AnnouncementsItemCopyWithImpl<$Res>
    extends _$AnnouncementsItemCopyWithImpl<$Res>
    implements _$AnnouncementsItemCopyWith<$Res> {
  __$AnnouncementsItemCopyWithImpl(
      _AnnouncementsItem _value, $Res Function(_AnnouncementsItem) _then)
      : super(_value, (v) => _then(v as _AnnouncementsItem));

  @override
  _AnnouncementsItem get _value => super._value as _AnnouncementsItem;

  @override
  $Res call({
    Object id = freezed,
    Object isOpen = freezed,
    Object isSubscriberOnly = freezed,
    Object title = freezed,
    Object text = freezed,
    Object publishedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_AnnouncementsItem(
      id: id == freezed ? _value.id : id as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      isSubscriberOnly: isSubscriberOnly == freezed
          ? _value.isSubscriberOnly
          : isSubscriberOnly as bool,
      title: title == freezed ? _value.title : title as String,
      text: text == freezed ? _value.text : text as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AnnouncementsItem implements _AnnouncementsItem {
  const _$_AnnouncementsItem(
      {@required this.id,
      @required this.isOpen,
      @required this.isSubscriberOnly,
      @required this.title,
      @required this.text,
      @required this.publishedAt,
      @required this.createdAt,
      @required this.updatedAt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(isOpen != null),
        assert(isSubscriberOnly != null),
        assert(title != null),
        assert(text != null),
        assert(publishedAt != null),
        assert(createdAt != null),
        assert(updatedAt != null),
        assert(typename != null),
        assert(typename == "ChannelAnnouncement");

  factory _$_AnnouncementsItem.fromJson(Map<String, dynamic> json) =>
      _$_$_AnnouncementsItemFromJson(json);

  @override
  final String id;
  @override
  final bool isOpen;
  @override
  final bool isSubscriberOnly;
  @override
  final String title;
  @override
  final String text;
  @override
  final DateTime publishedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'AnnouncementsItem(id: $id, isOpen: $isOpen, isSubscriberOnly: $isSubscriberOnly, title: $title, text: $text, publishedAt: $publishedAt, createdAt: $createdAt, updatedAt: $updatedAt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementsItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.isSubscriberOnly, isSubscriberOnly) ||
                const DeepCollectionEquality()
                    .equals(other.isSubscriberOnly, isSubscriberOnly)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(isSubscriberOnly) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementsItemCopyWith<_AnnouncementsItem> get copyWith =>
      __$AnnouncementsItemCopyWithImpl<_AnnouncementsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementsItemToJson(this);
  }
}

abstract class _AnnouncementsItem implements AnnouncementsItem {
  const factory _AnnouncementsItem(
          {@required String id,
          @required bool isOpen,
          @required bool isSubscriberOnly,
          @required String title,
          @required String text,
          @required DateTime publishedAt,
          @required DateTime createdAt,
          @required DateTime updatedAt,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_AnnouncementsItem;

  factory _AnnouncementsItem.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementsItem.fromJson;

  @override
  String get id;
  @override
  bool get isOpen;
  @override
  bool get isSubscriberOnly;
  @override
  String get title;
  @override
  String get text;
  @override
  DateTime get publishedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementsItemCopyWith<_AnnouncementsItem> get copyWith;
}

ChannelPrograms _$ChannelProgramsFromJson(Map<String, dynamic> json) {
  return _ChannelPrograms.fromJson(json);
}

/// @nodoc
class _$ChannelProgramsTearOff {
  const _$ChannelProgramsTearOff();

// ignore: unused_element
  _ChannelPrograms call(
      {@required @JsonKey(name: 'items') @protected List<ProgramsItem> rawItems,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ChannelPrograms(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  ChannelPrograms fromJson(Map<String, Object> json) {
    return ChannelPrograms.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelPrograms = _$ChannelProgramsTearOff();

/// @nodoc
mixin _$ChannelPrograms {
  @JsonKey(name: 'items')
  @protected
  List<ProgramsItem> get rawItems;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ChannelProgramsCopyWith<ChannelPrograms> get copyWith;
}

/// @nodoc
abstract class $ChannelProgramsCopyWith<$Res> {
  factory $ChannelProgramsCopyWith(
          ChannelPrograms value, $Res Function(ChannelPrograms) then) =
      _$ChannelProgramsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<ProgramsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ChannelProgramsCopyWithImpl<$Res>
    implements $ChannelProgramsCopyWith<$Res> {
  _$ChannelProgramsCopyWithImpl(this._value, this._then);

  final ChannelPrograms _value;
  // ignore: unused_field
  final $Res Function(ChannelPrograms) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<ProgramsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ChannelProgramsCopyWith<$Res>
    implements $ChannelProgramsCopyWith<$Res> {
  factory _$ChannelProgramsCopyWith(
          _ChannelPrograms value, $Res Function(_ChannelPrograms) then) =
      __$ChannelProgramsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<ProgramsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ChannelProgramsCopyWithImpl<$Res>
    extends _$ChannelProgramsCopyWithImpl<$Res>
    implements _$ChannelProgramsCopyWith<$Res> {
  __$ChannelProgramsCopyWithImpl(
      _ChannelPrograms _value, $Res Function(_ChannelPrograms) _then)
      : super(_value, (v) => _then(v as _ChannelPrograms));

  @override
  _ChannelPrograms get _value => super._value as _ChannelPrograms;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_ChannelPrograms(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<ProgramsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChannelPrograms extends _ChannelPrograms {
  const _$_ChannelPrograms(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ModelProgramConnection"),
        super._();

  factory _$_ChannelPrograms.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelProgramsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<ProgramsItem> rawItems;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ChannelPrograms(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelPrograms &&
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
  _$ChannelProgramsCopyWith<_ChannelPrograms> get copyWith =>
      __$ChannelProgramsCopyWithImpl<_ChannelPrograms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelProgramsToJson(this);
  }
}

abstract class _ChannelPrograms extends ChannelPrograms {
  const _ChannelPrograms._() : super._();
  const factory _ChannelPrograms(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<ProgramsItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_ChannelPrograms;

  factory _ChannelPrograms.fromJson(Map<String, dynamic> json) =
      _$_ChannelPrograms.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<ProgramsItem> get rawItems;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ChannelProgramsCopyWith<_ChannelPrograms> get copyWith;
}

ProgramsItem _$ProgramsItemFromJson(Map<String, dynamic> json) {
  return _ProgramsItem.fromJson(json);
}

/// @nodoc
class _$ProgramsItemTearOff {
  const _$ProgramsItemTearOff();

// ignore: unused_element
  _ProgramsItem call(
      {@required String id,
      @required String tenantId,
      @required String channelId,
      @required String title,
      @required DateTime broadcastAt,
      @required int totalPlayTime,
      @Deprecated("do not use!") String viewerPlanType,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ProgramsItem(
      id: id,
      tenantId: tenantId,
      channelId: channelId,
      title: title,
      broadcastAt: broadcastAt,
      totalPlayTime: totalPlayTime,
      viewerPlanType: viewerPlanType,
      typename: typename,
    );
  }

// ignore: unused_element
  ProgramsItem fromJson(Map<String, Object> json) {
    return ProgramsItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramsItem = _$ProgramsItemTearOff();

/// @nodoc
mixin _$ProgramsItem {
  String get id;
  String get tenantId;
  String get channelId;
  String get title;
  DateTime get broadcastAt;
  int get totalPlayTime; //todo send PR to freezed; the string "don't use!" throws error if the factory has assertion
  @Deprecated("do not use!")
  String get viewerPlanType;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramsItemCopyWith<ProgramsItem> get copyWith;
}

/// @nodoc
abstract class $ProgramsItemCopyWith<$Res> {
  factory $ProgramsItemCopyWith(
          ProgramsItem value, $Res Function(ProgramsItem) then) =
      _$ProgramsItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tenantId,
      String channelId,
      String title,
      DateTime broadcastAt,
      int totalPlayTime,
      @Deprecated("do not use!") String viewerPlanType,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ProgramsItemCopyWithImpl<$Res> implements $ProgramsItemCopyWith<$Res> {
  _$ProgramsItemCopyWithImpl(this._value, this._then);

  final ProgramsItem _value;
  // ignore: unused_field
  final $Res Function(ProgramsItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object channelId = freezed,
    Object title = freezed,
    Object broadcastAt = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      title: title == freezed ? _value.title : title as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ProgramsItemCopyWith<$Res>
    implements $ProgramsItemCopyWith<$Res> {
  factory _$ProgramsItemCopyWith(
          _ProgramsItem value, $Res Function(_ProgramsItem) then) =
      __$ProgramsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tenantId,
      String channelId,
      String title,
      DateTime broadcastAt,
      int totalPlayTime,
      @Deprecated("do not use!") String viewerPlanType,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ProgramsItemCopyWithImpl<$Res> extends _$ProgramsItemCopyWithImpl<$Res>
    implements _$ProgramsItemCopyWith<$Res> {
  __$ProgramsItemCopyWithImpl(
      _ProgramsItem _value, $Res Function(_ProgramsItem) _then)
      : super(_value, (v) => _then(v as _ProgramsItem));

  @override
  _ProgramsItem get _value => super._value as _ProgramsItem;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object channelId = freezed,
    Object title = freezed,
    Object broadcastAt = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object typename = freezed,
  }) {
    return _then(_ProgramsItem(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      title: title == freezed ? _value.title : title as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramsItem extends _ProgramsItem {
  const _$_ProgramsItem(
      {@required this.id,
      @required this.tenantId,
      @required this.channelId,
      @required this.title,
      @required this.broadcastAt,
      @required this.totalPlayTime,
      @Deprecated("do not use!") this.viewerPlanType,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(tenantId != null),
        assert(channelId != null),
        assert(title != null),
        assert(broadcastAt != null),
        assert(totalPlayTime != null),
        assert(typename != null),
        assert(typename == "Program"),
        super._();

  factory _$_ProgramsItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramsItemFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final DateTime broadcastAt;
  @override
  final int totalPlayTime;
  @override //todo send PR to freezed; the string "don't use!" throws error if the factory has assertion
  @Deprecated("do not use!")
  final String viewerPlanType;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ProgramsItem(id: $id, tenantId: $tenantId, channelId: $channelId, title: $title, broadcastAt: $broadcastAt, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramsItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
            (identical(other.totalPlayTime, totalPlayTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalPlayTime, totalPlayTime)) &&
            (identical(other.viewerPlanType, viewerPlanType) ||
                const DeepCollectionEquality()
                    .equals(other.viewerPlanType, viewerPlanType)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(totalPlayTime) ^
      const DeepCollectionEquality().hash(viewerPlanType) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ProgramsItemCopyWith<_ProgramsItem> get copyWith =>
      __$ProgramsItemCopyWithImpl<_ProgramsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramsItemToJson(this);
  }
}

abstract class _ProgramsItem extends ProgramsItem {
  const _ProgramsItem._() : super._();
  const factory _ProgramsItem(
          {@required String id,
          @required String tenantId,
          @required String channelId,
          @required String title,
          @required DateTime broadcastAt,
          @required int totalPlayTime,
          @Deprecated("do not use!") String viewerPlanType,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_ProgramsItem;

  factory _ProgramsItem.fromJson(Map<String, dynamic> json) =
      _$_ProgramsItem.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get channelId;
  @override
  String get title;
  @override
  DateTime get broadcastAt;
  @override
  int get totalPlayTime;
  @override //todo send PR to freezed; the string "don't use!" throws error if the factory has assertion
  @Deprecated("do not use!")
  String get viewerPlanType;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ProgramsItemCopyWith<_ProgramsItem> get copyWith;
}

SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) {
  return _SubscriptionPlan.fromJson(json);
}

/// @nodoc
class _$SubscriptionPlanTearOff {
  const _$SubscriptionPlanTearOff();

// ignore: unused_element
  _SubscriptionPlan call(
      {@required String id,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      @required @JsonKey(name: '__typename') String typename,
      PurchasedPlan viewerPurchasedPlan}) {
    return _SubscriptionPlan(
      id: id,
      amount: amount,
      currency: currency,
      isPurchasable: isPurchasable,
      typename: typename,
      viewerPurchasedPlan: viewerPurchasedPlan,
    );
  }

// ignore: unused_element
  SubscriptionPlan fromJson(Map<String, Object> json) {
    return SubscriptionPlan.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SubscriptionPlan = _$SubscriptionPlanTearOff();

/// @nodoc
mixin _$SubscriptionPlan {
  String get id;
  int get amount;
  String get currency;
  bool get isPurchasable;
  @JsonKey(name: '__typename')
  String get typename;
  PurchasedPlan get viewerPurchasedPlan;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith;
}

/// @nodoc
abstract class $SubscriptionPlanCopyWith<$Res> {
  factory $SubscriptionPlanCopyWith(
          SubscriptionPlan value, $Res Function(SubscriptionPlan) then) =
      _$SubscriptionPlanCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int amount,
      String currency,
      bool isPurchasable,
      @JsonKey(name: '__typename') String typename,
      PurchasedPlan viewerPurchasedPlan});

  $PurchasedPlanCopyWith<$Res> get viewerPurchasedPlan;
}

/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._value, this._then);

  final SubscriptionPlan _value;
  // ignore: unused_field
  final $Res Function(SubscriptionPlan) _then;

  @override
  $Res call({
    Object id = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object isPurchasable = freezed,
    Object typename = freezed,
    Object viewerPurchasedPlan = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      amount: amount == freezed ? _value.amount : amount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      isPurchasable: isPurchasable == freezed
          ? _value.isPurchasable
          : isPurchasable as bool,
      typename: typename == freezed ? _value.typename : typename as String,
      viewerPurchasedPlan: viewerPurchasedPlan == freezed
          ? _value.viewerPurchasedPlan
          : viewerPurchasedPlan as PurchasedPlan,
    ));
  }

  @override
  $PurchasedPlanCopyWith<$Res> get viewerPurchasedPlan {
    if (_value.viewerPurchasedPlan == null) {
      return null;
    }
    return $PurchasedPlanCopyWith<$Res>(_value.viewerPurchasedPlan, (value) {
      return _then(_value.copyWith(viewerPurchasedPlan: value));
    });
  }
}

/// @nodoc
abstract class _$SubscriptionPlanCopyWith<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  factory _$SubscriptionPlanCopyWith(
          _SubscriptionPlan value, $Res Function(_SubscriptionPlan) then) =
      __$SubscriptionPlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int amount,
      String currency,
      bool isPurchasable,
      @JsonKey(name: '__typename') String typename,
      PurchasedPlan viewerPurchasedPlan});

  @override
  $PurchasedPlanCopyWith<$Res> get viewerPurchasedPlan;
}

/// @nodoc
class __$SubscriptionPlanCopyWithImpl<$Res>
    extends _$SubscriptionPlanCopyWithImpl<$Res>
    implements _$SubscriptionPlanCopyWith<$Res> {
  __$SubscriptionPlanCopyWithImpl(
      _SubscriptionPlan _value, $Res Function(_SubscriptionPlan) _then)
      : super(_value, (v) => _then(v as _SubscriptionPlan));

  @override
  _SubscriptionPlan get _value => super._value as _SubscriptionPlan;

  @override
  $Res call({
    Object id = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object isPurchasable = freezed,
    Object typename = freezed,
    Object viewerPurchasedPlan = freezed,
  }) {
    return _then(_SubscriptionPlan(
      id: id == freezed ? _value.id : id as String,
      amount: amount == freezed ? _value.amount : amount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      isPurchasable: isPurchasable == freezed
          ? _value.isPurchasable
          : isPurchasable as bool,
      typename: typename == freezed ? _value.typename : typename as String,
      viewerPurchasedPlan: viewerPurchasedPlan == freezed
          ? _value.viewerPurchasedPlan
          : viewerPurchasedPlan as PurchasedPlan,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SubscriptionPlan extends _SubscriptionPlan {
  const _$_SubscriptionPlan(
      {@required this.id,
      @required this.amount,
      @required this.currency,
      @required this.isPurchasable,
      @required @JsonKey(name: '__typename') this.typename,
      this.viewerPurchasedPlan})
      : assert(id != null),
        assert(amount != null),
        assert(currency != null),
        assert(isPurchasable != null),
        assert(typename != null),
        assert(typename == "SubscriptionPlan"),
        super._();

  factory _$_SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscriptionPlanFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final bool isPurchasable;
  @override
  @JsonKey(name: '__typename')
  final String typename;
  @override
  final PurchasedPlan viewerPurchasedPlan;

  @override
  String toString() {
    return 'SubscriptionPlan(id: $id, amount: $amount, currency: $currency, isPurchasable: $isPurchasable, typename: $typename, viewerPurchasedPlan: $viewerPurchasedPlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscriptionPlan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.isPurchasable, isPurchasable) ||
                const DeepCollectionEquality()
                    .equals(other.isPurchasable, isPurchasable)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)) &&
            (identical(other.viewerPurchasedPlan, viewerPurchasedPlan) ||
                const DeepCollectionEquality()
                    .equals(other.viewerPurchasedPlan, viewerPurchasedPlan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(isPurchasable) ^
      const DeepCollectionEquality().hash(typename) ^
      const DeepCollectionEquality().hash(viewerPurchasedPlan);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith =>
      __$SubscriptionPlanCopyWithImpl<_SubscriptionPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionPlanToJson(this);
  }
}

abstract class _SubscriptionPlan extends SubscriptionPlan {
  const _SubscriptionPlan._() : super._();
  const factory _SubscriptionPlan(
      {@required String id,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      @required @JsonKey(name: '__typename') String typename,
      PurchasedPlan viewerPurchasedPlan}) = _$_SubscriptionPlan;

  factory _SubscriptionPlan.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionPlan.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get currency;
  @override
  bool get isPurchasable;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  PurchasedPlan get viewerPurchasedPlan;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith;
}

PurchasedPlan _$PurchasedPlanFromJson(Map<String, dynamic> json) {
  return _PurchasedPlan.fromJson(json);
}

/// @nodoc
class _$PurchasedPlanTearOff {
  const _$PurchasedPlanTearOff();

// ignore: unused_element
  _PurchasedPlan call(
      {@required bool isActive,
      @required @JsonKey(name: '__typename') String typename}) {
    return _PurchasedPlan(
      isActive: isActive,
      typename: typename,
    );
  }

// ignore: unused_element
  PurchasedPlan fromJson(Map<String, Object> json) {
    return PurchasedPlan.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PurchasedPlan = _$PurchasedPlanTearOff();

/// @nodoc
mixin _$PurchasedPlan {
  bool get isActive;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PurchasedPlanCopyWith<PurchasedPlan> get copyWith;
}

/// @nodoc
abstract class $PurchasedPlanCopyWith<$Res> {
  factory $PurchasedPlanCopyWith(
          PurchasedPlan value, $Res Function(PurchasedPlan) then) =
      _$PurchasedPlanCopyWithImpl<$Res>;
  $Res call({bool isActive, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$PurchasedPlanCopyWithImpl<$Res>
    implements $PurchasedPlanCopyWith<$Res> {
  _$PurchasedPlanCopyWithImpl(this._value, this._then);

  final PurchasedPlan _value;
  // ignore: unused_field
  final $Res Function(PurchasedPlan) _then;

  @override
  $Res call({
    Object isActive = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$PurchasedPlanCopyWith<$Res>
    implements $PurchasedPlanCopyWith<$Res> {
  factory _$PurchasedPlanCopyWith(
          _PurchasedPlan value, $Res Function(_PurchasedPlan) then) =
      __$PurchasedPlanCopyWithImpl<$Res>;
  @override
  $Res call({bool isActive, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$PurchasedPlanCopyWithImpl<$Res>
    extends _$PurchasedPlanCopyWithImpl<$Res>
    implements _$PurchasedPlanCopyWith<$Res> {
  __$PurchasedPlanCopyWithImpl(
      _PurchasedPlan _value, $Res Function(_PurchasedPlan) _then)
      : super(_value, (v) => _then(v as _PurchasedPlan));

  @override
  _PurchasedPlan get _value => super._value as _PurchasedPlan;

  @override
  $Res call({
    Object isActive = freezed,
    Object typename = freezed,
  }) {
    return _then(_PurchasedPlan(
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PurchasedPlan implements _PurchasedPlan {
  const _$_PurchasedPlan(
      {@required this.isActive,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(isActive != null),
        assert(typename != null),
        assert(typename == "PurchasedPlan");

  factory _$_PurchasedPlan.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchasedPlanFromJson(json);

  @override
  final bool isActive;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'PurchasedPlan(isActive: $isActive, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchasedPlan &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$PurchasedPlanCopyWith<_PurchasedPlan> get copyWith =>
      __$PurchasedPlanCopyWithImpl<_PurchasedPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchasedPlanToJson(this);
  }
}

abstract class _PurchasedPlan implements PurchasedPlan {
  const factory _PurchasedPlan(
          {@required bool isActive,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_PurchasedPlan;

  factory _PurchasedPlan.fromJson(Map<String, dynamic> json) =
      _$_PurchasedPlan.fromJson;

  @override
  bool get isActive;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$PurchasedPlanCopyWith<_PurchasedPlan> get copyWith;
}
