// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_programs_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeatureProgramData _$_$_FeatureProgramDataFromJson(
    Map<String, dynamic> json) {
  return _$_FeatureProgramData(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FeatureProgramDataToJson(
        _$_FeatureProgramData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    nowBroadcastings: json['nowBroadcastings'] == null
        ? null
        : Broadcastings.fromJson(
            json['nowBroadcastings'] as Map<String, dynamic>),
    comingBroadcastings: json['comingBroadcastings'] == null
        ? null
        : Broadcastings.fromJson(
            json['comingBroadcastings'] as Map<String, dynamic>),
    viewerUser: json['viewerUser'] == null
        ? null
        : ViewerUser.fromJson(json['viewerUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'nowBroadcastings': instance.nowBroadcastings,
      'comingBroadcastings': instance.comingBroadcastings,
      'viewerUser': instance.viewerUser,
    };

_$_Broadcastings _$_$_BroadcastingsFromJson(Map<String, dynamic> json) {
  return _$_Broadcastings(
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['typename'] as String,
  );
}

Map<String, dynamic> _$_$_BroadcastingsToJson(_$_Broadcastings instance) =>
    <String, dynamic>{
      'items': instance.items,
      'typename': instance.typename,
    };

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    channelId: json['channelId'] as String,
    id: json['id'] as String,
    mainTime: json['mainTime'] as int,
    releasedAt: json['releasedAt'] == null
        ? null
        : DateTime.parse(json['releasedAt'] as String),
    tenantId: json['tenantId'] as String,
    title: json['title'] as String,
    totalPlayTime: json['totalPlayTime'] as int,
    viewerPlanType: json['viewerPlanType'],
    channel: json['channel'] == null
        ? null
        : Channel.fromJson(json['channel'] as Map<String, dynamic>),
    typename: json['typename'] as String,
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      'channelId': instance.channelId,
      'id': instance.id,
      'mainTime': instance.mainTime,
      'releasedAt': instance.releasedAt?.toIso8601String(),
      'tenantId': instance.tenantId,
      'title': instance.title,
      'totalPlayTime': instance.totalPlayTime,
      'viewerPlanType': instance.viewerPlanType,
      'channel': instance.channel,
      'typename': instance.typename,
    };

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    id: json['id'] as String,
    name: json['name'] as String,
    typename: json['typename'] as String,
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'typename': instance.typename,
    };

_$_ViewerUser _$_$_ViewerUserFromJson(Map<String, dynamic> json) {
  return _$_ViewerUser(
    id: json['id'] as String,
    subscribedPrograms: json['subscribedPrograms'] as List,
    typename: json['typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerUserToJson(_$_ViewerUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subscribedPrograms': instance.subscribedPrograms,
      'typename': instance.typename,
    };
