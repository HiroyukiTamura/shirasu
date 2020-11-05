// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_programs_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewProgramsData _$_$_NewProgramsDataFromJson(Map<String, dynamic> json) {
  return _$_NewProgramsData(
    newPrograms: json['newPrograms'] == null
        ? null
        : NewPrograms.fromJson(json['newPrograms'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewProgramsDataToJson(_$_NewProgramsData instance) =>
    <String, dynamic>{
      'newPrograms': instance.newPrograms,
    };

_$_NewPrograms _$_$_NewProgramsFromJson(Map<String, dynamic> json) {
  return _$_NewPrograms(
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_NewProgramsToJson(_$_NewPrograms instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
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
    viewerPlanType: json['viewerPlanType'] as String,
    channel: json['channel'] == null
        ? null
        : Channel.fromJson(json['channel'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
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
      '__typename': instance.typename,
    };

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    id: json['id'] as String,
    name: json['name'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.typename,
    };
