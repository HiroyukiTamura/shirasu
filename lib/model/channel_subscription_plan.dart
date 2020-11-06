import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_subscription_plan.freezed.dart';
part 'channel_subscription_plan.g.dart';

@freezed
abstract class ChannelSubscriptionPlan with _$ChannelSubscriptionPlan {
  factory ChannelSubscriptionPlan({
    @required ChannelSubscriptionPlan channel,
  }) = _ChannelSubscriptionPlan;

  factory ChannelSubscriptionPlan.fromJson(Map<String, dynamic> json) => _$ChannelSubscriptionPlanFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  factory Channel({
    @required SubscriptionPlan subscriptionPlan,
    @required String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  factory SubscriptionPlan({
    @required String id,
    dynamic parentPlanType,
    dynamic parentPlanId,
    @required String productType,
    @required String productId,
    @required String name,
    @required int amount,
    @required String currency,
    @required String interval,
    @required int intervalCount,
    @required bool isPurchasable,
    @required @JsonKey(name: '__typename') typename,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);
}
