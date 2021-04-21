// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceHistory _$_$_InvoiceHistoryFromJson(Map<String, dynamic> json) {
  return _$_InvoiceHistory(
    rawItems: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : InvoiceHistoryItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceHistoryToJson(_$_InvoiceHistory instance) =>
    <String, dynamic>{
      'items': instance.rawItems,
      '__typename': instance.typename,
    };

_$_InvoiceHistoryItem _$_$_InvoiceHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _$_InvoiceHistoryItem(
    id: json['id'] as String,
    total: json['total'] as int,
    subTotal: json['subTotal'] as int,
    tax: json['tax'] as int,
    discountAmount: json['discountAmount'] as int,
    hostedInvoiceUrl: json['hostedInvoiceUrl'] as String,
    currency: json['currency'] as String,
    label: json['label'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    planType: json['planType'] as String,
    status: json['status'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceHistoryItemToJson(
        _$_InvoiceHistoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'subTotal': instance.subTotal,
      'tax': instance.tax,
      'discountAmount': instance.discountAmount,
      'hostedInvoiceUrl': instance.hostedInvoiceUrl,
      'currency': instance.currency,
      'label': instance.label,
      'createdAt': instance.createdAt?.toIso8601String(),
      'planType': instance.planType,
      'status': instance.status,
      '__typename': instance.typename,
    };

_$_Discount _$_$_DiscountFromJson(Map<String, dynamic> json) {
  return _$_Discount(
    coupon: json['coupon'] == null
        ? null
        : Coupon.fromJson(json['coupon'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_DiscountToJson(_$_Discount instance) =>
    <String, dynamic>{
      'coupon': instance.coupon,
      '__typename': instance.typename,
    };

_$_Coupon _$_$_CouponFromJson(Map<String, dynamic> json) {
  return _$_Coupon(
    durationInMonths: json['durationInMonths'] as int,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'durationInMonths': instance.durationInMonths,
      '__typename': instance.typename,
    };
