// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'algolia_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlgoliaResponse _$_$_AlgoliaResponseFromJson(Map<String, dynamic> json) {
  return _$_AlgoliaResponse(
    rawHits: (json['hits'] as List)
        ?.map((e) => e == null ? null : Hit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nbHits: json['nbHits'] as int,
    exhaustiveNbHits: json['exhaustiveNbHits'] as bool,
    query: json['query'] as String,
    params: json['params'] as String,
    processingTimeMS: json['processingTimeMS'] as int,
    length: json['length'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$_$_AlgoliaResponseToJson(_$_AlgoliaResponse instance) =>
    <String, dynamic>{
      'hits': instance.rawHits,
      'nbHits': instance.nbHits,
      'exhaustiveNbHits': instance.exhaustiveNbHits,
      'query': instance.query,
      'params': instance.params,
      'processingTimeMS': instance.processingTimeMS,
      'length': instance.length,
      'offset': instance.offset,
    };

_$_Hit _$_$_HitFromJson(Map<String, dynamic> json) {
  return _$_Hit(
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    channelTitle: json['channelTitle'] as String,
    programTitle: json['programTitle'] as String,
    rawTagList: (json['tagList'] as List)?.map((e) => e as String)?.toList(),
    objectID: json['objectID'] as String,
    highlightResult: json['_highlightResult'] == null
        ? null
        : HighlightResult.fromJson(
            json['_highlightResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_HitToJson(_$_Hit instance) => <String, dynamic>{
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      'channelTitle': instance.channelTitle,
      'programTitle': instance.programTitle,
      'tagList': instance.rawTagList,
      'objectID': instance.objectID,
      '_highlightResult': instance.highlightResult,
    };

_$_HighlightResult _$_$_HighlightResultFromJson(Map<String, dynamic> json) {
  return _$_HighlightResult(
    channelTitle: json['channelTitle'] == null
        ? null
        : MatchResult.fromJson(json['channelTitle'] as Map<String, dynamic>),
    programTitle: json['programTitle'] == null
        ? null
        : MatchResult.fromJson(json['programTitle'] as Map<String, dynamic>),
    rawTagList: (json['tagList'] as List)
            ?.map((e) => e == null
                ? null
                : MatchResult.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_HighlightResultToJson(_$_HighlightResult instance) =>
    <String, dynamic>{
      'channelTitle': instance.channelTitle,
      'programTitle': instance.programTitle,
      'tagList': instance.rawTagList,
    };

_$_MatchResult _$_$_MatchResultFromJson(Map<String, dynamic> json) {
  return _$_MatchResult(
    value: json['value'] as String,
    rawMatchLevel: json['matchLevel'] as String,
    rawMatchedWords:
        (json['matchedWords'] as List)?.map((e) => e as String)?.toList(),
    fullyHighlighted: json['fullyHighlighted'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_MatchResultToJson(_$_MatchResult instance) =>
    <String, dynamic>{
      'value': instance.value,
      'matchLevel': instance.rawMatchLevel,
      'matchedWords': instance.rawMatchedWords,
      'fullyHighlighted': instance.fullyHighlighted,
    };
