import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/currency_mixin.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/extension.dart';

part 'viewer.freezed.dart';

part 'viewer.g.dart';

@freezed
abstract class ViewerWrapper with _$ViewerWrapper {
  const factory ViewerWrapper({
    @required ViewerData viewer,
    @required ViewerUser viewerUser,
  }) = _ViewerWrapper;

  factory ViewerWrapper.fromJson(Map<String, dynamic> json) => _$ViewerWrapperFromJson(json);
}

@freezed
abstract class ViewerData with _$ViewerData implements BaseViewer {
  @Assert('typename == "Viewer"')
  const factory ViewerData({
    @required
    @JsonKey(name: 'paymentMethods')
    @protected
        List<PaymentMethod> rawPaymentMethods,
    @required
    @JsonKey(name: 'authConnections')
    @protected
        List<String> rawAuthConnections,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ViewerData;

  factory ViewerData.fromJson(Map<String, dynamic> json) =>
      _$ViewerDataFromJson(json);

  const ViewerData._();

  UnmodifiableListView<PaymentMethod> get paymentMethods =>
      rawPaymentMethods.toUnmodifiable();

  UnmodifiableListView<String> get authConnections =>
      rawAuthConnections.toUnmodifiable();
}

@freezed
abstract class PaymentMethod with _$PaymentMethod implements BasePaymentMethod {
  @Assert('typename == "PaymentMethod"')
  const factory PaymentMethod({
    @required String id,
    @required String brand,
    @required String last4,
    @required String expirationDate,
    @required @JsonKey(name: '__typename') String typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser implements BaseViewer {
  @Assert('typename == "User"')
  const factory ViewerUser({
    @required String id,
    @required String name,
    @required String icon,
    @required InvoiceHistory invoiceHistory,
    @required WatchHistories watchHistories,
    @required
    @JsonKey(name: 'subscribedChannels')
    @protected
        List<SubscribedChannel> rawSubscribedChannels,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserFromJson(json);

  const ViewerUser._();

  List<SubscribedChannel> get subscribedChannels => rawSubscribedChannels;
}

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
    String nextToken,
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
    @required String currency,
    @required String label,
    @required DateTime createdAt,
    @required String planType,
    @required String status,
    @required @JsonKey(name: '__typename') String typename,
  }) = _InvoiceHistoryItem;

  factory InvoiceHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryItemFromJson(json);

  const InvoiceHistoryItem._();
}

@freezed
abstract class SubscribedChannel
    with _$SubscribedChannel
    implements BaseSubscribedChannel {
  @Assert('typename == "SubscribedChannel"')
  const factory SubscribedChannel({
    @required DateTime subscribedAt,
    @required DateTime currentPeriodEndAt,
    @required Channel channel,
    @required bool isActive,
    @required String latestInvoiceId,
    @required LatestInvoice latestInvoice,
    @required @JsonKey(name: '__typename') String typename,
  }) = _SubscribedChannel;

  factory SubscribedChannel.fromJson(Map<String, dynamic> json) =>
      _$SubscribedChannelFromJson(json);
}

@freezed
abstract class Channel with _$Channel implements BaseChannel {
  @Assert('typename == "Channel"')
  const factory Channel({
    @required String id,
    @required String name,
    dynamic icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class LatestInvoice
    with PlanTypeMixin
    implements _$LatestInvoice, BaseInvoice {
  @Assert('typename == "Invoice"')
  const factory LatestInvoice({
    @required String id,
    String description,
    @required DateTime createdAt,
    @required String planType,
    @required String status,
    @required String hostedInvoiceUrl,
    dynamic nextPaymentAttempt,
    @required @JsonKey(name: '__typename') String typename,
  }) = _LatestInvoice;

  factory LatestInvoice.fromJson(Map<String, dynamic> json) =>
      _$LatestInvoiceFromJson(json);

  const LatestInvoice._();
}

@freezed
abstract class WatchHistories
    with _$WatchHistories
    implements BaseModelWatchHistoryConnection {
  @Assert('typename == "ModelWatchHistoryConnection"')
  const factory WatchHistories({
    String nextToken,
    @required
    @JsonKey(name: 'items')
    @protected
        List<WatchHistoriesItem> rawItems,
    @required @JsonKey(name: '__typename') String typename,
  }) = _WatchHistories;

  factory WatchHistories.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoriesFromJson(json);

  const WatchHistories._();

  List<WatchHistoriesItem> get items => rawItems;
}

@freezed
abstract class WatchHistoriesItem
    with _$WatchHistoriesItem
    implements BaseWatchHistory {
  @Assert('typename == "WatchHistory"')
  const factory WatchHistoriesItem({
    @required String id,
    @required DateTime lastViewedAt,
    @required Program program,
    @required @JsonKey(name: '__typename') String typename,
  }) = _WatchHistoriesItem;

  factory WatchHistoriesItem.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoriesItemFromJson(json);
}

@freezed
abstract class Program with _$Program implements BaseProgram {
  @Assert('typename == "Program"')
  const factory Program({
    @required String id,
    @required String tenantId,
    @required String channelId,
    @required String title,
    @required String detail,
    @required DateTime broadcastAt,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);
}
