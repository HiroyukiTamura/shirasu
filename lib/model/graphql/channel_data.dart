import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/currency_mixin.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/extension.dart';

part 'channel_data.freezed.dart';

part 'channel_data.g.dart';

@freezed
abstract class ChannelData with _$ChannelData {
  const factory ChannelData({
    @required Channel channel,
  }) = _ChannelData;

  factory ChannelData.fromJson(Map<String, dynamic> json) =>
      _$ChannelDataFromJson(json);
}

@freezed
abstract class Channel with _$Channel implements BaseChannel {
  @Assert('typename == "Channel"')
  const factory Channel({
    @required String id,
    @required String name,
    @Deprecated('no need to use') dynamic icon,
    String twitterUrl,
    String facebookUrl,
    String textOnPurchaseScreen,
    @required String detail,
    @required @JsonKey(name: '__typename') String typename,
    @required SubscriptionPlan subscriptionPlan,
    @required ChannelPrograms programs,
    @required Announcements announcements,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  const Channel._();

  UnmodifiableListView<AnnouncementsItem> get announcementAvailable =>
      subscriptionPlan?.viewerPurchasedPlan?.isActive == true
          ? announcements._items
          : announcements._itemsForNonSubscriber;
}

@freezed
abstract class Announcements
    with _$Announcements
    implements BaseModelChannelAnnouncementConnection {
  @Assert('typename == "ModelChannelAnnouncementConnection"')
  const factory Announcements({
    @required
    @JsonKey(name: 'items')
    @protected
        List<AnnouncementsItem> rawItems,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Announcements;

  factory Announcements.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsFromJson(json);

  const Announcements._();

  UnmodifiableListView<AnnouncementsItem> get _items =>
      rawItems.toUnmodifiable();

  UnmodifiableListView<AnnouncementsItem> get _itemsForNonSubscriber =>
      rawItems.where((it) => !it.isSubscriberOnly).toUnmodifiable();
}

@freezed
abstract class AnnouncementsItem
    with _$AnnouncementsItem
    implements BaseChannelAnnouncement {
  @Assert('typename == "ChannelAnnouncement"')
  const factory AnnouncementsItem({
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

  factory AnnouncementsItem.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsItemFromJson(json);
}

@freezed
abstract class ChannelPrograms
    implements _$ChannelPrograms, BaseModelProgramConnection {
  @Assert('typename == "ModelProgramConnection"')
  const factory ChannelPrograms({
    @required @JsonKey(name: 'items') @protected List<ProgramsItem> rawItems,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ChannelPrograms;

  const ChannelPrograms._();

  factory ChannelPrograms.fromJson(Map<String, dynamic> json) =>
      _$ChannelProgramsFromJson(json);

  UnmodifiableListView<ProgramsItem> get items => rawItems.toUnmodifiable();

  ChannelPrograms append(ChannelPrograms newOne) => ChannelPrograms(
        rawItems: items + newOne.items,
        typename: newOne.typename,
        nextToken: newOne.nextToken,
      );
}

@freezed
abstract class ProgramsItem
    with ViewerPlanTypeMixin
    implements BaseProgram, _$ProgramsItem {
  @Assert('typename == "Program"')
  const factory ProgramsItem({
    @required String id,
    @required String tenantId,
    @required String channelId,
    @required String title,
    @required DateTime broadcastAt,
    @required int totalPlayTime,
    //todo send PR to freezed; the string "don't use!" throws error if the factory has assertion
    @Deprecated("do not use!") String viewerPlanType,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ProgramsItem;

  factory ProgramsItem.fromJson(Map<String, dynamic> json) =>
      _$ProgramsItemFromJson(json);

  const ProgramsItem._();
}

@freezed
abstract class SubscriptionPlan
    with AmountMixin
    implements _$SubscriptionPlan, BaseSubscriptionPlan {
  @Assert('typename == "SubscriptionPlan"')
  const factory SubscriptionPlan({
    @required String id,
    @required int amount,
    @required String currency,
    @required bool isPurchasable,
    @required @JsonKey(name: '__typename') String typename,
    PurchasedPlan viewerPurchasedPlan, // null => not purchased
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);

  const SubscriptionPlan._();
}

@freezed
abstract class PurchasedPlan with _$PurchasedPlan implements BasePurchasedPlan {
  @Assert('typename == "PurchasedPlan"')
  const factory PurchasedPlan({
    @required bool isActive,
    @required @JsonKey(name: '__typename') String typename,
  }) = _PurchasedPlan;

  factory PurchasedPlan.fromJson(Map<String, dynamic> json) =>
      _$PurchasedPlanFromJson(json);
}
