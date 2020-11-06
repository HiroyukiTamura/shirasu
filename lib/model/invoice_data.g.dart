// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceData _$_$_InvoiceDataFromJson(Map<String, dynamic> json) {
  return _$_InvoiceData(
    invoice: json['invoice'] == null
        ? null
        : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InvoiceDataToJson(_$_InvoiceData instance) =>
    <String, dynamic>{
      'invoice': instance.invoice,
    };

_$_Invoice _$_$_InvoiceFromJson(Map<String, dynamic> json) {
  return _$_Invoice(
    id: json['id'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    currency: json['currency'] as String,
    discountAmount: json['discountAmount'] as int,
    label: json['label'] as String,
    planType: json['planType'] as String,
    status: json['status'] as String,
    tax: json['tax'] as int,
    total: json['total'] as int,
    subtotal: json['subtotal'] as int,
    discount: json['discount'],
    paymentIntent: json['paymentIntent'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceToJson(_$_Invoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'currency': instance.currency,
      'discountAmount': instance.discountAmount,
      'label': instance.label,
      'planType': instance.planType,
      'status': instance.status,
      'tax': instance.tax,
      'total': instance.total,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'paymentIntent': instance.paymentIntent,
      '__typename': instance.typename,
    };
