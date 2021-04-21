// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ViewerWrapper _$ViewerWrapperFromJson(Map<String, dynamic> json) {
  return _ViewerWrapper.fromJson(json);
}

/// @nodoc
class _$ViewerWrapperTearOff {
  const _$ViewerWrapperTearOff();

// ignore: unused_element
  _ViewerWrapper call(
      {@required ViewerData viewer, @required ViewerUser viewerUser}) {
    return _ViewerWrapper(
      viewer: viewer,
      viewerUser: viewerUser,
    );
  }

// ignore: unused_element
  ViewerWrapper fromJson(Map<String, Object> json) {
    return ViewerWrapper.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerWrapper = _$ViewerWrapperTearOff();

/// @nodoc
mixin _$ViewerWrapper {
  ViewerData get viewer;
  ViewerUser get viewerUser;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ViewerWrapperCopyWith<ViewerWrapper> get copyWith;
}

/// @nodoc
abstract class $ViewerWrapperCopyWith<$Res> {
  factory $ViewerWrapperCopyWith(
          ViewerWrapper value, $Res Function(ViewerWrapper) then) =
      _$ViewerWrapperCopyWithImpl<$Res>;
  $Res call({ViewerData viewer, ViewerUser viewerUser});

  $ViewerDataCopyWith<$Res> get viewer;
  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class _$ViewerWrapperCopyWithImpl<$Res>
    implements $ViewerWrapperCopyWith<$Res> {
  _$ViewerWrapperCopyWithImpl(this._value, this._then);

  final ViewerWrapper _value;
  // ignore: unused_field
  final $Res Function(ViewerWrapper) _then;

  @override
  $Res call({
    Object viewer = freezed,
    Object viewerUser = freezed,
  }) {
    return _then(_value.copyWith(
      viewer: viewer == freezed ? _value.viewer : viewer as ViewerData,
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }

  @override
  $ViewerDataCopyWith<$Res> get viewer {
    if (_value.viewer == null) {
      return null;
    }
    return $ViewerDataCopyWith<$Res>(_value.viewer, (value) {
      return _then(_value.copyWith(viewer: value));
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
abstract class _$ViewerWrapperCopyWith<$Res>
    implements $ViewerWrapperCopyWith<$Res> {
  factory _$ViewerWrapperCopyWith(
          _ViewerWrapper value, $Res Function(_ViewerWrapper) then) =
      __$ViewerWrapperCopyWithImpl<$Res>;
  @override
  $Res call({ViewerData viewer, ViewerUser viewerUser});

  @override
  $ViewerDataCopyWith<$Res> get viewer;
  @override
  $ViewerUserCopyWith<$Res> get viewerUser;
}

/// @nodoc
class __$ViewerWrapperCopyWithImpl<$Res>
    extends _$ViewerWrapperCopyWithImpl<$Res>
    implements _$ViewerWrapperCopyWith<$Res> {
  __$ViewerWrapperCopyWithImpl(
      _ViewerWrapper _value, $Res Function(_ViewerWrapper) _then)
      : super(_value, (v) => _then(v as _ViewerWrapper));

  @override
  _ViewerWrapper get _value => super._value as _ViewerWrapper;

  @override
  $Res call({
    Object viewer = freezed,
    Object viewerUser = freezed,
  }) {
    return _then(_ViewerWrapper(
      viewer: viewer == freezed ? _value.viewer : viewer as ViewerData,
      viewerUser:
          viewerUser == freezed ? _value.viewerUser : viewerUser as ViewerUser,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ViewerWrapper implements _ViewerWrapper {
  const _$_ViewerWrapper({@required this.viewer, @required this.viewerUser})
      : assert(viewer != null),
        assert(viewerUser != null);

  factory _$_ViewerWrapper.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerWrapperFromJson(json);

  @override
  final ViewerData viewer;
  @override
  final ViewerUser viewerUser;

  @override
  String toString() {
    return 'ViewerWrapper(viewer: $viewer, viewerUser: $viewerUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerWrapper &&
            (identical(other.viewer, viewer) ||
                const DeepCollectionEquality().equals(other.viewer, viewer)) &&
            (identical(other.viewerUser, viewerUser) ||
                const DeepCollectionEquality()
                    .equals(other.viewerUser, viewerUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(viewer) ^
      const DeepCollectionEquality().hash(viewerUser);

  @JsonKey(ignore: true)
  @override
  _$ViewerWrapperCopyWith<_ViewerWrapper> get copyWith =>
      __$ViewerWrapperCopyWithImpl<_ViewerWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerWrapperToJson(this);
  }
}

abstract class _ViewerWrapper implements ViewerWrapper {
  const factory _ViewerWrapper(
      {@required ViewerData viewer,
      @required ViewerUser viewerUser}) = _$_ViewerWrapper;

  factory _ViewerWrapper.fromJson(Map<String, dynamic> json) =
      _$_ViewerWrapper.fromJson;

  @override
  ViewerData get viewer;
  @override
  ViewerUser get viewerUser;
  @override
  @JsonKey(ignore: true)
  _$ViewerWrapperCopyWith<_ViewerWrapper> get copyWith;
}

ViewerData _$ViewerDataFromJson(Map<String, dynamic> json) {
  return _ViewerData.fromJson(json);
}

/// @nodoc
class _$ViewerDataTearOff {
  const _$ViewerDataTearOff();

// ignore: unused_element
  _ViewerData call(
      {@required
      @JsonKey(name: 'paymentMethods')
      @protected
          List<PaymentMethod> rawPaymentMethods,
      @required
      @JsonKey(name: 'authConnections')
      @protected
          List<String> rawAuthConnections,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _ViewerData(
      rawPaymentMethods: rawPaymentMethods,
      rawAuthConnections: rawAuthConnections,
      typename: typename,
    );
  }

// ignore: unused_element
  ViewerData fromJson(Map<String, Object> json) {
    return ViewerData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ViewerData = _$ViewerDataTearOff();

/// @nodoc
mixin _$ViewerData {
  @JsonKey(name: 'paymentMethods')
  @protected
  List<PaymentMethod> get rawPaymentMethods;
  @JsonKey(name: 'authConnections')
  @protected
  List<String> get rawAuthConnections;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ViewerDataCopyWith<ViewerData> get copyWith;
}

/// @nodoc
abstract class $ViewerDataCopyWith<$Res> {
  factory $ViewerDataCopyWith(
          ViewerData value, $Res Function(ViewerData) then) =
      _$ViewerDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'paymentMethods')
      @protected
          List<PaymentMethod> rawPaymentMethods,
      @JsonKey(name: 'authConnections')
      @protected
          List<String> rawAuthConnections,
      @JsonKey(name: '__typename')
          String typename});
}

/// @nodoc
class _$ViewerDataCopyWithImpl<$Res> implements $ViewerDataCopyWith<$Res> {
  _$ViewerDataCopyWithImpl(this._value, this._then);

  final ViewerData _value;
  // ignore: unused_field
  final $Res Function(ViewerData) _then;

  @override
  $Res call({
    Object rawPaymentMethods = freezed,
    Object rawAuthConnections = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawPaymentMethods: rawPaymentMethods == freezed
          ? _value.rawPaymentMethods
          : rawPaymentMethods as List<PaymentMethod>,
      rawAuthConnections: rawAuthConnections == freezed
          ? _value.rawAuthConnections
          : rawAuthConnections as List<String>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ViewerDataCopyWith<$Res> implements $ViewerDataCopyWith<$Res> {
  factory _$ViewerDataCopyWith(
          _ViewerData value, $Res Function(_ViewerData) then) =
      __$ViewerDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'paymentMethods')
      @protected
          List<PaymentMethod> rawPaymentMethods,
      @JsonKey(name: 'authConnections')
      @protected
          List<String> rawAuthConnections,
      @JsonKey(name: '__typename')
          String typename});
}

/// @nodoc
class __$ViewerDataCopyWithImpl<$Res> extends _$ViewerDataCopyWithImpl<$Res>
    implements _$ViewerDataCopyWith<$Res> {
  __$ViewerDataCopyWithImpl(
      _ViewerData _value, $Res Function(_ViewerData) _then)
      : super(_value, (v) => _then(v as _ViewerData));

  @override
  _ViewerData get _value => super._value as _ViewerData;

  @override
  $Res call({
    Object rawPaymentMethods = freezed,
    Object rawAuthConnections = freezed,
    Object typename = freezed,
  }) {
    return _then(_ViewerData(
      rawPaymentMethods: rawPaymentMethods == freezed
          ? _value.rawPaymentMethods
          : rawPaymentMethods as List<PaymentMethod>,
      rawAuthConnections: rawAuthConnections == freezed
          ? _value.rawAuthConnections
          : rawAuthConnections as List<String>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ViewerData extends _ViewerData {
  const _$_ViewerData(
      {@required
      @JsonKey(name: 'paymentMethods')
      @protected
          this.rawPaymentMethods,
      @required
      @JsonKey(name: 'authConnections')
      @protected
          this.rawAuthConnections,
      @required
      @JsonKey(name: '__typename')
          this.typename})
      : assert(rawPaymentMethods != null),
        assert(rawAuthConnections != null),
        assert(typename != null),
        assert(typename == "Viewer"),
        super._();

  factory _$_ViewerData.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerDataFromJson(json);

  @override
  @JsonKey(name: 'paymentMethods')
  @protected
  final List<PaymentMethod> rawPaymentMethods;
  @override
  @JsonKey(name: 'authConnections')
  @protected
  final List<String> rawAuthConnections;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ViewerData(rawPaymentMethods: $rawPaymentMethods, rawAuthConnections: $rawAuthConnections, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerData &&
            (identical(other.rawPaymentMethods, rawPaymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.rawPaymentMethods, rawPaymentMethods)) &&
            (identical(other.rawAuthConnections, rawAuthConnections) ||
                const DeepCollectionEquality()
                    .equals(other.rawAuthConnections, rawAuthConnections)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawPaymentMethods) ^
      const DeepCollectionEquality().hash(rawAuthConnections) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ViewerDataCopyWith<_ViewerData> get copyWith =>
      __$ViewerDataCopyWithImpl<_ViewerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerDataToJson(this);
  }
}

abstract class _ViewerData extends ViewerData {
  const _ViewerData._() : super._();
  const factory _ViewerData(
      {@required
      @JsonKey(name: 'paymentMethods')
      @protected
          List<PaymentMethod> rawPaymentMethods,
      @required
      @JsonKey(name: 'authConnections')
      @protected
          List<String> rawAuthConnections,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_ViewerData;

  factory _ViewerData.fromJson(Map<String, dynamic> json) =
      _$_ViewerData.fromJson;

  @override
  @JsonKey(name: 'paymentMethods')
  @protected
  List<PaymentMethod> get rawPaymentMethods;
  @override
  @JsonKey(name: 'authConnections')
  @protected
  List<String> get rawAuthConnections;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ViewerDataCopyWith<_ViewerData> get copyWith;
}

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
class _$PaymentMethodTearOff {
  const _$PaymentMethodTearOff();

// ignore: unused_element
  _PaymentMethod call(
      {@required String id,
      @required String brand,
      @required String last4,
      @required String expirationDate,
      @required @JsonKey(name: '__typename') String typename}) {
    return _PaymentMethod(
      id: id,
      brand: brand,
      last4: last4,
      expirationDate: expirationDate,
      typename: typename,
    );
  }

// ignore: unused_element
  PaymentMethod fromJson(Map<String, Object> json) {
    return PaymentMethod.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentMethod = _$PaymentMethodTearOff();

/// @nodoc
mixin _$PaymentMethod {
  String get id;
  String get brand;
  String get last4;
  String get expirationDate;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String brand,
      String last4,
      String expirationDate,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  final PaymentMethod _value;
  // ignore: unused_field
  final $Res Function(PaymentMethod) _then;

  @override
  $Res call({
    Object id = freezed,
    Object brand = freezed,
    Object last4 = freezed,
    Object expirationDate = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      brand: brand == freezed ? _value.brand : brand as String,
      last4: last4 == freezed ? _value.last4 : last4 as String,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(
          _PaymentMethod value, $Res Function(_PaymentMethod) then) =
      __$PaymentMethodCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String brand,
      String last4,
      String expirationDate,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(
      _PaymentMethod _value, $Res Function(_PaymentMethod) _then)
      : super(_value, (v) => _then(v as _PaymentMethod));

  @override
  _PaymentMethod get _value => super._value as _PaymentMethod;

  @override
  $Res call({
    Object id = freezed,
    Object brand = freezed,
    Object last4 = freezed,
    Object expirationDate = freezed,
    Object typename = freezed,
  }) {
    return _then(_PaymentMethod(
      id: id == freezed ? _value.id : id as String,
      brand: brand == freezed ? _value.brand : brand as String,
      last4: last4 == freezed ? _value.last4 : last4 as String,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentMethod implements _PaymentMethod {
  const _$_PaymentMethod(
      {@required this.id,
      @required this.brand,
      @required this.last4,
      @required this.expirationDate,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(brand != null),
        assert(last4 != null),
        assert(expirationDate != null),
        assert(typename != null),
        assert(typename == "PaymentMethod");

  factory _$_PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMethodFromJson(json);

  @override
  final String id;
  @override
  final String brand;
  @override
  final String last4;
  @override
  final String expirationDate;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'PaymentMethod(id: $id, brand: $brand, last4: $last4, expirationDate: $expirationDate, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethod &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.last4, last4) ||
                const DeepCollectionEquality().equals(other.last4, last4)) &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(last4) ^
      const DeepCollectionEquality().hash(expirationDate) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith =>
      __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMethodToJson(this);
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod(
          {@required String id,
          @required String brand,
          @required String last4,
          @required String expirationDate,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_PaymentMethod;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethod.fromJson;

  @override
  String get id;
  @override
  String get brand;
  @override
  String get last4;
  @override
  String get expirationDate;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith;
}

ViewerUser _$ViewerUserFromJson(Map<String, dynamic> json) {
  return _ViewerUser.fromJson(json);
}

/// @nodoc
class _$ViewerUserTearOff {
  const _$ViewerUserTearOff();

// ignore: unused_element
  _ViewerUser call(
      {@required String id,
      @required String name,
      @required String icon,
      @required InvoiceHistory invoiceHistory,
      @required WatchHistories watchHistories,
      @required SubscribedChannels subscribedChannels,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ViewerUser(
      id: id,
      name: name,
      icon: icon,
      invoiceHistory: invoiceHistory,
      watchHistories: watchHistories,
      subscribedChannels: subscribedChannels,
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
  String get name;
  String get icon;
  InvoiceHistory get invoiceHistory;
  WatchHistories get watchHistories;
  SubscribedChannels get subscribedChannels;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ViewerUserCopyWith<ViewerUser> get copyWith;
}

/// @nodoc
abstract class $ViewerUserCopyWith<$Res> {
  factory $ViewerUserCopyWith(
          ViewerUser value, $Res Function(ViewerUser) then) =
      _$ViewerUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String icon,
      InvoiceHistory invoiceHistory,
      WatchHistories watchHistories,
      SubscribedChannels subscribedChannels,
      @JsonKey(name: '__typename') String typename});

  $WatchHistoriesCopyWith<$Res> get watchHistories;
  $SubscribedChannelsCopyWith<$Res> get subscribedChannels;
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
    Object name = freezed,
    Object icon = freezed,
    Object invoiceHistory = freezed,
    Object watchHistories = freezed,
    Object subscribedChannels = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      invoiceHistory: invoiceHistory == freezed
          ? _value.invoiceHistory
          : invoiceHistory as InvoiceHistory,
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as WatchHistories,
      subscribedChannels: subscribedChannels == freezed
          ? _value.subscribedChannels
          : subscribedChannels as SubscribedChannels,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $WatchHistoriesCopyWith<$Res> get watchHistories {
    if (_value.watchHistories == null) {
      return null;
    }
    return $WatchHistoriesCopyWith<$Res>(_value.watchHistories, (value) {
      return _then(_value.copyWith(watchHistories: value));
    });
  }

  @override
  $SubscribedChannelsCopyWith<$Res> get subscribedChannels {
    if (_value.subscribedChannels == null) {
      return null;
    }
    return $SubscribedChannelsCopyWith<$Res>(_value.subscribedChannels,
        (value) {
      return _then(_value.copyWith(subscribedChannels: value));
    });
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
      String name,
      String icon,
      InvoiceHistory invoiceHistory,
      WatchHistories watchHistories,
      SubscribedChannels subscribedChannels,
      @JsonKey(name: '__typename') String typename});

  @override
  $WatchHistoriesCopyWith<$Res> get watchHistories;
  @override
  $SubscribedChannelsCopyWith<$Res> get subscribedChannels;
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
    Object name = freezed,
    Object icon = freezed,
    Object invoiceHistory = freezed,
    Object watchHistories = freezed,
    Object subscribedChannels = freezed,
    Object typename = freezed,
  }) {
    return _then(_ViewerUser(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      invoiceHistory: invoiceHistory == freezed
          ? _value.invoiceHistory
          : invoiceHistory as InvoiceHistory,
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as WatchHistories,
      subscribedChannels: subscribedChannels == freezed
          ? _value.subscribedChannels
          : subscribedChannels as SubscribedChannels,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ViewerUser extends _ViewerUser {
  const _$_ViewerUser(
      {@required this.id,
      @required this.name,
      @required this.icon,
      @required this.invoiceHistory,
      @required this.watchHistories,
      @required this.subscribedChannels,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(icon != null),
        assert(invoiceHistory != null),
        assert(watchHistories != null),
        assert(subscribedChannels != null),
        assert(typename != null),
        assert(typename == "User"),
        super._();

  factory _$_ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final InvoiceHistory invoiceHistory;
  @override
  final WatchHistories watchHistories;
  @override
  final SubscribedChannels subscribedChannels;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ViewerUser(id: $id, name: $name, icon: $icon, invoiceHistory: $invoiceHistory, watchHistories: $watchHistories, subscribedChannels: $subscribedChannels, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewerUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.invoiceHistory, invoiceHistory) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceHistory, invoiceHistory)) &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)) &&
            (identical(other.subscribedChannels, subscribedChannels) ||
                const DeepCollectionEquality()
                    .equals(other.subscribedChannels, subscribedChannels)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(invoiceHistory) ^
      const DeepCollectionEquality().hash(watchHistories) ^
      const DeepCollectionEquality().hash(subscribedChannels) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ViewerUserCopyWith<_ViewerUser> get copyWith =>
      __$ViewerUserCopyWithImpl<_ViewerUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerUserToJson(this);
  }
}

abstract class _ViewerUser extends ViewerUser {
  const _ViewerUser._() : super._();
  const factory _ViewerUser(
      {@required String id,
      @required String name,
      @required String icon,
      @required InvoiceHistory invoiceHistory,
      @required WatchHistories watchHistories,
      @required SubscribedChannels subscribedChannels,
      @required @JsonKey(name: '__typename') String typename}) = _$_ViewerUser;

  factory _ViewerUser.fromJson(Map<String, dynamic> json) =
      _$_ViewerUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  InvoiceHistory get invoiceHistory;
  @override
  WatchHistories get watchHistories;
  @override
  SubscribedChannels get subscribedChannels;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ViewerUserCopyWith<_ViewerUser> get copyWith;
}

SubscribedChannels _$SubscribedChannelsFromJson(Map<String, dynamic> json) {
  return _SubscribedChannels.fromJson(json);
}

/// @nodoc
class _$SubscribedChannelsTearOff {
  const _$SubscribedChannelsTearOff();

// ignore: unused_element
  _SubscribedChannels call(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<SubscribedChannel> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _SubscribedChannels(
      rawItems: rawItems,
      typename: typename,
    );
  }

// ignore: unused_element
  SubscribedChannels fromJson(Map<String, Object> json) {
    return SubscribedChannels.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SubscribedChannels = _$SubscribedChannelsTearOff();

/// @nodoc
mixin _$SubscribedChannels {
  @JsonKey(name: 'items')
  @protected
  List<SubscribedChannel> get rawItems;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SubscribedChannelsCopyWith<SubscribedChannels> get copyWith;
}

/// @nodoc
abstract class $SubscribedChannelsCopyWith<$Res> {
  factory $SubscribedChannelsCopyWith(
          SubscribedChannels value, $Res Function(SubscribedChannels) then) =
      _$SubscribedChannelsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<SubscribedChannel> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$SubscribedChannelsCopyWithImpl<$Res>
    implements $SubscribedChannelsCopyWith<$Res> {
  _$SubscribedChannelsCopyWithImpl(this._value, this._then);

  final SubscribedChannels _value;
  // ignore: unused_field
  final $Res Function(SubscribedChannels) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<SubscribedChannel>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscribedChannelsCopyWith<$Res>
    implements $SubscribedChannelsCopyWith<$Res> {
  factory _$SubscribedChannelsCopyWith(
          _SubscribedChannels value, $Res Function(_SubscribedChannels) then) =
      __$SubscribedChannelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<SubscribedChannel> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$SubscribedChannelsCopyWithImpl<$Res>
    extends _$SubscribedChannelsCopyWithImpl<$Res>
    implements _$SubscribedChannelsCopyWith<$Res> {
  __$SubscribedChannelsCopyWithImpl(
      _SubscribedChannels _value, $Res Function(_SubscribedChannels) _then)
      : super(_value, (v) => _then(v as _SubscribedChannels));

  @override
  _SubscribedChannels get _value => super._value as _SubscribedChannels;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_SubscribedChannels(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<SubscribedChannel>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SubscribedChannels extends _SubscribedChannels {
  const _$_SubscribedChannels(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "SubscribedChannelCollection"),
        super._();

  factory _$_SubscribedChannels.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscribedChannelsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<SubscribedChannel> rawItems;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'SubscribedChannels(rawItems: $rawItems, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribedChannels &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$SubscribedChannelsCopyWith<_SubscribedChannels> get copyWith =>
      __$SubscribedChannelsCopyWithImpl<_SubscribedChannels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscribedChannelsToJson(this);
  }
}

abstract class _SubscribedChannels extends SubscribedChannels {
  const _SubscribedChannels._() : super._();
  const factory _SubscribedChannels(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<SubscribedChannel> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_SubscribedChannels;

  factory _SubscribedChannels.fromJson(Map<String, dynamic> json) =
      _$_SubscribedChannels.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<SubscribedChannel> get rawItems;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$SubscribedChannelsCopyWith<_SubscribedChannels> get copyWith;
}

SubscribedChannel _$SubscribedChannelFromJson(Map<String, dynamic> json) {
  return _SubscribedChannel.fromJson(json);
}

/// @nodoc
class _$SubscribedChannelTearOff {
  const _$SubscribedChannelTearOff();

// ignore: unused_element
  _SubscribedChannel call(
      {@required String id,
      @required DateTime subscribedAt,
      @required DateTime currentPeriodEndAt,
      @required Channel channel,
      @required bool isActive,
      @required String latestInvoiceId,
      @required LatestInvoice latestInvoice,
      @required String defaultPaymentMethodId,
      @required @JsonKey(name: '__typename') String typename}) {
    return _SubscribedChannel(
      id: id,
      subscribedAt: subscribedAt,
      currentPeriodEndAt: currentPeriodEndAt,
      channel: channel,
      isActive: isActive,
      latestInvoiceId: latestInvoiceId,
      latestInvoice: latestInvoice,
      defaultPaymentMethodId: defaultPaymentMethodId,
      typename: typename,
    );
  }

// ignore: unused_element
  SubscribedChannel fromJson(Map<String, Object> json) {
    return SubscribedChannel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SubscribedChannel = _$SubscribedChannelTearOff();

/// @nodoc
mixin _$SubscribedChannel {
  String get id;
  DateTime get subscribedAt;
  DateTime get currentPeriodEndAt;
  Channel get channel;
  bool get isActive;
  String get latestInvoiceId;
  LatestInvoice get latestInvoice;
  String get defaultPaymentMethodId;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SubscribedChannelCopyWith<SubscribedChannel> get copyWith;
}

/// @nodoc
abstract class $SubscribedChannelCopyWith<$Res> {
  factory $SubscribedChannelCopyWith(
          SubscribedChannel value, $Res Function(SubscribedChannel) then) =
      _$SubscribedChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime subscribedAt,
      DateTime currentPeriodEndAt,
      Channel channel,
      bool isActive,
      String latestInvoiceId,
      LatestInvoice latestInvoice,
      String defaultPaymentMethodId,
      @JsonKey(name: '__typename') String typename});

  $ChannelCopyWith<$Res> get channel;
  $LatestInvoiceCopyWith<$Res> get latestInvoice;
}

/// @nodoc
class _$SubscribedChannelCopyWithImpl<$Res>
    implements $SubscribedChannelCopyWith<$Res> {
  _$SubscribedChannelCopyWithImpl(this._value, this._then);

  final SubscribedChannel _value;
  // ignore: unused_field
  final $Res Function(SubscribedChannel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object subscribedAt = freezed,
    Object currentPeriodEndAt = freezed,
    Object channel = freezed,
    Object isActive = freezed,
    Object latestInvoiceId = freezed,
    Object latestInvoice = freezed,
    Object defaultPaymentMethodId = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      subscribedAt: subscribedAt == freezed
          ? _value.subscribedAt
          : subscribedAt as DateTime,
      currentPeriodEndAt: currentPeriodEndAt == freezed
          ? _value.currentPeriodEndAt
          : currentPeriodEndAt as DateTime,
      channel: channel == freezed ? _value.channel : channel as Channel,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      latestInvoiceId: latestInvoiceId == freezed
          ? _value.latestInvoiceId
          : latestInvoiceId as String,
      latestInvoice: latestInvoice == freezed
          ? _value.latestInvoice
          : latestInvoice as LatestInvoice,
      defaultPaymentMethodId: defaultPaymentMethodId == freezed
          ? _value.defaultPaymentMethodId
          : defaultPaymentMethodId as String,
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

  @override
  $LatestInvoiceCopyWith<$Res> get latestInvoice {
    if (_value.latestInvoice == null) {
      return null;
    }
    return $LatestInvoiceCopyWith<$Res>(_value.latestInvoice, (value) {
      return _then(_value.copyWith(latestInvoice: value));
    });
  }
}

/// @nodoc
abstract class _$SubscribedChannelCopyWith<$Res>
    implements $SubscribedChannelCopyWith<$Res> {
  factory _$SubscribedChannelCopyWith(
          _SubscribedChannel value, $Res Function(_SubscribedChannel) then) =
      __$SubscribedChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime subscribedAt,
      DateTime currentPeriodEndAt,
      Channel channel,
      bool isActive,
      String latestInvoiceId,
      LatestInvoice latestInvoice,
      String defaultPaymentMethodId,
      @JsonKey(name: '__typename') String typename});

  @override
  $ChannelCopyWith<$Res> get channel;
  @override
  $LatestInvoiceCopyWith<$Res> get latestInvoice;
}

/// @nodoc
class __$SubscribedChannelCopyWithImpl<$Res>
    extends _$SubscribedChannelCopyWithImpl<$Res>
    implements _$SubscribedChannelCopyWith<$Res> {
  __$SubscribedChannelCopyWithImpl(
      _SubscribedChannel _value, $Res Function(_SubscribedChannel) _then)
      : super(_value, (v) => _then(v as _SubscribedChannel));

  @override
  _SubscribedChannel get _value => super._value as _SubscribedChannel;

  @override
  $Res call({
    Object id = freezed,
    Object subscribedAt = freezed,
    Object currentPeriodEndAt = freezed,
    Object channel = freezed,
    Object isActive = freezed,
    Object latestInvoiceId = freezed,
    Object latestInvoice = freezed,
    Object defaultPaymentMethodId = freezed,
    Object typename = freezed,
  }) {
    return _then(_SubscribedChannel(
      id: id == freezed ? _value.id : id as String,
      subscribedAt: subscribedAt == freezed
          ? _value.subscribedAt
          : subscribedAt as DateTime,
      currentPeriodEndAt: currentPeriodEndAt == freezed
          ? _value.currentPeriodEndAt
          : currentPeriodEndAt as DateTime,
      channel: channel == freezed ? _value.channel : channel as Channel,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      latestInvoiceId: latestInvoiceId == freezed
          ? _value.latestInvoiceId
          : latestInvoiceId as String,
      latestInvoice: latestInvoice == freezed
          ? _value.latestInvoice
          : latestInvoice as LatestInvoice,
      defaultPaymentMethodId: defaultPaymentMethodId == freezed
          ? _value.defaultPaymentMethodId
          : defaultPaymentMethodId as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SubscribedChannel implements _SubscribedChannel {
  const _$_SubscribedChannel(
      {@required this.id,
      @required this.subscribedAt,
      @required this.currentPeriodEndAt,
      @required this.channel,
      @required this.isActive,
      @required this.latestInvoiceId,
      @required this.latestInvoice,
      @required this.defaultPaymentMethodId,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(subscribedAt != null),
        assert(currentPeriodEndAt != null),
        assert(channel != null),
        assert(isActive != null),
        assert(latestInvoiceId != null),
        assert(latestInvoice != null),
        assert(defaultPaymentMethodId != null),
        assert(typename != null),
        assert(typename == "SubscribedChannel");

  factory _$_SubscribedChannel.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscribedChannelFromJson(json);

  @override
  final String id;
  @override
  final DateTime subscribedAt;
  @override
  final DateTime currentPeriodEndAt;
  @override
  final Channel channel;
  @override
  final bool isActive;
  @override
  final String latestInvoiceId;
  @override
  final LatestInvoice latestInvoice;
  @override
  final String defaultPaymentMethodId;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'SubscribedChannel(id: $id, subscribedAt: $subscribedAt, currentPeriodEndAt: $currentPeriodEndAt, channel: $channel, isActive: $isActive, latestInvoiceId: $latestInvoiceId, latestInvoice: $latestInvoice, defaultPaymentMethodId: $defaultPaymentMethodId, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribedChannel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subscribedAt, subscribedAt) ||
                const DeepCollectionEquality()
                    .equals(other.subscribedAt, subscribedAt)) &&
            (identical(other.currentPeriodEndAt, currentPeriodEndAt) ||
                const DeepCollectionEquality()
                    .equals(other.currentPeriodEndAt, currentPeriodEndAt)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.latestInvoiceId, latestInvoiceId) ||
                const DeepCollectionEquality()
                    .equals(other.latestInvoiceId, latestInvoiceId)) &&
            (identical(other.latestInvoice, latestInvoice) ||
                const DeepCollectionEquality()
                    .equals(other.latestInvoice, latestInvoice)) &&
            (identical(other.defaultPaymentMethodId, defaultPaymentMethodId) ||
                const DeepCollectionEquality().equals(
                    other.defaultPaymentMethodId, defaultPaymentMethodId)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subscribedAt) ^
      const DeepCollectionEquality().hash(currentPeriodEndAt) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(latestInvoiceId) ^
      const DeepCollectionEquality().hash(latestInvoice) ^
      const DeepCollectionEquality().hash(defaultPaymentMethodId) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$SubscribedChannelCopyWith<_SubscribedChannel> get copyWith =>
      __$SubscribedChannelCopyWithImpl<_SubscribedChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscribedChannelToJson(this);
  }
}

abstract class _SubscribedChannel implements SubscribedChannel {
  const factory _SubscribedChannel(
          {@required String id,
          @required DateTime subscribedAt,
          @required DateTime currentPeriodEndAt,
          @required Channel channel,
          @required bool isActive,
          @required String latestInvoiceId,
          @required LatestInvoice latestInvoice,
          @required String defaultPaymentMethodId,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_SubscribedChannel;

  factory _SubscribedChannel.fromJson(Map<String, dynamic> json) =
      _$_SubscribedChannel.fromJson;

  @override
  String get id;
  @override
  DateTime get subscribedAt;
  @override
  DateTime get currentPeriodEndAt;
  @override
  Channel get channel;
  @override
  bool get isActive;
  @override
  String get latestInvoiceId;
  @override
  LatestInvoice get latestInvoice;
  @override
  String get defaultPaymentMethodId;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$SubscribedChannelCopyWith<_SubscribedChannel> get copyWith;
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
  @JsonKey(ignore: true)
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
  const _$_Channel(
      {@required this.id,
      @required this.name,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(typename != null),
        assert(typename == "Channel");

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

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelToJson(this);
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
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
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith;
}

LatestInvoice _$LatestInvoiceFromJson(Map<String, dynamic> json) {
  return _LatestInvoice.fromJson(json);
}

/// @nodoc
class _$LatestInvoiceTearOff {
  const _$LatestInvoiceTearOff();

// ignore: unused_element
  _LatestInvoice call(
      {@required String id,
      String description,
      @required DateTime createdAt,
      @required @protected String planType,
      @required String status,
      @required String hostedInvoiceUrl,
      dynamic nextPaymentAttempt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _LatestInvoice(
      id: id,
      description: description,
      createdAt: createdAt,
      planType: planType,
      status: status,
      hostedInvoiceUrl: hostedInvoiceUrl,
      nextPaymentAttempt: nextPaymentAttempt,
      typename: typename,
    );
  }

// ignore: unused_element
  LatestInvoice fromJson(Map<String, Object> json) {
    return LatestInvoice.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LatestInvoice = _$LatestInvoiceTearOff();

/// @nodoc
mixin _$LatestInvoice {
  String get id;
  String get description;
  DateTime get createdAt;

  /// use [planTypeStrict]
  @protected
  String get planType;
  String get status;
  String get hostedInvoiceUrl;
  dynamic get nextPaymentAttempt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LatestInvoiceCopyWith<LatestInvoice> get copyWith;
}

/// @nodoc
abstract class $LatestInvoiceCopyWith<$Res> {
  factory $LatestInvoiceCopyWith(
          LatestInvoice value, $Res Function(LatestInvoice) then) =
      _$LatestInvoiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String description,
      DateTime createdAt,
      @protected String planType,
      String status,
      String hostedInvoiceUrl,
      dynamic nextPaymentAttempt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$LatestInvoiceCopyWithImpl<$Res>
    implements $LatestInvoiceCopyWith<$Res> {
  _$LatestInvoiceCopyWithImpl(this._value, this._then);

  final LatestInvoice _value;
  // ignore: unused_field
  final $Res Function(LatestInvoice) _then;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object createdAt = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object hostedInvoiceUrl = freezed,
    Object nextPaymentAttempt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      description:
          description == freezed ? _value.description : description as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      hostedInvoiceUrl: hostedInvoiceUrl == freezed
          ? _value.hostedInvoiceUrl
          : hostedInvoiceUrl as String,
      nextPaymentAttempt: nextPaymentAttempt == freezed
          ? _value.nextPaymentAttempt
          : nextPaymentAttempt as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$LatestInvoiceCopyWith<$Res>
    implements $LatestInvoiceCopyWith<$Res> {
  factory _$LatestInvoiceCopyWith(
          _LatestInvoice value, $Res Function(_LatestInvoice) then) =
      __$LatestInvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String description,
      DateTime createdAt,
      @protected String planType,
      String status,
      String hostedInvoiceUrl,
      dynamic nextPaymentAttempt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$LatestInvoiceCopyWithImpl<$Res>
    extends _$LatestInvoiceCopyWithImpl<$Res>
    implements _$LatestInvoiceCopyWith<$Res> {
  __$LatestInvoiceCopyWithImpl(
      _LatestInvoice _value, $Res Function(_LatestInvoice) _then)
      : super(_value, (v) => _then(v as _LatestInvoice));

  @override
  _LatestInvoice get _value => super._value as _LatestInvoice;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object createdAt = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object hostedInvoiceUrl = freezed,
    Object nextPaymentAttempt = freezed,
    Object typename = freezed,
  }) {
    return _then(_LatestInvoice(
      id: id == freezed ? _value.id : id as String,
      description:
          description == freezed ? _value.description : description as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      hostedInvoiceUrl: hostedInvoiceUrl == freezed
          ? _value.hostedInvoiceUrl
          : hostedInvoiceUrl as String,
      nextPaymentAttempt: nextPaymentAttempt == freezed
          ? _value.nextPaymentAttempt
          : nextPaymentAttempt as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LatestInvoice extends _LatestInvoice {
  const _$_LatestInvoice(
      {@required this.id,
      this.description,
      @required this.createdAt,
      @required @protected this.planType,
      @required this.status,
      @required this.hostedInvoiceUrl,
      this.nextPaymentAttempt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(createdAt != null),
        assert(planType != null),
        assert(status != null),
        assert(hostedInvoiceUrl != null),
        assert(typename != null),
        assert(typename == "Invoice"),
        super._();

  factory _$_LatestInvoice.fromJson(Map<String, dynamic> json) =>
      _$_$_LatestInvoiceFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override

  /// use [planTypeStrict]
  @protected
  final String planType;
  @override
  final String status;
  @override
  final String hostedInvoiceUrl;
  @override
  final dynamic nextPaymentAttempt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'LatestInvoice(id: $id, description: $description, createdAt: $createdAt, planType: $planType, status: $status, hostedInvoiceUrl: $hostedInvoiceUrl, nextPaymentAttempt: $nextPaymentAttempt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LatestInvoice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.planType, planType) ||
                const DeepCollectionEquality()
                    .equals(other.planType, planType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.hostedInvoiceUrl, hostedInvoiceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.hostedInvoiceUrl, hostedInvoiceUrl)) &&
            (identical(other.nextPaymentAttempt, nextPaymentAttempt) ||
                const DeepCollectionEquality()
                    .equals(other.nextPaymentAttempt, nextPaymentAttempt)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(hostedInvoiceUrl) ^
      const DeepCollectionEquality().hash(nextPaymentAttempt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$LatestInvoiceCopyWith<_LatestInvoice> get copyWith =>
      __$LatestInvoiceCopyWithImpl<_LatestInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LatestInvoiceToJson(this);
  }
}

abstract class _LatestInvoice extends LatestInvoice {
  const _LatestInvoice._() : super._();
  const factory _LatestInvoice(
          {@required String id,
          String description,
          @required DateTime createdAt,
          @required @protected String planType,
          @required String status,
          @required String hostedInvoiceUrl,
          dynamic nextPaymentAttempt,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_LatestInvoice;

  factory _LatestInvoice.fromJson(Map<String, dynamic> json) =
      _$_LatestInvoice.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override

  /// use [planTypeStrict]
  @protected
  String get planType;
  @override
  String get status;
  @override
  String get hostedInvoiceUrl;
  @override
  dynamic get nextPaymentAttempt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$LatestInvoiceCopyWith<_LatestInvoice> get copyWith;
}

WatchHistories _$WatchHistoriesFromJson(Map<String, dynamic> json) {
  return _WatchHistories.fromJson(json);
}

/// @nodoc
class _$WatchHistoriesTearOff {
  const _$WatchHistoriesTearOff();

// ignore: unused_element
  _WatchHistories call(
      {String nextToken,
      @required
      @JsonKey(name: 'items')
      @protected
          List<WatchHistoriesItem> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _WatchHistories(
      nextToken: nextToken,
      rawItems: rawItems,
      typename: typename,
    );
  }

// ignore: unused_element
  WatchHistories fromJson(Map<String, Object> json) {
    return WatchHistories.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistories = _$WatchHistoriesTearOff();

/// @nodoc
mixin _$WatchHistories {
  String get nextToken;
  @JsonKey(name: 'items')
  @protected
  List<WatchHistoriesItem> get rawItems;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WatchHistoriesCopyWith<WatchHistories> get copyWith;
}

/// @nodoc
abstract class $WatchHistoriesCopyWith<$Res> {
  factory $WatchHistoriesCopyWith(
          WatchHistories value, $Res Function(WatchHistories) then) =
      _$WatchHistoriesCopyWithImpl<$Res>;
  $Res call(
      {String nextToken,
      @JsonKey(name: 'items') @protected List<WatchHistoriesItem> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$WatchHistoriesCopyWithImpl<$Res>
    implements $WatchHistoriesCopyWith<$Res> {
  _$WatchHistoriesCopyWithImpl(this._value, this._then);

  final WatchHistories _value;
  // ignore: unused_field
  final $Res Function(WatchHistories) _then;

  @override
  $Res call({
    Object nextToken = freezed,
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<WatchHistoriesItem>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$WatchHistoriesCopyWith<$Res>
    implements $WatchHistoriesCopyWith<$Res> {
  factory _$WatchHistoriesCopyWith(
          _WatchHistories value, $Res Function(_WatchHistories) then) =
      __$WatchHistoriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nextToken,
      @JsonKey(name: 'items') @protected List<WatchHistoriesItem> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$WatchHistoriesCopyWithImpl<$Res>
    extends _$WatchHistoriesCopyWithImpl<$Res>
    implements _$WatchHistoriesCopyWith<$Res> {
  __$WatchHistoriesCopyWithImpl(
      _WatchHistories _value, $Res Function(_WatchHistories) _then)
      : super(_value, (v) => _then(v as _WatchHistories));

  @override
  _WatchHistories get _value => super._value as _WatchHistories;

  @override
  $Res call({
    Object nextToken = freezed,
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_WatchHistories(
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<WatchHistoriesItem>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WatchHistories extends _WatchHistories {
  const _$_WatchHistories(
      {this.nextToken,
      @required @JsonKey(name: 'items') @protected this.rawItems,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ModelWatchHistoryConnection"),
        super._();

  factory _$_WatchHistories.fromJson(Map<String, dynamic> json) =>
      _$_$_WatchHistoriesFromJson(json);

  @override
  final String nextToken;
  @override
  @JsonKey(name: 'items')
  @protected
  final List<WatchHistoriesItem> rawItems;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'WatchHistories(nextToken: $nextToken, rawItems: $rawItems, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistories &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$WatchHistoriesCopyWith<_WatchHistories> get copyWith =>
      __$WatchHistoriesCopyWithImpl<_WatchHistories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WatchHistoriesToJson(this);
  }
}

abstract class _WatchHistories extends WatchHistories {
  const _WatchHistories._() : super._();
  const factory _WatchHistories(
      {String nextToken,
      @required
      @JsonKey(name: 'items')
      @protected
          List<WatchHistoriesItem> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_WatchHistories;

  factory _WatchHistories.fromJson(Map<String, dynamic> json) =
      _$_WatchHistories.fromJson;

  @override
  String get nextToken;
  @override
  @JsonKey(name: 'items')
  @protected
  List<WatchHistoriesItem> get rawItems;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$WatchHistoriesCopyWith<_WatchHistories> get copyWith;
}

WatchHistoriesItem _$WatchHistoriesItemFromJson(Map<String, dynamic> json) {
  return _WatchHistoriesItem.fromJson(json);
}

/// @nodoc
class _$WatchHistoriesItemTearOff {
  const _$WatchHistoriesItemTearOff();

// ignore: unused_element
  _WatchHistoriesItem call(
      {@required String id,
      @required DateTime lastViewedAt,
      @required Program program,
      @required @JsonKey(name: '__typename') String typename}) {
    return _WatchHistoriesItem(
      id: id,
      lastViewedAt: lastViewedAt,
      program: program,
      typename: typename,
    );
  }

// ignore: unused_element
  WatchHistoriesItem fromJson(Map<String, Object> json) {
    return WatchHistoriesItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistoriesItem = _$WatchHistoriesItemTearOff();

/// @nodoc
mixin _$WatchHistoriesItem {
  String get id;
  DateTime get lastViewedAt;
  Program get program;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WatchHistoriesItemCopyWith<WatchHistoriesItem> get copyWith;
}

/// @nodoc
abstract class $WatchHistoriesItemCopyWith<$Res> {
  factory $WatchHistoriesItemCopyWith(
          WatchHistoriesItem value, $Res Function(WatchHistoriesItem) then) =
      _$WatchHistoriesItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime lastViewedAt,
      Program program,
      @JsonKey(name: '__typename') String typename});

  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class _$WatchHistoriesItemCopyWithImpl<$Res>
    implements $WatchHistoriesItemCopyWith<$Res> {
  _$WatchHistoriesItemCopyWithImpl(this._value, this._then);

  final WatchHistoriesItem _value;
  // ignore: unused_field
  final $Res Function(WatchHistoriesItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object lastViewedAt = freezed,
    Object program = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      lastViewedAt: lastViewedAt == freezed
          ? _value.lastViewedAt
          : lastViewedAt as DateTime,
      program: program == freezed ? _value.program : program as Program,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $ProgramCopyWith<$Res> get program {
    if (_value.program == null) {
      return null;
    }
    return $ProgramCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc
abstract class _$WatchHistoriesItemCopyWith<$Res>
    implements $WatchHistoriesItemCopyWith<$Res> {
  factory _$WatchHistoriesItemCopyWith(
          _WatchHistoriesItem value, $Res Function(_WatchHistoriesItem) then) =
      __$WatchHistoriesItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime lastViewedAt,
      Program program,
      @JsonKey(name: '__typename') String typename});

  @override
  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class __$WatchHistoriesItemCopyWithImpl<$Res>
    extends _$WatchHistoriesItemCopyWithImpl<$Res>
    implements _$WatchHistoriesItemCopyWith<$Res> {
  __$WatchHistoriesItemCopyWithImpl(
      _WatchHistoriesItem _value, $Res Function(_WatchHistoriesItem) _then)
      : super(_value, (v) => _then(v as _WatchHistoriesItem));

  @override
  _WatchHistoriesItem get _value => super._value as _WatchHistoriesItem;

  @override
  $Res call({
    Object id = freezed,
    Object lastViewedAt = freezed,
    Object program = freezed,
    Object typename = freezed,
  }) {
    return _then(_WatchHistoriesItem(
      id: id == freezed ? _value.id : id as String,
      lastViewedAt: lastViewedAt == freezed
          ? _value.lastViewedAt
          : lastViewedAt as DateTime,
      program: program == freezed ? _value.program : program as Program,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WatchHistoriesItem implements _WatchHistoriesItem {
  const _$_WatchHistoriesItem(
      {@required this.id,
      @required this.lastViewedAt,
      @required this.program,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(lastViewedAt != null),
        assert(program != null),
        assert(typename != null),
        assert(typename == "WatchHistory");

  factory _$_WatchHistoriesItem.fromJson(Map<String, dynamic> json) =>
      _$_$_WatchHistoriesItemFromJson(json);

  @override
  final String id;
  @override
  final DateTime lastViewedAt;
  @override
  final Program program;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'WatchHistoriesItem(id: $id, lastViewedAt: $lastViewedAt, program: $program, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistoriesItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastViewedAt, lastViewedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastViewedAt, lastViewedAt)) &&
            (identical(other.program, program) ||
                const DeepCollectionEquality()
                    .equals(other.program, program)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastViewedAt) ^
      const DeepCollectionEquality().hash(program) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$WatchHistoriesItemCopyWith<_WatchHistoriesItem> get copyWith =>
      __$WatchHistoriesItemCopyWithImpl<_WatchHistoriesItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WatchHistoriesItemToJson(this);
  }
}

abstract class _WatchHistoriesItem implements WatchHistoriesItem {
  const factory _WatchHistoriesItem(
          {@required String id,
          @required DateTime lastViewedAt,
          @required Program program,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_WatchHistoriesItem;

  factory _WatchHistoriesItem.fromJson(Map<String, dynamic> json) =
      _$_WatchHistoriesItem.fromJson;

  @override
  String get id;
  @override
  DateTime get lastViewedAt;
  @override
  Program get program;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$WatchHistoriesItemCopyWith<_WatchHistoriesItem> get copyWith;
}

Program _$ProgramFromJson(Map<String, dynamic> json) {
  return _Program.fromJson(json);
}

/// @nodoc
class _$ProgramTearOff {
  const _$ProgramTearOff();

// ignore: unused_element
  _Program call(
      {@required String id,
      @required String tenantId,
      @required String channelId,
      @required String title,
      @required String detail,
      @required DateTime broadcastAt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Program(
      id: id,
      tenantId: tenantId,
      channelId: channelId,
      title: title,
      detail: detail,
      broadcastAt: broadcastAt,
      typename: typename,
    );
  }

// ignore: unused_element
  Program fromJson(Map<String, Object> json) {
    return Program.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Program = _$ProgramTearOff();

/// @nodoc
mixin _$Program {
  String get id;
  String get tenantId;
  String get channelId;
  String get title;
  String get detail;
  DateTime get broadcastAt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramCopyWith<Program> get copyWith;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tenantId,
      String channelId,
      String title,
      String detail,
      DateTime broadcastAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res> implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  final Program _value;
  // ignore: unused_field
  final $Res Function(Program) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object channelId = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object broadcastAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ProgramCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$ProgramCopyWith(_Program value, $Res Function(_Program) then) =
      __$ProgramCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tenantId,
      String channelId,
      String title,
      String detail,
      DateTime broadcastAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ProgramCopyWithImpl<$Res> extends _$ProgramCopyWithImpl<$Res>
    implements _$ProgramCopyWith<$Res> {
  __$ProgramCopyWithImpl(_Program _value, $Res Function(_Program) _then)
      : super(_value, (v) => _then(v as _Program));

  @override
  _Program get _value => super._value as _Program;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object channelId = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object broadcastAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_Program(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Program implements _Program {
  const _$_Program(
      {@required this.id,
      @required this.tenantId,
      @required this.channelId,
      @required this.title,
      @required this.detail,
      @required this.broadcastAt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(tenantId != null),
        assert(channelId != null),
        assert(title != null),
        assert(detail != null),
        assert(broadcastAt != null),
        assert(typename != null),
        assert(typename == "Program");

  factory _$_Program.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String detail;
  @override
  final DateTime broadcastAt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Program(id: $id, tenantId: $tenantId, channelId: $channelId, title: $title, detail: $detail, broadcastAt: $broadcastAt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Program &&
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
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
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
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ProgramCopyWith<_Program> get copyWith =>
      __$ProgramCopyWithImpl<_Program>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramToJson(this);
  }
}

abstract class _Program implements Program {
  const factory _Program(
      {@required String id,
      @required String tenantId,
      @required String channelId,
      @required String title,
      @required String detail,
      @required DateTime broadcastAt,
      @required @JsonKey(name: '__typename') String typename}) = _$_Program;

  factory _Program.fromJson(Map<String, dynamic> json) = _$_Program.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get channelId;
  @override
  String get title;
  @override
  String get detail;
  @override
  DateTime get broadcastAt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ProgramCopyWith<_Program> get copyWith;
}
