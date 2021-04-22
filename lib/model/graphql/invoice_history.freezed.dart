// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'invoice_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InvoiceHistory _$InvoiceHistoryFromJson(Map<String, dynamic> json) {
  return _InvoiceHistory.fromJson(json);
}

/// @nodoc
class _$InvoiceHistoryTearOff {
  const _$InvoiceHistoryTearOff();

// ignore: unused_element
  _InvoiceHistory call(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<InvoiceHistoryItem> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _InvoiceHistory(
      rawItems: rawItems,
      typename: typename,
    );
  }

// ignore: unused_element
  InvoiceHistory fromJson(Map<String, Object> json) {
    return InvoiceHistory.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InvoiceHistory = _$InvoiceHistoryTearOff();

/// @nodoc
mixin _$InvoiceHistory {
  @JsonKey(name: 'items')
  @protected
  List<InvoiceHistoryItem> get rawItems;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InvoiceHistoryCopyWith<InvoiceHistory> get copyWith;
}

/// @nodoc
abstract class $InvoiceHistoryCopyWith<$Res> {
  factory $InvoiceHistoryCopyWith(
          InvoiceHistory value, $Res Function(InvoiceHistory) then) =
      _$InvoiceHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<InvoiceHistoryItem> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$InvoiceHistoryCopyWithImpl<$Res>
    implements $InvoiceHistoryCopyWith<$Res> {
  _$InvoiceHistoryCopyWithImpl(this._value, this._then);

  final InvoiceHistory _value;
  // ignore: unused_field
  final $Res Function(InvoiceHistory) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<InvoiceHistoryItem>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceHistoryCopyWith<$Res>
    implements $InvoiceHistoryCopyWith<$Res> {
  factory _$InvoiceHistoryCopyWith(
          _InvoiceHistory value, $Res Function(_InvoiceHistory) then) =
      __$InvoiceHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<InvoiceHistoryItem> rawItems,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$InvoiceHistoryCopyWithImpl<$Res>
    extends _$InvoiceHistoryCopyWithImpl<$Res>
    implements _$InvoiceHistoryCopyWith<$Res> {
  __$InvoiceHistoryCopyWithImpl(
      _InvoiceHistory _value, $Res Function(_InvoiceHistory) _then)
      : super(_value, (v) => _then(v as _InvoiceHistory));

  @override
  _InvoiceHistory get _value => super._value as _InvoiceHistory;

  @override
  $Res call({
    Object rawItems = freezed,
    Object typename = freezed,
  }) {
    return _then(_InvoiceHistory(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<InvoiceHistoryItem>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InvoiceHistory extends _InvoiceHistory {
  const _$_InvoiceHistory(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "InvoiceConnection"),
        super._();

  factory _$_InvoiceHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_InvoiceHistoryFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<InvoiceHistoryItem> rawItems;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'InvoiceHistory(rawItems: $rawItems, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceHistory &&
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
  _$InvoiceHistoryCopyWith<_InvoiceHistory> get copyWith =>
      __$InvoiceHistoryCopyWithImpl<_InvoiceHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvoiceHistoryToJson(this);
  }
}

abstract class _InvoiceHistory extends InvoiceHistory {
  const _InvoiceHistory._() : super._();
  const factory _InvoiceHistory(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<InvoiceHistoryItem> rawItems,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_InvoiceHistory;

  factory _InvoiceHistory.fromJson(Map<String, dynamic> json) =
      _$_InvoiceHistory.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<InvoiceHistoryItem> get rawItems;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$InvoiceHistoryCopyWith<_InvoiceHistory> get copyWith;
}

InvoiceHistoryItem _$InvoiceHistoryItemFromJson(Map<String, dynamic> json) {
  return _InvoiceHistoryItem.fromJson(json);
}

/// @nodoc
class _$InvoiceHistoryItemTearOff {
  const _$InvoiceHistoryItemTearOff();

// ignore: unused_element
  _InvoiceHistoryItem call(
      {@required String id,
      @required int total,
      @required int subtotal,
      @required int tax,
      @required int discountAmount,
      @required String currency,
      @required String label,
      @required DateTime createdAt,
      @required @protected String planType,
      @required String status,
      @required @JsonKey(name: '__typename') String typename,
      String hostedInvoiceUrl}) {
    return _InvoiceHistoryItem(
      id: id,
      total: total,
      subtotal: subtotal,
      tax: tax,
      discountAmount: discountAmount,
      currency: currency,
      label: label,
      createdAt: createdAt,
      planType: planType,
      status: status,
      typename: typename,
      hostedInvoiceUrl: hostedInvoiceUrl,
    );
  }

// ignore: unused_element
  InvoiceHistoryItem fromJson(Map<String, Object> json) {
    return InvoiceHistoryItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InvoiceHistoryItem = _$InvoiceHistoryItemTearOff();

/// @nodoc
mixin _$InvoiceHistoryItem {
  String get id;
  int get total;
  int get subtotal;
  int get tax;
  int get discountAmount;
  String get currency;
  String get label;
  DateTime get createdAt;

  /// use [planTypeStrict]
  @protected
  String get planType;
  String
      get status; // @required @JsonKey(name: 'products') @protected List<Product> rawProducts,
  @JsonKey(name: '__typename')
  String get typename;
  String get hostedInvoiceUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InvoiceHistoryItemCopyWith<InvoiceHistoryItem> get copyWith;
}

/// @nodoc
abstract class $InvoiceHistoryItemCopyWith<$Res> {
  factory $InvoiceHistoryItemCopyWith(
          InvoiceHistoryItem value, $Res Function(InvoiceHistoryItem) then) =
      _$InvoiceHistoryItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int total,
      int subtotal,
      int tax,
      int discountAmount,
      String currency,
      String label,
      DateTime createdAt,
      @protected String planType,
      String status,
      @JsonKey(name: '__typename') String typename,
      String hostedInvoiceUrl});
}

/// @nodoc
class _$InvoiceHistoryItemCopyWithImpl<$Res>
    implements $InvoiceHistoryItemCopyWith<$Res> {
  _$InvoiceHistoryItemCopyWithImpl(this._value, this._then);

  final InvoiceHistoryItem _value;
  // ignore: unused_field
  final $Res Function(InvoiceHistoryItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object total = freezed,
    Object subtotal = freezed,
    Object tax = freezed,
    Object discountAmount = freezed,
    Object currency = freezed,
    Object label = freezed,
    Object createdAt = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object typename = freezed,
    Object hostedInvoiceUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      total: total == freezed ? _value.total : total as int,
      subtotal: subtotal == freezed ? _value.subtotal : subtotal as int,
      tax: tax == freezed ? _value.tax : tax as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      label: label == freezed ? _value.label : label as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      typename: typename == freezed ? _value.typename : typename as String,
      hostedInvoiceUrl: hostedInvoiceUrl == freezed
          ? _value.hostedInvoiceUrl
          : hostedInvoiceUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceHistoryItemCopyWith<$Res>
    implements $InvoiceHistoryItemCopyWith<$Res> {
  factory _$InvoiceHistoryItemCopyWith(
          _InvoiceHistoryItem value, $Res Function(_InvoiceHistoryItem) then) =
      __$InvoiceHistoryItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int total,
      int subtotal,
      int tax,
      int discountAmount,
      String currency,
      String label,
      DateTime createdAt,
      @protected String planType,
      String status,
      @JsonKey(name: '__typename') String typename,
      String hostedInvoiceUrl});
}

/// @nodoc
class __$InvoiceHistoryItemCopyWithImpl<$Res>
    extends _$InvoiceHistoryItemCopyWithImpl<$Res>
    implements _$InvoiceHistoryItemCopyWith<$Res> {
  __$InvoiceHistoryItemCopyWithImpl(
      _InvoiceHistoryItem _value, $Res Function(_InvoiceHistoryItem) _then)
      : super(_value, (v) => _then(v as _InvoiceHistoryItem));

  @override
  _InvoiceHistoryItem get _value => super._value as _InvoiceHistoryItem;

  @override
  $Res call({
    Object id = freezed,
    Object total = freezed,
    Object subtotal = freezed,
    Object tax = freezed,
    Object discountAmount = freezed,
    Object currency = freezed,
    Object label = freezed,
    Object createdAt = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object typename = freezed,
    Object hostedInvoiceUrl = freezed,
  }) {
    return _then(_InvoiceHistoryItem(
      id: id == freezed ? _value.id : id as String,
      total: total == freezed ? _value.total : total as int,
      subtotal: subtotal == freezed ? _value.subtotal : subtotal as int,
      tax: tax == freezed ? _value.tax : tax as int,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      label: label == freezed ? _value.label : label as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      typename: typename == freezed ? _value.typename : typename as String,
      hostedInvoiceUrl: hostedInvoiceUrl == freezed
          ? _value.hostedInvoiceUrl
          : hostedInvoiceUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InvoiceHistoryItem extends _InvoiceHistoryItem {
  const _$_InvoiceHistoryItem(
      {@required this.id,
      @required this.total,
      @required this.subtotal,
      @required this.tax,
      @required this.discountAmount,
      @required this.currency,
      @required this.label,
      @required this.createdAt,
      @required @protected this.planType,
      @required this.status,
      @required @JsonKey(name: '__typename') this.typename,
      this.hostedInvoiceUrl})
      : assert(id != null),
        assert(total != null),
        assert(subtotal != null),
        assert(tax != null),
        assert(discountAmount != null),
        assert(currency != null),
        assert(label != null),
        assert(createdAt != null),
        assert(planType != null),
        assert(status != null),
        assert(typename != null),
        assert(typename == "Invoice"),
        super._();

  factory _$_InvoiceHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$_$_InvoiceHistoryItemFromJson(json);

  @override
  final String id;
  @override
  final int total;
  @override
  final int subtotal;
  @override
  final int tax;
  @override
  final int discountAmount;
  @override
  final String currency;
  @override
  final String label;
  @override
  final DateTime createdAt;
  @override

  /// use [planTypeStrict]
  @protected
  final String planType;
  @override
  final String status;
  @override // @required @JsonKey(name: 'products') @protected List<Product> rawProducts,
  @JsonKey(name: '__typename')
  final String typename;
  @override
  final String hostedInvoiceUrl;

  @override
  String toString() {
    return 'InvoiceHistoryItem(id: $id, total: $total, subtotal: $subtotal, tax: $tax, discountAmount: $discountAmount, currency: $currency, label: $label, createdAt: $createdAt, planType: $planType, status: $status, typename: $typename, hostedInvoiceUrl: $hostedInvoiceUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceHistoryItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.tax, tax) ||
                const DeepCollectionEquality().equals(other.tax, tax)) &&
            (identical(other.discountAmount, discountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.discountAmount, discountAmount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.planType, planType) ||
                const DeepCollectionEquality()
                    .equals(other.planType, planType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)) &&
            (identical(other.hostedInvoiceUrl, hostedInvoiceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.hostedInvoiceUrl, hostedInvoiceUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(tax) ^
      const DeepCollectionEquality().hash(discountAmount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(typename) ^
      const DeepCollectionEquality().hash(hostedInvoiceUrl);

  @JsonKey(ignore: true)
  @override
  _$InvoiceHistoryItemCopyWith<_InvoiceHistoryItem> get copyWith =>
      __$InvoiceHistoryItemCopyWithImpl<_InvoiceHistoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvoiceHistoryItemToJson(this);
  }
}

abstract class _InvoiceHistoryItem extends InvoiceHistoryItem {
  const _InvoiceHistoryItem._() : super._();
  const factory _InvoiceHistoryItem(
      {@required String id,
      @required int total,
      @required int subtotal,
      @required int tax,
      @required int discountAmount,
      @required String currency,
      @required String label,
      @required DateTime createdAt,
      @required @protected String planType,
      @required String status,
      @required @JsonKey(name: '__typename') String typename,
      String hostedInvoiceUrl}) = _$_InvoiceHistoryItem;

  factory _InvoiceHistoryItem.fromJson(Map<String, dynamic> json) =
      _$_InvoiceHistoryItem.fromJson;

  @override
  String get id;
  @override
  int get total;
  @override
  int get subtotal;
  @override
  int get tax;
  @override
  int get discountAmount;
  @override
  String get currency;
  @override
  String get label;
  @override
  DateTime get createdAt;
  @override

  /// use [planTypeStrict]
  @protected
  String get planType;
  @override
  String get status;
  @override // @required @JsonKey(name: 'products') @protected List<Product> rawProducts,
  @JsonKey(name: '__typename')
  String get typename;
  @override
  String get hostedInvoiceUrl;
  @override
  @JsonKey(ignore: true)
  _$InvoiceHistoryItemCopyWith<_InvoiceHistoryItem> get copyWith;
}

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
class _$DiscountTearOff {
  const _$DiscountTearOff();

// ignore: unused_element
  _Discount call(
      {@required Coupon coupon,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Discount(
      coupon: coupon,
      typename: typename,
    );
  }

// ignore: unused_element
  Discount fromJson(Map<String, Object> json) {
    return Discount.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Discount = _$DiscountTearOff();

/// @nodoc
mixin _$Discount {
  Coupon get coupon;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DiscountCopyWith<Discount> get copyWith;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res>;
  $Res call({Coupon coupon, @JsonKey(name: '__typename') String typename});

  $CouponCopyWith<$Res> get coupon;
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res> implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  final Discount _value;
  // ignore: unused_field
  final $Res Function(Discount) _then;

  @override
  $Res call({
    Object coupon = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      coupon: coupon == freezed ? _value.coupon : coupon as Coupon,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $CouponCopyWith<$Res> get coupon {
    if (_value.coupon == null) {
      return null;
    }
    return $CouponCopyWith<$Res>(_value.coupon, (value) {
      return _then(_value.copyWith(coupon: value));
    });
  }
}

/// @nodoc
abstract class _$DiscountCopyWith<$Res> implements $DiscountCopyWith<$Res> {
  factory _$DiscountCopyWith(_Discount value, $Res Function(_Discount) then) =
      __$DiscountCopyWithImpl<$Res>;
  @override
  $Res call({Coupon coupon, @JsonKey(name: '__typename') String typename});

  @override
  $CouponCopyWith<$Res> get coupon;
}

/// @nodoc
class __$DiscountCopyWithImpl<$Res> extends _$DiscountCopyWithImpl<$Res>
    implements _$DiscountCopyWith<$Res> {
  __$DiscountCopyWithImpl(_Discount _value, $Res Function(_Discount) _then)
      : super(_value, (v) => _then(v as _Discount));

  @override
  _Discount get _value => super._value as _Discount;

  @override
  $Res call({
    Object coupon = freezed,
    Object typename = freezed,
  }) {
    return _then(_Discount(
      coupon: coupon == freezed ? _value.coupon : coupon as Coupon,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Discount implements _Discount {
  const _$_Discount(
      {@required this.coupon,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(coupon != null),
        assert(typename != null),
        assert(typename == "Discount");

  factory _$_Discount.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscountFromJson(json);

  @override
  final Coupon coupon;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Discount(coupon: $coupon, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Discount &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coupon) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$DiscountCopyWith<_Discount> get copyWith =>
      __$DiscountCopyWithImpl<_Discount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscountToJson(this);
  }
}

abstract class _Discount implements Discount {
  const factory _Discount(
      {@required Coupon coupon,
      @required @JsonKey(name: '__typename') String typename}) = _$_Discount;

  factory _Discount.fromJson(Map<String, dynamic> json) = _$_Discount.fromJson;

  @override
  Coupon get coupon;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$DiscountCopyWith<_Discount> get copyWith;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
class _$CouponTearOff {
  const _$CouponTearOff();

// ignore: unused_element
  _Coupon call(
      {int durationInMonths,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Coupon(
      durationInMonths: durationInMonths,
      typename: typename,
    );
  }

// ignore: unused_element
  Coupon fromJson(Map<String, Object> json) {
    return Coupon.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Coupon = _$CouponTearOff();

/// @nodoc
mixin _$Coupon {
  int get durationInMonths; // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res>;
  $Res call(
      {int durationInMonths, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res> implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  final Coupon _value;
  // ignore: unused_field
  final $Res Function(Coupon) _then;

  @override
  $Res call({
    Object durationInMonths = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      durationInMonths: durationInMonths == freezed
          ? _value.durationInMonths
          : durationInMonths as int,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) then) =
      __$CouponCopyWithImpl<$Res>;
  @override
  $Res call(
      {int durationInMonths, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$CouponCopyWithImpl<$Res> extends _$CouponCopyWithImpl<$Res>
    implements _$CouponCopyWith<$Res> {
  __$CouponCopyWithImpl(_Coupon _value, $Res Function(_Coupon) _then)
      : super(_value, (v) => _then(v as _Coupon));

  @override
  _Coupon get _value => super._value as _Coupon;

  @override
  $Res call({
    Object durationInMonths = freezed,
    Object typename = freezed,
  }) {
    return _then(_Coupon(
      durationInMonths: durationInMonths == freezed
          ? _value.durationInMonths
          : durationInMonths as int,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Coupon implements _Coupon {
  const _$_Coupon(
      {this.durationInMonths,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(typename != null),
        assert(typename == "Coupon");

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$_$_CouponFromJson(json);

  @override
  final int durationInMonths;
  @override // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Coupon(durationInMonths: $durationInMonths, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coupon &&
            (identical(other.durationInMonths, durationInMonths) ||
                const DeepCollectionEquality()
                    .equals(other.durationInMonths, durationInMonths)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(durationInMonths) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$CouponCopyWith<_Coupon> get copyWith =>
      __$CouponCopyWithImpl<_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CouponToJson(this);
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
      {int durationInMonths,
      @required @JsonKey(name: '__typename') String typename}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  int get durationInMonths;
  @override // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$CouponCopyWith<_Coupon> get copyWith;
}
