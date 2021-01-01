// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_subscription_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelSubscriptionPlan _$_$_ChannelSubscriptionPlanFromJson(
    Map<String, dynamic> json) {
  return _$_ChannelSubscriptionPlan(
    channel: json['channel'] == null
        ? null
        : ChannelSubscriptionPlan.fromJson(
            json['channel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ChannelSubscriptionPlanToJson(
        _$_ChannelSubscriptionPlan instance) =>
    <String, dynamic>{
      'channel': instance.channel,
    };

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    subscriptionPlan: json['subscriptionPlan'] == null
        ? null
        : SubscriptionPlan.fromJson(
            json['subscriptionPlan'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'subscriptionPlan': instance.subscriptionPlan,
      '__typename': instance.typename,
    };

_$_SubscriptionPlan _$_$_SubscriptionPlanFromJson(Map<String, dynamic> json) {
  return _$_SubscriptionPlan(
    id: json['id'] as String,
    parentPlanType: json['parentPlanType'] as String,
    parentPlanId: json['parentPlanId'] as String,
    productType: json['productType'] as String,
    productId: json['productId'] as String,
    name: json['name'] as String,
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    interval: json['interval'] as String,
    intervalCount: json['intervalCount'] as int,
    isPurchasable: json['isPurchasable'] as bool,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_SubscriptionPlanToJson(
        _$_SubscriptionPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentPlanType': instance.parentPlanType,
      'parentPlanId': instance.parentPlanId,
      'productType': instance.productType,
      'productId': instance.productId,
      'name': instance.name,
      'amount': instance.amount,
      'currency': instance.currency,
      'interval': instance.interval,
      'intervalCount': instance.intervalCount,
      'isPurchasable': instance.isPurchasable,
      '__typename': instance.typename,
    };
