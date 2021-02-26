// ignore_for_file: always_put_required_named_parameters_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/extension.dart';

part 'featured_programs_data.freezed.dart';

part 'featured_programs_data.g.dart';

@freezed
abstract class FeatureProgramData implements _$FeatureProgramData {
  const factory FeatureProgramData({
    @required Broadcastings nowBroadcastings,
    @required Broadcastings comingBroadcastings,
    @required Channels channels,
    @required ViewerUser viewerUser,
  }) = _FeatureProgramData;

  factory FeatureProgramData.fromJson(Map<String, dynamic> json) =>
      _$FeatureProgramDataFromJson(json);

  const FeatureProgramData._();

  int get broadcastCount =>
      nowBroadcastings.items.length + comingBroadcastings.items.length;
}

@freezed
abstract class Broadcastings with _$Broadcastings implements BaseSearchableProgramConnection {

  @Assert('typename == "SearchableProgramConnection"')
  const factory Broadcastings({
    @required @JsonKey(name: 'items') @protected List<Item> rawItems,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _Broadcastings;

  factory Broadcastings.fromJson(Map<String, dynamic> json) =>
      _$BroadcastingsFromJson(json);

  const Broadcastings._();

  @override
  UnmodifiableListView<Item> get items => rawItems.toUnmodifiable();
}

@freezed
abstract class Item with _$Item implements BaseProgram{

  @Assert('typename == "Program"')
  const factory Item({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    @visibleForOverriding
    String viewerPlanType,
    @required Channel channel,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Channel with _$Channel implements BaseChannel {

  @Assert('typename == "Channel"')
  const factory Channel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser implements BaseUser {

  @Assert('typename == "User"')
  const factory ViewerUser({
    @required String id,
    @required @JsonKey(name: 'subscribedPrograms') @protected List<Item> rawSubscribedPrograms,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserFromJson(json);

  const ViewerUser._();

  UnmodifiableListView<Item> get subscribedPrograms => rawSubscribedPrograms.toUnmodifiable();
}

@freezed
abstract class Channels with _$Channels implements BaseModelChannelConnection {

  @Assert('typename == "ModelChannelConnection"')
  const factory Channels({
    @required @JsonKey(name: 'items') @protected List<Channel> rawItems,
    String nextToken,
    @JsonKey(name: '__typename')
    @required
    String typename,
  }) = _Channels;

  factory Channels.fromJson(Map<String, dynamic> json) =>
      _$ChannelsFromJson(json);

  const Channels._();

  UnmodifiableListView<Channel> get items => rawItems.toUnmodifiable();
}
