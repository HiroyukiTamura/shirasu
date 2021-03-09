// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_subscribed_programs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListSubscribedPrograms _$_$_ListSubscribedProgramsFromJson(
    Map<String, dynamic> json) {
  return _$_ListSubscribedPrograms(
    viewerUser: json['viewerUser'] == null
        ? null
        : ViewerUser.fromJson(json['viewerUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ListSubscribedProgramsToJson(
        _$_ListSubscribedPrograms instance) =>
    <String, dynamic>{
      'viewerUser': instance.viewerUser,
    };

_$_ViewerUser _$_$_ViewerUserFromJson(Map<String, dynamic> json) {
  return _$_ViewerUser(
    subscribedPrograms: json['subscribedPrograms'] == null
        ? null
        : ProgramCollection.fromJson(
            json['subscribedPrograms'] as Map<String, dynamic>),
    id: json['id'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerUserToJson(_$_ViewerUser instance) =>
    <String, dynamic>{
      'subscribedPrograms': instance.subscribedPrograms,
      'id': instance.id,
      '__typename': instance.typename,
    };

_$_ProgramCollection _$_$_ProgramCollectionFromJson(Map<String, dynamic> json) {
  return _$_ProgramCollection(
    rawItems: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    typename: json['__typename'] as String,
    nextToken: json['nextToken'] as String,
  );
}

Map<String, dynamic> _$_$_ProgramCollectionToJson(
        _$_ProgramCollection instance) =>
    <String, dynamic>{
      'items': instance.rawItems,
      '__typename': instance.typename,
      'nextToken': instance.nextToken,
    };
