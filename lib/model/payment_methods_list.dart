import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_methods_list.freezed.dart';
part 'payment_methods_list.g.dart';

@freezed
abstract class PaymentMethodsData with _$PaymentMethodsData {
  factory PaymentMethodsData({
    @required Viewer viewer,
  }) = _PaymentMethodsData;

  factory PaymentMethodsData.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsDataFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer {
  factory Viewer({
    @required List<PaymentMethod> paymentMethods,
    @required @JsonKey(name: '__typename') String typename,
  }) =_Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  factory PaymentMethod({
    @required String id,
    @required String brand,
    @required String last4,
    @required String expirationDate,
    @JsonKey(name: '__typename') @required String typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);
}
