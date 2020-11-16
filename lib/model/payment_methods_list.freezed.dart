// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_methods_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentMethodsData _$PaymentMethodsDataFromJson(Map<String, dynamic> json) {
  return _PaymentMethodsData.fromJson(json);
}

/// @nodoc
class _$PaymentMethodsDataTearOff {
  const _$PaymentMethodsDataTearOff();

// ignore: unused_element
  _PaymentMethodsData call({@required Viewer viewer}) {
    return _PaymentMethodsData(
      viewer: viewer,
    );
  }

// ignore: unused_element
  PaymentMethodsData fromJson(Map<String, Object> json) {
    return PaymentMethodsData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentMethodsData = _$PaymentMethodsDataTearOff();

/// @nodoc
mixin _$PaymentMethodsData {
  Viewer get viewer;

  Map<String, dynamic> toJson();
  $PaymentMethodsDataCopyWith<PaymentMethodsData> get copyWith;
}

/// @nodoc
abstract class $PaymentMethodsDataCopyWith<$Res> {
  factory $PaymentMethodsDataCopyWith(
          PaymentMethodsData value, $Res Function(PaymentMethodsData) then) =
      _$PaymentMethodsDataCopyWithImpl<$Res>;
  $Res call({Viewer viewer});

  $ViewerCopyWith<$Res> get viewer;
}

/// @nodoc
class _$PaymentMethodsDataCopyWithImpl<$Res>
    implements $PaymentMethodsDataCopyWith<$Res> {
  _$PaymentMethodsDataCopyWithImpl(this._value, this._then);

  final PaymentMethodsData _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodsData) _then;

  @override
  $Res call({
    Object viewer = freezed,
  }) {
    return _then(_value.copyWith(
      viewer: viewer == freezed ? _value.viewer : viewer as Viewer,
    ));
  }

  @override
  $ViewerCopyWith<$Res> get viewer {
    if (_value.viewer == null) {
      return null;
    }
    return $ViewerCopyWith<$Res>(_value.viewer, (value) {
      return _then(_value.copyWith(viewer: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentMethodsDataCopyWith<$Res>
    implements $PaymentMethodsDataCopyWith<$Res> {
  factory _$PaymentMethodsDataCopyWith(
          _PaymentMethodsData value, $Res Function(_PaymentMethodsData) then) =
      __$PaymentMethodsDataCopyWithImpl<$Res>;
  @override
  $Res call({Viewer viewer});

  @override
  $ViewerCopyWith<$Res> get viewer;
}

/// @nodoc
class __$PaymentMethodsDataCopyWithImpl<$Res>
    extends _$PaymentMethodsDataCopyWithImpl<$Res>
    implements _$PaymentMethodsDataCopyWith<$Res> {
  __$PaymentMethodsDataCopyWithImpl(
      _PaymentMethodsData _value, $Res Function(_PaymentMethodsData) _then)
      : super(_value, (v) => _then(v as _PaymentMethodsData));

  @override
  _PaymentMethodsData get _value => super._value as _PaymentMethodsData;

  @override
  $Res call({
    Object viewer = freezed,
  }) {
    return _then(_PaymentMethodsData(
      viewer: viewer == freezed ? _value.viewer : viewer as Viewer,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentMethodsData implements _PaymentMethodsData {
  const _$_PaymentMethodsData({@required this.viewer}) : assert(viewer != null);

  factory _$_PaymentMethodsData.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMethodsDataFromJson(json);

  @override
  final Viewer viewer;

  @override
  String toString() {
    return 'PaymentMethodsData(viewer: $viewer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMethodsData &&
            (identical(other.viewer, viewer) ||
                const DeepCollectionEquality().equals(other.viewer, viewer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(viewer);

  @override
  _$PaymentMethodsDataCopyWith<_PaymentMethodsData> get copyWith =>
      __$PaymentMethodsDataCopyWithImpl<_PaymentMethodsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMethodsDataToJson(this);
  }
}

abstract class _PaymentMethodsData implements PaymentMethodsData {
  const factory _PaymentMethodsData({@required Viewer viewer}) =
      _$_PaymentMethodsData;

  factory _PaymentMethodsData.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodsData.fromJson;

  @override
  Viewer get viewer;
  @override
  _$PaymentMethodsDataCopyWith<_PaymentMethodsData> get copyWith;
}

Viewer _$ViewerFromJson(Map<String, dynamic> json) {
  return _Viewer.fromJson(json);
}

/// @nodoc
class _$ViewerTearOff {
  const _$ViewerTearOff();

// ignore: unused_element
  _Viewer call(
      {@required List<PaymentMethod> paymentMethods,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Viewer(
      paymentMethods: paymentMethods,
      typename: typename,
    );
  }

// ignore: unused_element
  Viewer fromJson(Map<String, Object> json) {
    return Viewer.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Viewer = _$ViewerTearOff();

/// @nodoc
mixin _$Viewer {
  List<PaymentMethod> get paymentMethods;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $ViewerCopyWith<Viewer> get copyWith;
}

/// @nodoc
abstract class $ViewerCopyWith<$Res> {
  factory $ViewerCopyWith(Viewer value, $Res Function(Viewer) then) =
      _$ViewerCopyWithImpl<$Res>;
  $Res call(
      {List<PaymentMethod> paymentMethods,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ViewerCopyWithImpl<$Res> implements $ViewerCopyWith<$Res> {
  _$ViewerCopyWithImpl(this._value, this._then);

  final Viewer _value;
  // ignore: unused_field
  final $Res Function(Viewer) _then;

  @override
  $Res call({
    Object paymentMethods = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods as List<PaymentMethod>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ViewerCopyWith<$Res> implements $ViewerCopyWith<$Res> {
  factory _$ViewerCopyWith(_Viewer value, $Res Function(_Viewer) then) =
      __$ViewerCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PaymentMethod> paymentMethods,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ViewerCopyWithImpl<$Res> extends _$ViewerCopyWithImpl<$Res>
    implements _$ViewerCopyWith<$Res> {
  __$ViewerCopyWithImpl(_Viewer _value, $Res Function(_Viewer) _then)
      : super(_value, (v) => _then(v as _Viewer));

  @override
  _Viewer get _value => super._value as _Viewer;

  @override
  $Res call({
    Object paymentMethods = freezed,
    Object typename = freezed,
  }) {
    return _then(_Viewer(
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods as List<PaymentMethod>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Viewer implements _Viewer {
  const _$_Viewer(
      {@required this.paymentMethods,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(paymentMethods != null),
        assert(typename != null);

  factory _$_Viewer.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerFromJson(json);

  @override
  final List<PaymentMethod> paymentMethods;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Viewer(paymentMethods: $paymentMethods, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewer &&
            (identical(other.paymentMethods, paymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethods, paymentMethods)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentMethods) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$ViewerCopyWith<_Viewer> get copyWith =>
      __$ViewerCopyWithImpl<_Viewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerToJson(this);
  }
}

abstract class _Viewer implements Viewer {
  const factory _Viewer(
      {@required List<PaymentMethod> paymentMethods,
      @required @JsonKey(name: '__typename') String typename}) = _$_Viewer;

  factory _Viewer.fromJson(Map<String, dynamic> json) = _$_Viewer.fromJson;

  @override
  List<PaymentMethod> get paymentMethods;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$ViewerCopyWith<_Viewer> get copyWith;
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
        assert(typename != null);

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
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith;
}
