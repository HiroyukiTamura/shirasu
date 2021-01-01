import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/product_type.dart';

part 'channel_subscription_plan.freezed.dart';

part 'channel_subscription_plan.g.dart';

@freezed
abstract class ChannelSubscriptionPlan with _$ChannelSubscriptionPlan {
  const factory ChannelSubscriptionPlan({
    @required ChannelSubscriptionPlan channel,
  }) = _ChannelSubscriptionPlan;

  factory ChannelSubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$ChannelSubscriptionPlanFromJson(json);
}

@freezed
abstract class Channel with _$Channel implements BaseChannel {

  const factory Channel({
    @required SubscriptionPlan subscriptionPlan,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Channel"')
        String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan, ProductTypeGetter implements BaseSubscriptionPlan {

  const factory SubscriptionPlan({
    @required String id,
    String parentPlanType,
    String parentPlanId,
    @required String productType,
    @required String productId,
    @required String name,
    @required int amount,
    @required String currency,
    @required String interval,
    @required int intervalCount,
    @required bool isPurchasable,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "SubscriptionPlan"')
        typename,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);

  const SubscriptionPlan._();

  @override
  ProductType get productTypeStrict => ProductTypeGetter.parse(productType);
}
