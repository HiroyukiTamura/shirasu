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
class _$_ChannelData extends _ChannelData {
  _$_ChannelData({@required this.channel})
      : assert(channel != null),
        super._();

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

  @override
  _$ChannelDataCopyWith<_ChannelData> get copyWith =>
      __$ChannelDataCopyWithImpl<_ChannelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelDataToJson(this);
  }
}

abstract class _ChannelData extends ChannelData {
  _ChannelData._() : super._();
  factory _ChannelData({@required Channel channel}) = _$_ChannelData;

  factory _ChannelData.fromJson(Map<String, dynamic> json) =
      _$_ChannelData.fromJson;

  @override
  Channel get channel;
  @override
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
      dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      @required String detail,
      @required @JsonKey(name: '__typename') dynamic typename,
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
  dynamic get icon;
  String get twitterUrl;
  String get facebookUrl;
  String get textOnPurchaseScreen;
  String get detail;
  @JsonKey(name: '__typename')
  dynamic get typename;
  SubscriptionPlan get subscriptionPlan;
  ChannelPrograms get programs;
  Announcements get announcements;

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
      dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      String detail,
      @JsonKey(name: '__typename') dynamic typename,
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
      typename: typename == freezed ? _value.typename : typename as dynamic,
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
      dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      String detail,
      @JsonKey(name: '__typename') dynamic typename,
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
      typename: typename == freezed ? _value.typename : typename,
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
class _$_Channel implements _Channel {
  _$_Channel(
      {@required this.id,
      @required this.name,
      this.icon,
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
        assert(announcements != null);

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
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
  final dynamic typename;
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
      dynamic icon,
      String twitterUrl,
      String facebookUrl,
      String textOnPurchaseScreen,
      @required String detail,
      @required @JsonKey(name: '__typename') dynamic typename,
      @required SubscriptionPlan subscriptionPlan,
      @required ChannelPrograms programs,
      @required Announcements announcements}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
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
  dynamic get typename;
  @override
  SubscriptionPlan get subscriptionPlan;
  @override
  ChannelPrograms get programs;
  @override
  Announcements get announcements;
  @override
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
      {@required List<AnnouncementsItem> items,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Announcements(
      items: items,
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
  List<AnnouncementsItem> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $AnnouncementsCopyWith<Announcements> get copyWith;
}

/// @nodoc
abstract class $AnnouncementsCopyWith<$Res> {
  factory $AnnouncementsCopyWith(
          Announcements value, $Res Function(Announcements) then) =
      _$AnnouncementsCopyWithImpl<$Res>;
  $Res call(
      {List<AnnouncementsItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<AnnouncementsItem>,
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
      {List<AnnouncementsItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Announcements(
      items: items == freezed ? _value.items : items as List<AnnouncementsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Announcements implements _Announcements {
  _$_Announcements(
      {@required this.items,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(items != null),
        assert(typename != null);

  factory _$_Announcements.fromJson(Map<String, dynamic> json) =>
      _$_$_AnnouncementsFromJson(json);

  @override
  final List<AnnouncementsItem> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Announcements(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Announcements &&
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
  _$AnnouncementsCopyWith<_Announcements> get copyWith =>
      __$AnnouncementsCopyWithImpl<_Announcements>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementsToJson(this);
  }
}

abstract class _Announcements implements Announcements {
  factory _Announcements(
          {@required List<AnnouncementsItem> items,
          String nextToken,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_Announcements;

  factory _Announcements.fromJson(Map<String, dynamic> json) =
      _$_Announcements.fromJson;

  @override
  List<AnnouncementsItem> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
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
  _$_AnnouncementsItem(
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
        assert(typename != null);

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

  @override
  _$AnnouncementsItemCopyWith<_AnnouncementsItem> get copyWith =>
      __$AnnouncementsItemCopyWithImpl<_AnnouncementsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementsItemToJson(this);
  }
}

abstract class _AnnouncementsItem implements AnnouncementsItem {
  factory _AnnouncementsItem(
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
      {@required List<ProgramsItem> items,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ChannelPrograms(
      items: items,
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
  List<ProgramsItem> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $ChannelProgramsCopyWith<ChannelPrograms> get copyWith;
}

/// @nodoc
abstract class $ChannelProgramsCopyWith<$Res> {
  factory $ChannelProgramsCopyWith(
          ChannelPrograms value, $Res Function(ChannelPrograms) then) =
      _$ChannelProgramsCopyWithImpl<$Res>;
  $Res call(
      {List<ProgramsItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<ProgramsItem>,
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
      {List<ProgramsItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_ChannelPrograms(
      items: items == freezed ? _value.items : items as List<ProgramsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChannelPrograms implements _ChannelPrograms {
  _$_ChannelPrograms(
      {@required this.items,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(items != null),
        assert(typename != null);

  factory _$_ChannelPrograms.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelProgramsFromJson(json);

  @override
  final List<ProgramsItem> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ChannelPrograms(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelPrograms &&
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
  _$ChannelProgramsCopyWith<_ChannelPrograms> get copyWith =>
      __$ChannelProgramsCopyWithImpl<_ChannelPrograms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelProgramsToJson(this);
  }
}

abstract class _ChannelPrograms implements ChannelPrograms {
  factory _ChannelPrograms(
          {@required List<ProgramsItem> items,
          String nextToken,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_ChannelPrograms;

  factory _ChannelPrograms.fromJson(Map<String, dynamic> json) =
      _$_ChannelPrograms.fromJson;

  @override
  List<ProgramsItem> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
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
      @required String viewerPlanType,
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
  int get totalPlayTime;
  String get viewerPlanType;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
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
      String viewerPlanType,
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
      String viewerPlanType,
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
class _$_ProgramsItem implements _ProgramsItem {
  _$_ProgramsItem(
      {@required this.id,
      @required this.tenantId,
      @required this.channelId,
      @required this.title,
      @required this.broadcastAt,
      @required this.totalPlayTime,
      @required this.viewerPlanType,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(tenantId != null),
        assert(channelId != null),
        assert(title != null),
        assert(broadcastAt != null),
        assert(totalPlayTime != null),
        assert(viewerPlanType != null),
        assert(typename != null);

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
  @override
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

  @override
  _$ProgramsItemCopyWith<_ProgramsItem> get copyWith =>
      __$ProgramsItemCopyWithImpl<_ProgramsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramsItemToJson(this);
  }
}

abstract class _ProgramsItem implements ProgramsItem {
  factory _ProgramsItem(
          {@required String id,
          @required String tenantId,
          @required String channelId,
          @required String title,
          @required DateTime broadcastAt,
          @required int totalPlayTime,
          @required String viewerPlanType,
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
  @override
  String get viewerPlanType;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
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
      dynamic viewerPurchasedPlan}) {
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
  dynamic get viewerPurchasedPlan;

  Map<String, dynamic> toJson();
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
      dynamic viewerPurchasedPlan});
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
          : viewerPurchasedPlan as dynamic,
    ));
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
      dynamic viewerPurchasedPlan});
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
          : viewerPurchasedPlan as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SubscriptionPlan implements _SubscriptionPlan {
  _$_SubscriptionPlan(
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
        assert(typename != null);

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
  final dynamic viewerPurchasedPlan;

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

  @override
  _$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith =>
      __$SubscriptionPlanCopyWithImpl<_SubscriptionPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionPlanToJson(this);
  }
}

abstract class _SubscriptionPlan implements SubscriptionPlan {
  factory _SubscriptionPlan(
      {@required String id,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      @required @JsonKey(name: '__typename') String typename,
      dynamic viewerPurchasedPlan}) = _$_SubscriptionPlan;

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
  dynamic get viewerPurchasedPlan;
  @override
  _$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith;
}
