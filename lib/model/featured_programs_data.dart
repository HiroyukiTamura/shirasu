import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'featured_programs_data.freezed.dart';
part 'featured_programs_data.g.dart';

@freezed
abstract class FeatureProgramData with _$FeatureProgramData {

  factory FeatureProgramData({@required Data data}) = _FeatureProgramData;
  factory FeatureProgramData.fromJson(Map<String, dynamic> json) => _$FeatureProgramDataFromJson(json);
}

@freezed
abstract class Data with _$Data {

  factory Data({
    @required Broadcastings nowBroadcastings,
    @required Broadcastings comingBroadcastings,
    @required ViewerUser viewerUser,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Broadcastings with _$Broadcastings {
  factory Broadcastings({
    @required List<Item> items,
    @required String typename,
  }) = _Broadcastings;

  factory Broadcastings.fromJson(Map<String, dynamic> json) => _$BroadcastingsFromJson(json);
}

@freezed
abstract class Item with _$Item {
  factory Item({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    @required dynamic viewerPlanType,
    @required Channel channel,
    @required String typename,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  factory Channel({
    @required String id,
    @required String name,
    @required String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser {
  factory ViewerUser({
    @required String id,
    @required List<dynamic> subscribedPrograms,//todo これ
    @required String typename,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) => _$ViewerUserFromJson(json);
}
