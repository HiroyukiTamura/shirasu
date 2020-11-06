// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodsData _$_$_PaymentMethodsDataFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentMethodsData(
    viewer: json['viewer'] == null
        ? null
        : Viewer.fromJson(json['viewer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PaymentMethodsDataToJson(
        _$_PaymentMethodsData instance) =>
    <String, dynamic>{
      'viewer': instance.viewer,
    };

_$_Viewer _$_$_ViewerFromJson(Map<String, dynamic> json) {
  return _$_Viewer(
    paymentMethods: (json['paymentMethods'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentMethod.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerToJson(_$_Viewer instance) => <String, dynamic>{
      'paymentMethods': instance.paymentMethods,
      '__typename': instance.typename,
    };

_$_PaymentMethod _$_$_PaymentMethodFromJson(Map<String, dynamic> json) {
  return _$_PaymentMethod(
    id: json['id'] as String,
    brand: json['brand'] as String,
    last4: json['last4'] as String,
    expirationDate: json['expirationDate'] as String,
    typename: json['typename'] as String,
  );
}

Map<String, dynamic> _$_$_PaymentMethodToJson(_$_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'last4': instance.last4,
      'expirationDate': instance.expirationDate,
      'typename': instance.typename,
    };
