import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/extension.dart';

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
abstract class Viewer with _$Viewer implements BaseViewer {

  @Assert('typename == "Viewer"')
  const factory Viewer({
    @JsonKey(name: 'paymentMethods') @protected @required List<PaymentMethod> rawPaymentMethods,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);

  const Viewer._();

  UnmodifiableListView<PaymentMethod> get paymentMethods => rawPaymentMethods.toUnmodifiable();
}

@freezed
abstract class PaymentMethod with _$PaymentMethod implements BasePaymentMethod {

  @Assert('typename == "PaymentMethod"')
  const factory PaymentMethod({
    @required String id,
    @required String brand,
    @required String last4,
    @required String expirationDate,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
