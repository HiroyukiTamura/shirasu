import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shirasu/model/base_model.dart';

part 'featured_programs_data.freezed.dart';

part 'featured_programs_data.g.dart';

@freezed
abstract class FeatureProgramData implements _$FeatureProgramData {
  const factory FeatureProgramData({
    @required Broadcastings nowBroadcastings,
    @required Broadcastings comingBroadcastings,
    @required ViewerUser viewerUser,
  }) = _FeatureProgramData;

  factory FeatureProgramData.fromJson(Map<String, dynamic> json) =>
      _$FeatureProgramDataFromJson(json);

  const FeatureProgramData._();

  int get broadcastCount =>
      nowBroadcastings.items.length + comingBroadcastings.items.length;
}

@freezed
abstract class Broadcastings with _$Broadcastings {
  @Implements(BaseSearchableProgramConnection)
  const factory Broadcastings({
    @required List<Item> items,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "SearchableProgramConnection"')
        String typename,
  }) = _Broadcastings;

  factory Broadcastings.fromJson(Map<String, dynamic> json) =>
      _$BroadcastingsFromJson(json);
}

@freezed
abstract class Item with _$Item {
  @Implements(BaseProgram)
  const factory Item({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    String viewerPlanType,
    @required Channel channel,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "Program"')
        String typename,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  @Implements(BaseChannel)
  const factory Channel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "Channel"')
        String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser {
  @Implements(BaseUser)
  const factory ViewerUser({
    @required String id,
    @required List<Item> subscribedPrograms,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "User"')
        String typename,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserFromJson(json);
}

@freezed
abstract class Channels with _$Channels {

  @Implements(BaseModelChannelConnection)
  const factory Channels({
    @required List<Channel> items,
    String nextToken,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "ModelChannelConnection"')
    String typename,
  }) = _Channels;

  factory Channels.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFromJson(json);
}
