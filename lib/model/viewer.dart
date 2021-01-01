import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/mixins/currency_mixin.dart';
import 'package:shirasu/model/mixins/plan_type.dart';

part 'viewer.freezed.dart';

part 'viewer.g.dart';

@freezed
abstract class Viewer with _$Viewer {
  const factory Viewer({
    @required ViewerClass viewer,
    @required ViewerUser viewerUser,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}

@freezed
abstract class ViewerClass with _$ViewerClass implements BaseViewer {
  const factory ViewerClass({
    @required List<PaymentMethod> paymentMethods,
    @required List<String> authConnections,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Viewer"')
        String typename,
  }) = _ViewerClass;

  factory ViewerClass.fromJson(Map<String, dynamic> json) =>
      _$ViewerClassFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod implements BasePaymentMethod {
  const factory PaymentMethod({
    @required String id,
    @required String brand,
    @required String last4,
    @required String expirationDate,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "PaymentMethod"')
        String typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser implements BaseViewer {
  const factory ViewerUser({
    @required String id,
    @required String name,
    @required String icon,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Viewer"')
        String typename,
    @required InvoiceHistory invoiceHistory,
    @required WatchHistories watchHistories,
    @required List<SubscribedChannel> subscribedChannels,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserFromJson(json);
}

@freezed
abstract class InvoiceHistory
    with _$InvoiceHistory
    implements BaseInvoiceConnection {
  const factory InvoiceHistory({
    @required List<InvoiceHistoryItem> items,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "InvoiceConnection"')
        String typename,
  }) = _InvoiceHistory;

  factory InvoiceHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryFromJson(json);
}

@freezed
abstract class InvoiceHistoryItem
    with PlanTypeMixin, CurrencyMixin, _$InvoiceHistoryItem
    implements BaseInvoice {
  const factory InvoiceHistoryItem({
    @required String id,
    @required int total,
    @required String currency,
    @required String label,
    @required DateTime createdAt,
    @required String planType,
    @required String status,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Invoice"')
        String typename,
  }) = _InvoiceHistoryItem;

  factory InvoiceHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryItemFromJson(json);
}

@freezed
abstract class SubscribedChannel
    with _$SubscribedChannel
    implements BaseSubscribedChannel {
  const factory SubscribedChannel({
    @required DateTime subscribedAt,
    @required DateTime currentPeriodEndAt,
    @required Channel channel,
    @required bool isActive,
    @required String latestInvoiceId,
    @required LatestInvoice latestInvoice,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "SubscribedChannel"')
        String typename,
  }) = _SubscribedChannel;

  factory SubscribedChannel.fromJson(Map<String, dynamic> json) =>
      _$SubscribedChannelFromJson(json);
}

@freezed
abstract class Channel with _$Channel implements BaseChannel {
  const factory Channel({
    @required String id,
    @required String name,
    dynamic icon,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Channel"')
        String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class LatestInvoice
    with _$LatestInvoice, PlanTypeMixin
    implements BaseInvoice {
  const factory LatestInvoice({
    @required String id,
    String description,
    @required DateTime createdAt,
    @required String planType,
    @required String status,
    @required String hostedInvoiceUrl,
    dynamic nextPaymentAttempt,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Invoice"')
        String typename,
  }) = _LatestInvoice;

  factory LatestInvoice.fromJson(Map<String, dynamic> json) =>
      _$LatestInvoiceFromJson(json);
}

@freezed
abstract class WatchHistories
    with _$WatchHistories
    implements BaseModelWatchHistoryConnection {
  const factory WatchHistories({
    String nextToken,
    @required List<WatchHistoriesItem> items,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "ModelWatchHistoryConnection"')
        String typename,
  }) = _WatchHistories;

  factory WatchHistories.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoriesFromJson(json);
}

@freezed
abstract class WatchHistoriesItem
    with _$WatchHistoriesItem
    implements BaseWatchHistory {
  const factory WatchHistoriesItem({
    @required String id,
    @required DateTime lastViewedAt,
    @required Program program,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "WatchHistory"')
        String typename,
  }) = _WatchHistoriesItem;

  factory WatchHistoriesItem.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoriesItemFromJson(json);
}

@freezed
abstract class Program with _$Program implements BaseProgram {
  const factory Program({
    @required String id,
    @required String tenantId,
    @required String channelId,
    @required String title,
    @required String detail,
    @required DateTime broadcastAt,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Program"')
        String typename,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) =>
      _$ProgramFromJson(json);
}
