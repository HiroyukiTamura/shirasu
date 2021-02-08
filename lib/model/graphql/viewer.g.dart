// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewerWrapper _$_$_ViewerWrapperFromJson(Map<String, dynamic> json) {
  return _$_ViewerWrapper(
    viewer: json['viewer'] == null
        ? null
        : ViewerData.fromJson(json['viewer'] as Map<String, dynamic>),
    viewerUser: json['viewerUser'] == null
        ? null
        : ViewerUser.fromJson(json['viewerUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ViewerWrapperToJson(_$_ViewerWrapper instance) =>
    <String, dynamic>{
      'viewer': instance.viewer,
      'viewerUser': instance.viewerUser,
    };

_$_ViewerData _$_$_ViewerDataFromJson(Map<String, dynamic> json) {
  return _$_ViewerData(
    rawPaymentMethods: (json['paymentMethods'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentMethod.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rawAuthConnections:
        (json['authConnections'] as List)?.map((e) => e as String)?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerDataToJson(_$_ViewerData instance) =>
    <String, dynamic>{
      'paymentMethods': instance.rawPaymentMethods,
      'authConnections': instance.rawAuthConnections,
      '__typename': instance.typename,
    };

_$_PaymentMethod _$_$_PaymentMethodFromJson(Map<String, dynamic> json) {
  return _$_PaymentMethod(
    id: json['id'] as String,
    brand: json['brand'] as String,
    last4: json['last4'] as String,
    expirationDate: json['expirationDate'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_PaymentMethodToJson(_$_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'last4': instance.last4,
      'expirationDate': instance.expirationDate,
      '__typename': instance.typename,
    };

_$_ViewerUser _$_$_ViewerUserFromJson(Map<String, dynamic> json) {
  return _$_ViewerUser(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'] as String,
    invoiceHistory: json['invoiceHistory'] == null
        ? null
        : InvoiceHistory.fromJson(
            json['invoiceHistory'] as Map<String, dynamic>),
    watchHistories: json['watchHistories'] == null
        ? null
        : WatchHistories.fromJson(
            json['watchHistories'] as Map<String, dynamic>),
    rawSubscribedChannels: (json['subscribedChannels'] as List)
        ?.map((e) => e == null
            ? null
            : SubscribedChannel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerUserToJson(_$_ViewerUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'invoiceHistory': instance.invoiceHistory,
      'watchHistories': instance.watchHistories,
      'subscribedChannels': instance.rawSubscribedChannels,
      '__typename': instance.typename,
    };

_$_InvoiceHistory _$_$_InvoiceHistoryFromJson(Map<String, dynamic> json) {
  return _$_InvoiceHistory(
    rawItems: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : InvoiceHistoryItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceHistoryToJson(_$_InvoiceHistory instance) =>
    <String, dynamic>{
      'items': instance.rawItems,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_InvoiceHistoryItem _$_$_InvoiceHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _$_InvoiceHistoryItem(
    id: json['id'] as String,
    total: json['total'] as int,
    currency: json['currency'] as String,
    label: json['label'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    planType: json['planType'] as String,
    status: json['status'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceHistoryItemToJson(
        _$_InvoiceHistoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'currency': instance.currency,
      'label': instance.label,
      'createdAt': instance.createdAt?.toIso8601String(),
      'planType': instance.planType,
      'status': instance.status,
      '__typename': instance.typename,
    };

_$_SubscribedChannel _$_$_SubscribedChannelFromJson(Map<String, dynamic> json) {
  return _$_SubscribedChannel(
    subscribedAt: json['subscribedAt'] == null
        ? null
        : DateTime.parse(json['subscribedAt'] as String),
    currentPeriodEndAt: json['currentPeriodEndAt'] == null
        ? null
        : DateTime.parse(json['currentPeriodEndAt'] as String),
    channel: json['channel'] == null
        ? null
        : Channel.fromJson(json['channel'] as Map<String, dynamic>),
    isActive: json['isActive'] as bool,
    latestInvoiceId: json['latestInvoiceId'] as String,
    latestInvoice: json['latestInvoice'] == null
        ? null
        : LatestInvoice.fromJson(json['latestInvoice'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_SubscribedChannelToJson(
        _$_SubscribedChannel instance) =>
    <String, dynamic>{
      'subscribedAt': instance.subscribedAt?.toIso8601String(),
      'currentPeriodEndAt': instance.currentPeriodEndAt?.toIso8601String(),
      'channel': instance.channel,
      'isActive': instance.isActive,
      'latestInvoiceId': instance.latestInvoiceId,
      'latestInvoice': instance.latestInvoice,
      '__typename': instance.typename,
    };

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      '__typename': instance.typename,
    };

_$_LatestInvoice _$_$_LatestInvoiceFromJson(Map<String, dynamic> json) {
  return _$_LatestInvoice(
    id: json['id'] as String,
    description: json['description'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    planType: json['planType'] as String,
    status: json['status'] as String,
    hostedInvoiceUrl: json['hostedInvoiceUrl'] as String,
    nextPaymentAttempt: json['nextPaymentAttempt'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_LatestInvoiceToJson(_$_LatestInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'planType': instance.planType,
      'status': instance.status,
      'hostedInvoiceUrl': instance.hostedInvoiceUrl,
      'nextPaymentAttempt': instance.nextPaymentAttempt,
      '__typename': instance.typename,
    };

_$_WatchHistories _$_$_WatchHistoriesFromJson(Map<String, dynamic> json) {
  return _$_WatchHistories(
    nextToken: json['nextToken'] as String,
    rawItems: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : WatchHistoriesItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_WatchHistoriesToJson(_$_WatchHistories instance) =>
    <String, dynamic>{
      'nextToken': instance.nextToken,
      'items': instance.rawItems,
      '__typename': instance.typename,
    };

_$_WatchHistoriesItem _$_$_WatchHistoriesItemFromJson(
    Map<String, dynamic> json) {
  return _$_WatchHistoriesItem(
    id: json['id'] as String,
    lastViewedAt: json['lastViewedAt'] == null
        ? null
        : DateTime.parse(json['lastViewedAt'] as String),
    program: json['program'] == null
        ? null
        : Program.fromJson(json['program'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_WatchHistoriesItemToJson(
        _$_WatchHistoriesItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastViewedAt': instance.lastViewedAt?.toIso8601String(),
      'program': instance.program,
      '__typename': instance.typename,
    };

_$_Program _$_$_ProgramFromJson(Map<String, dynamic> json) {
  return _$_Program(
    id: json['id'] as String,
    tenantId: json['tenantId'] as String,
    channelId: json['channelId'] as String,
    title: json['title'] as String,
    detail: json['detail'] as String,
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ProgramToJson(_$_Program instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'channelId': instance.channelId,
      'title': instance.title,
      'detail': instance.detail,
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      '__typename': instance.typename,
    };
