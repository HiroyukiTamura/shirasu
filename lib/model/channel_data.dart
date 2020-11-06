import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_data.freezed.dart';
part 'channel_data.g.dart';


@freezed
abstract class ChannelData implements _$ChannelData {
  const ChannelData._();

  factory ChannelData({
    @required Channel channel,
  }) = _ChannelData;

  factory ChannelData.fromJson(Map<String, dynamic> json) => _$ChannelDataFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  factory Channel({
    @required String id,
    @required String name,
    dynamic icon,
    String twitterUrl,
    String facebookUrl,
    String textOnPurchaseScreen,
    @required String detail,
    @required @JsonKey(name: '__typename') typename,
    @required SubscriptionPlan subscriptionPlan,
    @required ChannelPrograms programs,
    @required Announcements announcements,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}

@freezed
abstract class Announcements with _$Announcements {
  factory Announcements({
    @required List<AnnouncementsItem> items,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Announcements;

  factory Announcements.fromJson(Map<String, dynamic> json) => _$AnnouncementsFromJson(json);
}

@freezed
abstract class AnnouncementsItem with _$AnnouncementsItem {
  factory AnnouncementsItem({
    @required String id,
    @required bool isOpen,
    @required bool isSubscriberOnly,
    @required String title,
    @required String text,
    @required DateTime publishedAt,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required @JsonKey(name: '__typename') String typename,
  }) = _AnnouncementsItem;

  factory AnnouncementsItem.fromJson(Map<String, dynamic> json) => _$AnnouncementsItemFromJson(json);
}

@freezed
abstract class ChannelPrograms with _$ChannelPrograms {
  factory ChannelPrograms({
    @required List<ProgramsItem> items,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ChannelPrograms;

  factory ChannelPrograms.fromJson(Map<String, dynamic> json) => _$ChannelProgramsFromJson(json);
}

@freezed
abstract class ProgramsItem with _$ProgramsItem {
  factory ProgramsItem({
    @required String id,
    @required String tenantId,
    @required String channelId,
    @required String title,
    @required DateTime broadcastAt,
    @required int totalPlayTime,
    @required String viewerPlanType,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ProgramsItem;

  factory ProgramsItem.fromJson(Map<String, dynamic> json) => _$ProgramsItemFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  factory SubscriptionPlan({
    @required String id,
    @required int amount,
    @required String currency,
    @required bool isPurchasable,
    @required @JsonKey(name: '__typename') String typename,
    dynamic viewerPurchasedPlan,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);
}
