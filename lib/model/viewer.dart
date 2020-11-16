import 'package:freezed_annotation/freezed_annotation.dart';

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
abstract class ViewerClass with _$ViewerClass {
  const factory ViewerClass({
    @required List<PaymentMethod> paymentMethods,
    @required List<String> authConnections,
    @required @JsonKey(name: '__typename') @Assert('typename == "Viewer"') typename,
  }) = _ViewerClass;

  factory ViewerClass.fromJson(Map<String, dynamic> json) => _$ViewerClassFromJson(json);
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    @required String id,

    /// ex.visa
    @required String brand,

    /// ex.1234
    @required String last4,

    /// ex. 02/25
    @required String expirationDate,
    @required @JsonKey(name: '__typename') @Assert('typename == "PaymentMethod"') typename,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);
}


@freezed
abstract class ViewerUser with _$ViewerUser {
  const factory ViewerUser({
    @required String id,
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') @Assert('typename == "Viewer"') typename,
    @required InvoiceHistory invoiceHistory,
    @required WatchHistories watchHistories,
    @required List<SubscribedChannel> subscribedChannels,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) => _$ViewerUserFromJson(json);
}

@freezed
abstract class InvoiceHistory with _$InvoiceHistory {
  const factory InvoiceHistory({
    @required List<InvoiceHistoryItem> items,
    String nextToken,
    @required @JsonKey(name: '__typename') @Assert('typename == "InvoiceConnection"') typename,
  }) = _InvoiceHistory;

  factory InvoiceHistory.fromJson(Map<String, dynamic> json) => _$InvoiceHistoryFromJson(json);
}

@freezed
abstract class InvoiceHistoryItem with _$InvoiceHistoryItem {
  const factory InvoiceHistoryItem({
    @required String id,
    @required int total,
    @required String currency,
    @required String label,
    @required DateTime createdAt,
    /// ex. SubscriptionPlan
    @required String planType,
    /// ex. paid
    @required String status,
    @required @JsonKey(name: '__typename') @Assert('typename == "Invoice"') typename,
  }) = _InvoiceHistoryItem;

  factory InvoiceHistoryItem.fromJson(Map<String, dynamic> json) => _$InvoiceHistoryItemFromJson(json);
}

@freezed
abstract class SubscribedChannel with _$SubscribedChannel {
  const factory SubscribedChannel({
    @required DateTime subscribedAt,
    @required DateTime currentPeriodEndAt,
    @required Channel channel,
    @required bool isActive,
    @required String latestInvoiceId,
    @required LatestInvoice latestInvoice,
    @required @JsonKey(name: '__typename') @Assert('typename == "SubscribedChannel"') typename,
  }) = _SubscribedChannel;

  factory SubscribedChannel.fromJson(Map<String, dynamic> json) => _$SubscribedChannelFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  const factory Channel({
    @required String id,
    @required String name,
    dynamic icon,
    @required @JsonKey(name: '__typename') @Assert('typename == "Channel"') typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}

@freezed
abstract class LatestInvoice with _$LatestInvoice {
  const factory LatestInvoice ({
    @required String id,
    String description,
    @required DateTime createdAt,
    @required String planType,
    @required String status,
    @required String hostedInvoiceUrl,
    dynamic nextPaymentAttempt,
    @required @JsonKey(name: '__typename') @Assert('typename == "Invoice"') typename,
  }) = _LatestInvoice;

  factory LatestInvoice.fromJson(Map<String, dynamic> json) => _$LatestInvoiceFromJson(json);
}

@freezed
abstract class WatchHistories with _$WatchHistories {
  const factory WatchHistories({
    @required List<WatchHistoriesItem> items,
    @required @JsonKey(name: '__typename') @Assert('typename == "ModelWatchHistoryConnection"') typename,
  }) = _WatchHistories;

  factory WatchHistories.fromJson(Map<String, dynamic> json) => _$WatchHistoriesFromJson(json);
}

@freezed
abstract class WatchHistoriesItem with _$WatchHistoriesItem {
  const factory WatchHistoriesItem({
    @required String id,
    @required DateTime lastViewedAt,
    @required Program program,
    @required @JsonKey(name: '__typename') @Assert('typename == "WatchHistory"') typename,
  }) = _WatchHistoriesItem;

  factory WatchHistoriesItem.fromJson(Map<String, dynamic> json) => _$WatchHistoriesItemFromJson(json);
}

@freezed
abstract class Program with _$Program {
  const factory Program({
    @required String id,
    @required String tenantId,
    @required String channelId,
    @required String title,
    @required String detail,
    @required DateTime broadcastAt,
    @required @JsonKey(name: '__typename') @Assert('typename == "Program"') typename,
  }) = _Program;

  factory Program.fromJson(Map<String, dynamic> json) => _$ProgramFromJson(json);
}
