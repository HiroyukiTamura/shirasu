// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'invoice_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

/// @nodoc
class _$InvoiceDataTearOff {
  const _$InvoiceDataTearOff();

// ignore: unused_element
  _InvoiceData call({@required Invoice invoice}) {
    return _InvoiceData(
      invoice: invoice,
    );
  }

// ignore: unused_element
  InvoiceData fromJson(Map<String, Object> json) {
    return InvoiceData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InvoiceData = _$InvoiceDataTearOff();

/// @nodoc
mixin _$InvoiceData {
  Invoice get invoice;

  Map<String, dynamic> toJson();
  $InvoiceDataCopyWith<InvoiceData> get copyWith;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res>;
  $Res call({Invoice invoice});

  $InvoiceCopyWith<$Res> get invoice;
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res> implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  final InvoiceData _value;
  // ignore: unused_field
  final $Res Function(InvoiceData) _then;

  @override
  $Res call({
    Object invoice = freezed,
  }) {
    return _then(_value.copyWith(
      invoice: invoice == freezed ? _value.invoice : invoice as Invoice,
    ));
  }

  @override
  $InvoiceCopyWith<$Res> get invoice {
    if (_value.invoice == null) {
      return null;
    }
    return $InvoiceCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc
abstract class _$InvoiceDataCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$InvoiceDataCopyWith(
          _InvoiceData value, $Res Function(_InvoiceData) then) =
      __$InvoiceDataCopyWithImpl<$Res>;
  @override
  $Res call({Invoice invoice});

  @override
  $InvoiceCopyWith<$Res> get invoice;
}

/// @nodoc
class __$InvoiceDataCopyWithImpl<$Res> extends _$InvoiceDataCopyWithImpl<$Res>
    implements _$InvoiceDataCopyWith<$Res> {
  __$InvoiceDataCopyWithImpl(
      _InvoiceData _value, $Res Function(_InvoiceData) _then)
      : super(_value, (v) => _then(v as _InvoiceData));

  @override
  _InvoiceData get _value => super._value as _InvoiceData;

  @override
  $Res call({
    Object invoice = freezed,
  }) {
    return _then(_InvoiceData(
      invoice: invoice == freezed ? _value.invoice : invoice as Invoice,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InvoiceData implements _InvoiceData {
  const _$_InvoiceData({@required this.invoice}) : assert(invoice != null);

  factory _$_InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$_$_InvoiceDataFromJson(json);

  @override
  final Invoice invoice;

  @override
  String toString() {
    return 'InvoiceData(invoice: $invoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvoiceData &&
            (identical(other.invoice, invoice) ||
                const DeepCollectionEquality().equals(other.invoice, invoice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invoice);

  @override
  _$InvoiceDataCopyWith<_InvoiceData> get copyWith =>
      __$InvoiceDataCopyWithImpl<_InvoiceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvoiceDataToJson(this);
  }
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData({@required Invoice invoice}) = _$_InvoiceData;

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$_InvoiceData.fromJson;

  @override
  Invoice get invoice;
  @override
  _$InvoiceDataCopyWith<_InvoiceData> get copyWith;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
class _$InvoiceTearOff {
  const _$InvoiceTearOff();

// ignore: unused_element
  _Invoice call(
      {@required String id,
      @required DateTime createdAt,
      @required String currency,
      @required int discountAmount,
      @required String label,
      @required String planType,
      @required String status,
      @required int tax,
      @required int total,
      @required int subtotal,
      dynamic discount,
      dynamic paymentIntent,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Invoice(
      id: id,
      createdAt: createdAt,
      currency: currency,
      discountAmount: discountAmount,
      label: label,
      planType: planType,
      status: status,
      tax: tax,
      total: total,
      subtotal: subtotal,
      discount: discount,
      paymentIntent: paymentIntent,
      typename: typename,
    );
  }

// ignore: unused_element
  Invoice fromJson(Map<String, Object> json) {
    return Invoice.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Invoice = _$InvoiceTearOff();

/// @nodoc
mixin _$Invoice {
  String get id;
  DateTime get createdAt;
  String get currency;
  int get discountAmount;
  String get label;
  String get planType;
  String get status;
  int get tax;
  int get total;
  int get subtotal;
  dynamic get discount;
  dynamic get paymentIntent;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $InvoiceCopyWith<Invoice> get copyWith;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime createdAt,
      String currency,
      int discountAmount,
      String label,
      String planType,
      String status,
      int tax,
      int total,
      int subtotal,
      dynamic discount,
      dynamic paymentIntent,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object currency = freezed,
    Object discountAmount = freezed,
    Object label = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object tax = freezed,
    Object total = freezed,
    Object subtotal = freezed,
    Object discount = freezed,
    Object paymentIntent = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount as int,
      label: label == freezed ? _value.label : label as String,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      tax: tax == freezed ? _value.tax : tax as int,
      total: total == freezed ? _value.total : total as int,
      subtotal: subtotal == freezed ? _value.subtotal : subtotal as int,
      discount: discount == freezed ? _value.discount : discount as dynamic,
      paymentIntent: paymentIntent == freezed
          ? _value.paymentIntent
          : paymentIntent as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) then) =
      __$InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime createdAt,
      String currency,
      int discountAmount,
      String label,
      String planType,
      String status,
      int tax,
      int total,
      int subtotal,
      dynamic discount,
      dynamic paymentIntent,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(_Invoice _value, $Res Function(_Invoice) _then)
      : super(_value, (v) => _then(v as _Invoice));

  @override
  _Invoice get _value => super._value as _Invoice;

  @override
  $Res call({
    Object id = freezed,
    Object createdAt = freezed,
    Object currency = freezed,
    Object discountAmount = freezed,
    Object label = freezed,
    Object planType = freezed,
    Object status = freezed,
    Object tax = freezed,
    Object total = freezed,
    Object subtotal = freezed,
    Object discount = freezed,
    Object paymentIntent = freezed,
    Object typename = freezed,
  }) {
    return _then(_Invoice(
      id: id == freezed ? _value.id : id as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      discountAmount: discountAmount == freezed
          ? _value.discountAmount
          : discountAmount as int,
      label: label == freezed ? _value.label : label as String,
      planType: planType == freezed ? _value.planType : planType as String,
      status: status == freezed ? _value.status : status as String,
      tax: tax == freezed ? _value.tax : tax as int,
      total: total == freezed ? _value.total : total as int,
      subtotal: subtotal == freezed ? _value.subtotal : subtotal as int,
      discount: discount == freezed ? _value.discount : discount as dynamic,
      paymentIntent: paymentIntent == freezed
          ? _value.paymentIntent
          : paymentIntent as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Invoice implements _Invoice {
  const _$_Invoice(
      {@required this.id,
      @required this.createdAt,
      @required this.currency,
      @required this.discountAmount,
      @required this.label,
      @required this.planType,
      @required this.status,
      @required this.tax,
      @required this.total,
      @required this.subtotal,
      this.discount,
      this.paymentIntent,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(createdAt != null),
        assert(currency != null),
        assert(discountAmount != null),
        assert(label != null),
        assert(planType != null),
        assert(status != null),
        assert(tax != null),
        assert(total != null),
        assert(subtotal != null),
        assert(typename != null);

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$_$_InvoiceFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String currency;
  @override
  final int discountAmount;
  @override
  final String label;
  @override
  final String planType;
  @override
  final String status;
  @override
  final int tax;
  @override
  final int total;
  @override
  final int subtotal;
  @override
  final dynamic discount;
  @override
  final dynamic paymentIntent;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Invoice(id: $id, createdAt: $createdAt, currency: $currency, discountAmount: $discountAmount, label: $label, planType: $planType, status: $status, tax: $tax, total: $total, subtotal: $subtotal, discount: $discount, paymentIntent: $paymentIntent, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Invoice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.discountAmount, discountAmount) ||
                const DeepCollectionEquality()
                    .equals(other.discountAmount, discountAmount)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.planType, planType) ||
                const DeepCollectionEquality()
                    .equals(other.planType, planType)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.tax, tax) ||
                const DeepCollectionEquality().equals(other.tax, tax)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.paymentIntent, paymentIntent) ||
                const DeepCollectionEquality()
                    .equals(other.paymentIntent, paymentIntent)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(discountAmount) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(planType) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(tax) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(paymentIntent) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvoiceToJson(this);
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {@required String id,
      @required DateTime createdAt,
      @required String currency,
      @required int discountAmount,
      @required String label,
      @required String planType,
      @required String status,
      @required int tax,
      @required int total,
      @required int subtotal,
      dynamic discount,
      dynamic paymentIntent,
      @required @JsonKey(name: '__typename') String typename}) = _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get currency;
  @override
  int get discountAmount;
  @override
  String get label;
  @override
  String get planType;
  @override
  String get status;
  @override
  int get tax;
  @override
  int get total;
  @override
  int get subtotal;
  @override
  dynamic get discount;
  @override
  dynamic get paymentIntent;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$InvoiceCopyWith<_Invoice> get copyWith;
}
