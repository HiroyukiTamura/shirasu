// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WatchHistoriesData _$_$_WatchHistoriesDataFromJson(
    Map<String, dynamic> json) {
  return _$_WatchHistoriesData(
    viewerUser: json['viewerUser'] == null
        ? null
        : ViewerUserSimple.fromJson(json['viewerUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_WatchHistoriesDataToJson(
        _$_WatchHistoriesData instance) =>
    <String, dynamic>{
      'viewerUser': instance.viewerUser,
    };

_$_ViewerUserSimple _$_$_ViewerUserSimpleFromJson(Map<String, dynamic> json) {
  return _$_ViewerUserSimple(
    watchHistories: json['watchHistories'] == null
        ? null
        : WatchHistories.fromJson(
            json['watchHistories'] as Map<String, dynamic>),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerUserSimpleToJson(
        _$_ViewerUserSimple instance) =>
    <String, dynamic>{
      'watchHistories': instance.watchHistories,
      '__typename': instance.typename,
    };
