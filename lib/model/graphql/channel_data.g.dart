// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelData _$_$_ChannelDataFromJson(Map<String, dynamic> json) {
  return _$_ChannelData(
    channel: json['channel'] == null
        ? null
        : Channel.fromJson(json['channel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ChannelDataToJson(_$_ChannelData instance) =>
    <String, dynamic>{
      'channel': instance.channel,
    };

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    id: json['id'] as String,
    name: json['name'] as String,
    icon: json['icon'],
    twitterUrl: json['twitterUrl'] as String,
    facebookUrl: json['facebookUrl'] as String,
    textOnPurchaseScreen: json['textOnPurchaseScreen'] as String,
    detail: json['detail'] as String,
    typename: json['__typename'] as String,
    subscriptionPlan: json['subscriptionPlan'] == null
        ? null
        : SubscriptionPlan.fromJson(
            json['subscriptionPlan'] as Map<String, dynamic>),
    programs: json['programs'] == null
        ? null
        : ChannelPrograms.fromJson(json['programs'] as Map<String, dynamic>),
    announcements: json['announcements'] == null
        ? null
        : Announcements.fromJson(json['announcements'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'twitterUrl': instance.twitterUrl,
      'facebookUrl': instance.facebookUrl,
      'textOnPurchaseScreen': instance.textOnPurchaseScreen,
      'detail': instance.detail,
      '__typename': instance.typename,
      'subscriptionPlan': instance.subscriptionPlan,
      'programs': instance.programs,
      'announcements': instance.announcements,
    };

_$_Announcements _$_$_AnnouncementsFromJson(Map<String, dynamic> json) {
  return _$_Announcements(
    rawItems: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : AnnouncementsItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_AnnouncementsToJson(_$_Announcements instance) =>
    <String, dynamic>{
      'items': instance.rawItems,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_AnnouncementsItem _$_$_AnnouncementsItemFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementsItem(
    id: json['id'] as String,
    isOpen: json['isOpen'] as bool,
    isSubscriberOnly: json['isSubscriberOnly'] as bool,
    title: json['title'] as String,
    text: json['text'] as String,
    publishedAt: json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_AnnouncementsItemToJson(
        _$_AnnouncementsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isOpen': instance.isOpen,
      'isSubscriberOnly': instance.isSubscriberOnly,
      'title': instance.title,
      'text': instance.text,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__typename': instance.typename,
    };

_$_ChannelPrograms _$_$_ChannelProgramsFromJson(Map<String, dynamic> json) {
  return _$_ChannelPrograms(
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : ProgramsItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ChannelProgramsToJson(_$_ChannelPrograms instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_ProgramsItem _$_$_ProgramsItemFromJson(Map<String, dynamic> json) {
  return _$_ProgramsItem(
    id: json['id'] as String,
    tenantId: json['tenantId'] as String,
    channelId: json['channelId'] as String,
    title: json['title'] as String,
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    totalPlayTime: json['totalPlayTime'] as int,
    viewerPlanType: json['viewerPlanType'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ProgramsItemToJson(_$_ProgramsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'channelId': instance.channelId,
      'title': instance.title,
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      'totalPlayTime': instance.totalPlayTime,
      'viewerPlanType': instance.viewerPlanType,
      '__typename': instance.typename,
    };

_$_SubscriptionPlan _$_$_SubscriptionPlanFromJson(Map<String, dynamic> json) {
  return _$_SubscriptionPlan(
    id: json['id'] as String,
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    isPurchasable: json['isPurchasable'] as bool,
    typename: json['__typename'] as String,
    viewerPurchasedPlan: json['viewerPurchasedPlan'] == null
        ? null
        : PurchasedPlan.fromJson(
            json['viewerPurchasedPlan'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SubscriptionPlanToJson(
        _$_SubscriptionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'isPurchasable': instance.isPurchasable,
      '__typename': instance.typename,
      'viewerPurchasedPlan': instance.viewerPurchasedPlan,
    };

_$_PurchasedPlan _$_$_PurchasedPlanFromJson(Map<String, dynamic> json) {
  return _$_PurchasedPlan(
    isActive: json['isActive'] as bool,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_PurchasedPlanToJson(_$_PurchasedPlan instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      '__typename': instance.typename,
    };
