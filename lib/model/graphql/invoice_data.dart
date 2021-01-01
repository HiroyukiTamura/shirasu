import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/mixins/plan_type.dart';

part 'invoice_data.freezed.dart';

part 'invoice_data.g.dart';

@freezed
abstract class InvoiceData with _$InvoiceData {
  const factory InvoiceData({
    @required Invoice invoice,
  }) = _InvoiceData;

  factory InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataFromJson(json);
}

@freezed
abstract class Invoice with _$Invoice, PlanTypeMixin implements BaseInvoice {
  const factory Invoice({
    @required String id,
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
    @required
    @Assert('typename == Invoice')
    @JsonKey(name: '__typename')
        String typename,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
