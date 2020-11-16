import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';

part 'payment_methods_list.freezed.dart';

part 'payment_methods_list.g.dart';

@freezed
abstract class PaymentMethodsData with _$PaymentMethodsData {
  const factory PaymentMethodsData({
    @required Viewer viewer,
  }) = _PaymentMethodsData;

  factory PaymentMethodsData.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsDataFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer {
  @Implements(BaseViewer)
  const factory Viewer({
    @required List<PaymentMethod> paymentMethods,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Viewer"')
        String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  @Implements(BasePaymentMethod)
  const factory PaymentMethod({
    @required String id,
    @required String brand,
    @required String last4,
    @required String expirationDate,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "PaymentMethod"')
        String typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
