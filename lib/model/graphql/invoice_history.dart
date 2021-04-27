import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/currency_mixin.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/extension.dart';

part 'invoice_history.freezed.dart';

part 'invoice_history.g.dart';

@freezed
abstract class InvoiceHistory
    with _$InvoiceHistory
    implements BaseInvoiceConnection {
  @Assert('typename == "InvoiceConnection"')
  const factory InvoiceHistory({
    @required
    @JsonKey(name: 'items')
    @protected
    List<InvoiceHistoryItem> rawItems,
    @required @JsonKey(name: '__typename') String typename,
  }) = _InvoiceHistory;

  factory InvoiceHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryFromJson(json);

  const InvoiceHistory._();

  UnmodifiableListView<InvoiceHistoryItem> get items =>
      rawItems.toUnmodifiable();
}

@freezed
abstract class InvoiceHistoryItem
    with PlanTypeMixin, CurrencyMixin, _$InvoiceHistoryItem
    implements _$InvoiceHistoryItem, BaseInvoice {
  @Assert('typename == "Invoice"')
  const factory InvoiceHistoryItem({
    @required String id,
    @required int total,
    @required int subtotal,
    @required int tax,
    @required int discountAmount,
    @required String currency,
    @required String label,
    @required DateTime createdAt,

    /// use [planTypeStrict]
    @required @protected String planType,
    @required String status,
    // @required @JsonKey(name: 'products') @protected List<Product> rawProducts,
    @required @JsonKey(name: '__typename') String typename,
    String hostedInvoiceUrl,
  }) = _InvoiceHistoryItem;

  factory InvoiceHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryItemFromJson(json);

  const InvoiceHistoryItem._();

// todo implement `Product` after update freezed to 1.4.0 or above
// UnmodifiableListView<Product> get products => rawProducts.toUnmodifiable();
}

@freezed
abstract class Discount with _$Discount implements BaseDiscount {
  @Assert('typename == "Discount"')
  const factory Discount({
    @required Coupon coupon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}

@freezed
abstract class Coupon with _$Coupon implements BaseCoupon {
  @Assert('typename == "Coupon"')
  const factory Coupon({
    int durationInMonths,
    // ignore: always_put_required_named_parameters_first
    @required @JsonKey(name: '__typename') String typename,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

// //region Product
// mixin BaseProduct {
//   String get id;
// }
//
// @Freezed(unionKey: 'typename', unionValueCase: FreezedUnionCase.pascal)
// abstract class Product with _$Product {
//   @FreezedUnionValue('Channel')
//   @With(BaseProduct)
//   @Implements(BaseChannel)
//   const factory Product.channel({
//     @required String id,
//     @required String name,
//     @required @JsonKey(name: '__typename') String typename,
//   }) = _ProductChannel;
//
//   @FreezedUnionValue('Program')
//   @With(BaseProduct)
//   @Implements(BaseProgram)
//   const factory Product.program({
//     @required String id,
//     @required String title,
//     @required String tenantId,
//     @required String channelId,
//     @required @JsonKey(name: '__typename') String typename,
//   }) = _ProductProgram;
//
//   @FreezedUnionValue('LiveExtension')
//   @With(BaseProduct)
//   @Implements(BaseLiveExtension)
//   const factory Product.liveExtension({
//     @required String id,
//     @required String programId,
//     @required @JsonKey(name: '__typename') String typename,
//   }) = _ProductLiveExtension;
//
//   factory Product.fromJson(Map<String, dynamic> json) =>
//       _$ProductFromJson(json);
// }
// //endregion