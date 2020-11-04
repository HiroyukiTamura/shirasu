import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'featured_programs_data.freezed.dart';

@freezed
abstract class Person with _$Person {
  factory Person({ String name, int age }) = _Person;
}

@freezed
abstract class AuthData with _$AuthData {

  factory AuthData({@required Data data}) = _AuthData;
}

@freezed
abstract class Data with _$Data {

  factory Data({
    @required Broadcastings nowBroadcastings,
    @required Broadcastings comingBroadcastings,
    @required ViewerUser viewerUser,
  }) = _Data;
}

@freezed
abstract class Broadcastings with _$Broadcastings {
  factory Broadcastings({
    @required List<Item> items,
    @required String typename,
  }) = _Broadcastings;
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
}

@freezed
abstract class Channel with _$Channel {
  factory Channel({
    @required String id,
    @required String name,
    @required String typename,
  }) = _Channel;
}

@freezed
abstract class ViewerUser with _$ViewerUser {
  factory ViewerUser({
    @required String id,
    @required List<dynamic> subscribedPrograms,//todo これ
    @required String typename,
  }) = _ViewerUser;
}
