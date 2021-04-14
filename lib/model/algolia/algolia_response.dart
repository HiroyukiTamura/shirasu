import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/repository/url_util.dart';

part 'algolia_response.freezed.dart';
part 'algolia_response.g.dart';

@freezed
abstract class AlgoliaResponse with _$AlgoliaResponse {
  const factory AlgoliaResponse({
    @required @protected @JsonKey(name: 'hits') List<Hit> rawHits,
    @required int nbHits,
    @required bool exhaustiveNbHits,
    @required String query,
    @required String params,
    @required int processingTimeMS,
    int length,
    int offset,
  }) = _AlgoliaResponse;

  factory AlgoliaResponse.fromJson(Map<String, dynamic> json) => _$AlgoliaResponseFromJson(json);

  const AlgoliaResponse._();

  UnmodifiableListView<Hit> get hits => rawHits.toUnmodifiable();
}

@freezed
abstract class Hit with _$Hit {
  const factory Hit({
    @required DateTime broadcastAt,
    @required String channelTitle,
    @required String programTitle,
    @required @protected @JsonKey(name: 'tagList') List<String> rawTagList,
    @required @protected String objectID,
    @required @JsonKey(name: '_highlightResult') HighlightResult highlightResult,
  }) = _Hit;

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);

  const Hit._();

  UnmodifiableListView<String> get tagList => rawTagList.toUnmodifiable();
  
  String get programId => objectID;
  
  String get channelId => UrlUtil.programId2channelId(programId);
}

@freezed
abstract class HighlightResult with _$HighlightResult {
  const factory HighlightResult({
    @required MatchResult channelTitle,
    @required MatchResult programTitle,
    @protected @JsonKey(name: 'tagList', defaultValue: []) List<MatchResult> rawTagList,
  }) = _HighlightResult;

  factory HighlightResult.fromJson(Map<String, dynamic> json) => _$HighlightResultFromJson(json);

  const HighlightResult._();

  UnmodifiableListView<MatchResult> get tagList => rawTagList.toUnmodifiable();

  static String removeHtmlTag(String string) => string.replaceAll('<em>', '').replaceAll('</em>', '');
}

mixin MatchResultBase {
  String get value;
  @visibleForOverriding
  List<String> get rawMatchedWords;

  UnmodifiableListView<String> get matchedWords => rawMatchedWords.toUnmodifiable();
}

@freezed
abstract class MatchResult with MatchResultBase implements _$MatchResult {
  const factory MatchResult({
    @required String value,
    @required @protected @JsonKey(name: 'matchLevel') String rawMatchLevel,
    @required @protected @JsonKey(name: 'matchedWords') List<String> rawMatchedWords,
    @JsonKey(defaultValue: false) bool fullyHighlighted,
  }) = _MatchResult;

  factory MatchResult.fromJson(Map<String, dynamic> json) => _$MatchResultFromJson(json);

  const MatchResult._();

  MatchLevel get matchLevel {
    switch(rawMatchLevel) {
      case 'full':
        return MatchLevel.FULL;
      case 'partial':
        return MatchLevel.PARTIAL;
      case 'none':
        return MatchLevel.NONE;
      default:
        throw ArgumentError.value(rawMatchLevel);
    }
  }

  bool get fullMatch => matchLevel == MatchLevel.FULL;
}

enum MatchLevel { FULL, NONE, PARTIAL }