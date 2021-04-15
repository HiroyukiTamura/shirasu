// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'algolia_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AlgoliaResponse _$AlgoliaResponseFromJson(Map<String, dynamic> json) {
  return _AlgoliaResponse.fromJson(json);
}

/// @nodoc
class _$AlgoliaResponseTearOff {
  const _$AlgoliaResponseTearOff();

// ignore: unused_element
  _AlgoliaResponse call(
      {@required @protected @JsonKey(name: 'hits') List<Hit> rawHits,
      @required int nbHits,
      @required bool exhaustiveNbHits,
      @required String query,
      @required String params,
      @required int processingTimeMS,
      int length,
      int offset}) {
    return _AlgoliaResponse(
      rawHits: rawHits,
      nbHits: nbHits,
      exhaustiveNbHits: exhaustiveNbHits,
      query: query,
      params: params,
      processingTimeMS: processingTimeMS,
      length: length,
      offset: offset,
    );
  }

// ignore: unused_element
  AlgoliaResponse fromJson(Map<String, Object> json) {
    return AlgoliaResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AlgoliaResponse = _$AlgoliaResponseTearOff();

/// @nodoc
mixin _$AlgoliaResponse {
  @protected
  @JsonKey(name: 'hits')
  List<Hit> get rawHits;
  int get nbHits;
  bool get exhaustiveNbHits;
  String get query;
  String get params;
  int get processingTimeMS;
  int get length;
  int get offset;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AlgoliaResponseCopyWith<AlgoliaResponse> get copyWith;
}

/// @nodoc
abstract class $AlgoliaResponseCopyWith<$Res> {
  factory $AlgoliaResponseCopyWith(
          AlgoliaResponse value, $Res Function(AlgoliaResponse) then) =
      _$AlgoliaResponseCopyWithImpl<$Res>;
  $Res call(
      {@protected @JsonKey(name: 'hits') List<Hit> rawHits,
      int nbHits,
      bool exhaustiveNbHits,
      String query,
      String params,
      int processingTimeMS,
      int length,
      int offset});
}

/// @nodoc
class _$AlgoliaResponseCopyWithImpl<$Res>
    implements $AlgoliaResponseCopyWith<$Res> {
  _$AlgoliaResponseCopyWithImpl(this._value, this._then);

  final AlgoliaResponse _value;
  // ignore: unused_field
  final $Res Function(AlgoliaResponse) _then;

  @override
  $Res call({
    Object rawHits = freezed,
    Object nbHits = freezed,
    Object exhaustiveNbHits = freezed,
    Object query = freezed,
    Object params = freezed,
    Object processingTimeMS = freezed,
    Object length = freezed,
    Object offset = freezed,
  }) {
    return _then(_value.copyWith(
      rawHits: rawHits == freezed ? _value.rawHits : rawHits as List<Hit>,
      nbHits: nbHits == freezed ? _value.nbHits : nbHits as int,
      exhaustiveNbHits: exhaustiveNbHits == freezed
          ? _value.exhaustiveNbHits
          : exhaustiveNbHits as bool,
      query: query == freezed ? _value.query : query as String,
      params: params == freezed ? _value.params : params as String,
      processingTimeMS: processingTimeMS == freezed
          ? _value.processingTimeMS
          : processingTimeMS as int,
      length: length == freezed ? _value.length : length as int,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
abstract class _$AlgoliaResponseCopyWith<$Res>
    implements $AlgoliaResponseCopyWith<$Res> {
  factory _$AlgoliaResponseCopyWith(
          _AlgoliaResponse value, $Res Function(_AlgoliaResponse) then) =
      __$AlgoliaResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@protected @JsonKey(name: 'hits') List<Hit> rawHits,
      int nbHits,
      bool exhaustiveNbHits,
      String query,
      String params,
      int processingTimeMS,
      int length,
      int offset});
}

/// @nodoc
class __$AlgoliaResponseCopyWithImpl<$Res>
    extends _$AlgoliaResponseCopyWithImpl<$Res>
    implements _$AlgoliaResponseCopyWith<$Res> {
  __$AlgoliaResponseCopyWithImpl(
      _AlgoliaResponse _value, $Res Function(_AlgoliaResponse) _then)
      : super(_value, (v) => _then(v as _AlgoliaResponse));

  @override
  _AlgoliaResponse get _value => super._value as _AlgoliaResponse;

  @override
  $Res call({
    Object rawHits = freezed,
    Object nbHits = freezed,
    Object exhaustiveNbHits = freezed,
    Object query = freezed,
    Object params = freezed,
    Object processingTimeMS = freezed,
    Object length = freezed,
    Object offset = freezed,
  }) {
    return _then(_AlgoliaResponse(
      rawHits: rawHits == freezed ? _value.rawHits : rawHits as List<Hit>,
      nbHits: nbHits == freezed ? _value.nbHits : nbHits as int,
      exhaustiveNbHits: exhaustiveNbHits == freezed
          ? _value.exhaustiveNbHits
          : exhaustiveNbHits as bool,
      query: query == freezed ? _value.query : query as String,
      params: params == freezed ? _value.params : params as String,
      processingTimeMS: processingTimeMS == freezed
          ? _value.processingTimeMS
          : processingTimeMS as int,
      length: length == freezed ? _value.length : length as int,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AlgoliaResponse extends _AlgoliaResponse {
  const _$_AlgoliaResponse(
      {@required @protected @JsonKey(name: 'hits') this.rawHits,
      @required this.nbHits,
      @required this.exhaustiveNbHits,
      @required this.query,
      @required this.params,
      @required this.processingTimeMS,
      this.length,
      this.offset})
      : assert(rawHits != null),
        assert(nbHits != null),
        assert(exhaustiveNbHits != null),
        assert(query != null),
        assert(params != null),
        assert(processingTimeMS != null),
        super._();

  factory _$_AlgoliaResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AlgoliaResponseFromJson(json);

  @override
  @protected
  @JsonKey(name: 'hits')
  final List<Hit> rawHits;
  @override
  final int nbHits;
  @override
  final bool exhaustiveNbHits;
  @override
  final String query;
  @override
  final String params;
  @override
  final int processingTimeMS;
  @override
  final int length;
  @override
  final int offset;

  @override
  String toString() {
    return 'AlgoliaResponse(rawHits: $rawHits, nbHits: $nbHits, exhaustiveNbHits: $exhaustiveNbHits, query: $query, params: $params, processingTimeMS: $processingTimeMS, length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlgoliaResponse &&
            (identical(other.rawHits, rawHits) ||
                const DeepCollectionEquality()
                    .equals(other.rawHits, rawHits)) &&
            (identical(other.nbHits, nbHits) ||
                const DeepCollectionEquality().equals(other.nbHits, nbHits)) &&
            (identical(other.exhaustiveNbHits, exhaustiveNbHits) ||
                const DeepCollectionEquality()
                    .equals(other.exhaustiveNbHits, exhaustiveNbHits)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.params, params) ||
                const DeepCollectionEquality().equals(other.params, params)) &&
            (identical(other.processingTimeMS, processingTimeMS) ||
                const DeepCollectionEquality()
                    .equals(other.processingTimeMS, processingTimeMS)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawHits) ^
      const DeepCollectionEquality().hash(nbHits) ^
      const DeepCollectionEquality().hash(exhaustiveNbHits) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(params) ^
      const DeepCollectionEquality().hash(processingTimeMS) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$AlgoliaResponseCopyWith<_AlgoliaResponse> get copyWith =>
      __$AlgoliaResponseCopyWithImpl<_AlgoliaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlgoliaResponseToJson(this);
  }
}

abstract class _AlgoliaResponse extends AlgoliaResponse {
  const _AlgoliaResponse._() : super._();
  const factory _AlgoliaResponse(
      {@required @protected @JsonKey(name: 'hits') List<Hit> rawHits,
      @required int nbHits,
      @required bool exhaustiveNbHits,
      @required String query,
      @required String params,
      @required int processingTimeMS,
      int length,
      int offset}) = _$_AlgoliaResponse;

  factory _AlgoliaResponse.fromJson(Map<String, dynamic> json) =
      _$_AlgoliaResponse.fromJson;

  @override
  @protected
  @JsonKey(name: 'hits')
  List<Hit> get rawHits;
  @override
  int get nbHits;
  @override
  bool get exhaustiveNbHits;
  @override
  String get query;
  @override
  String get params;
  @override
  int get processingTimeMS;
  @override
  int get length;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$AlgoliaResponseCopyWith<_AlgoliaResponse> get copyWith;
}

Hit _$HitFromJson(Map<String, dynamic> json) {
  return _Hit.fromJson(json);
}

/// @nodoc
class _$HitTearOff {
  const _$HitTearOff();

// ignore: unused_element
  _Hit call(
      {@required
          DateTime broadcastAt,
      @required
          String channelTitle,
      @required
          String programTitle,
      @required
      @protected
      @JsonKey(name: 'tagList')
          List<String> rawTagList,
      @required
      @protected
          String objectID,
      @required
      @JsonKey(name: '_highlightResult')
          HighlightResult highlightResult}) {
    return _Hit(
      broadcastAt: broadcastAt,
      channelTitle: channelTitle,
      programTitle: programTitle,
      rawTagList: rawTagList,
      objectID: objectID,
      highlightResult: highlightResult,
    );
  }

// ignore: unused_element
  Hit fromJson(Map<String, Object> json) {
    return Hit.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Hit = _$HitTearOff();

/// @nodoc
mixin _$Hit {
  DateTime get broadcastAt;
  String get channelTitle;
  String get programTitle;
  @protected
  @JsonKey(name: 'tagList')
  List<String> get rawTagList;
  @protected
  String get objectID;
  @JsonKey(name: '_highlightResult')
  HighlightResult get highlightResult;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HitCopyWith<Hit> get copyWith;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res>;
  $Res call(
      {DateTime broadcastAt,
      String channelTitle,
      String programTitle,
      @protected @JsonKey(name: 'tagList') List<String> rawTagList,
      @protected String objectID,
      @JsonKey(name: '_highlightResult') HighlightResult highlightResult});

  $HighlightResultCopyWith<$Res> get highlightResult;
}

/// @nodoc
class _$HitCopyWithImpl<$Res> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  final Hit _value;
  // ignore: unused_field
  final $Res Function(Hit) _then;

  @override
  $Res call({
    Object broadcastAt = freezed,
    Object channelTitle = freezed,
    Object programTitle = freezed,
    Object rawTagList = freezed,
    Object objectID = freezed,
    Object highlightResult = freezed,
  }) {
    return _then(_value.copyWith(
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle as String,
      programTitle: programTitle == freezed
          ? _value.programTitle
          : programTitle as String,
      rawTagList: rawTagList == freezed
          ? _value.rawTagList
          : rawTagList as List<String>,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      highlightResult: highlightResult == freezed
          ? _value.highlightResult
          : highlightResult as HighlightResult,
    ));
  }

  @override
  $HighlightResultCopyWith<$Res> get highlightResult {
    if (_value.highlightResult == null) {
      return null;
    }
    return $HighlightResultCopyWith<$Res>(_value.highlightResult, (value) {
      return _then(_value.copyWith(highlightResult: value));
    });
  }
}

/// @nodoc
abstract class _$HitCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$HitCopyWith(_Hit value, $Res Function(_Hit) then) =
      __$HitCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime broadcastAt,
      String channelTitle,
      String programTitle,
      @protected @JsonKey(name: 'tagList') List<String> rawTagList,
      @protected String objectID,
      @JsonKey(name: '_highlightResult') HighlightResult highlightResult});

  @override
  $HighlightResultCopyWith<$Res> get highlightResult;
}

/// @nodoc
class __$HitCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res>
    implements _$HitCopyWith<$Res> {
  __$HitCopyWithImpl(_Hit _value, $Res Function(_Hit) _then)
      : super(_value, (v) => _then(v as _Hit));

  @override
  _Hit get _value => super._value as _Hit;

  @override
  $Res call({
    Object broadcastAt = freezed,
    Object channelTitle = freezed,
    Object programTitle = freezed,
    Object rawTagList = freezed,
    Object objectID = freezed,
    Object highlightResult = freezed,
  }) {
    return _then(_Hit(
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle as String,
      programTitle: programTitle == freezed
          ? _value.programTitle
          : programTitle as String,
      rawTagList: rawTagList == freezed
          ? _value.rawTagList
          : rawTagList as List<String>,
      objectID: objectID == freezed ? _value.objectID : objectID as String,
      highlightResult: highlightResult == freezed
          ? _value.highlightResult
          : highlightResult as HighlightResult,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Hit extends _Hit {
  const _$_Hit(
      {@required this.broadcastAt,
      @required this.channelTitle,
      @required this.programTitle,
      @required @protected @JsonKey(name: 'tagList') this.rawTagList,
      @required @protected this.objectID,
      @required @JsonKey(name: '_highlightResult') this.highlightResult})
      : assert(broadcastAt != null),
        assert(channelTitle != null),
        assert(programTitle != null),
        assert(rawTagList != null),
        assert(objectID != null),
        assert(highlightResult != null),
        super._();

  factory _$_Hit.fromJson(Map<String, dynamic> json) => _$_$_HitFromJson(json);

  @override
  final DateTime broadcastAt;
  @override
  final String channelTitle;
  @override
  final String programTitle;
  @override
  @protected
  @JsonKey(name: 'tagList')
  final List<String> rawTagList;
  @override
  @protected
  final String objectID;
  @override
  @JsonKey(name: '_highlightResult')
  final HighlightResult highlightResult;

  @override
  String toString() {
    return 'Hit(broadcastAt: $broadcastAt, channelTitle: $channelTitle, programTitle: $programTitle, rawTagList: $rawTagList, objectID: $objectID, highlightResult: $highlightResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hit &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
            (identical(other.channelTitle, channelTitle) ||
                const DeepCollectionEquality()
                    .equals(other.channelTitle, channelTitle)) &&
            (identical(other.programTitle, programTitle) ||
                const DeepCollectionEquality()
                    .equals(other.programTitle, programTitle)) &&
            (identical(other.rawTagList, rawTagList) ||
                const DeepCollectionEquality()
                    .equals(other.rawTagList, rawTagList)) &&
            (identical(other.objectID, objectID) ||
                const DeepCollectionEquality()
                    .equals(other.objectID, objectID)) &&
            (identical(other.highlightResult, highlightResult) ||
                const DeepCollectionEquality()
                    .equals(other.highlightResult, highlightResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(channelTitle) ^
      const DeepCollectionEquality().hash(programTitle) ^
      const DeepCollectionEquality().hash(rawTagList) ^
      const DeepCollectionEquality().hash(objectID) ^
      const DeepCollectionEquality().hash(highlightResult);

  @JsonKey(ignore: true)
  @override
  _$HitCopyWith<_Hit> get copyWith =>
      __$HitCopyWithImpl<_Hit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HitToJson(this);
  }
}

abstract class _Hit extends Hit {
  const _Hit._() : super._();
  const factory _Hit(
      {@required
          DateTime broadcastAt,
      @required
          String channelTitle,
      @required
          String programTitle,
      @required
      @protected
      @JsonKey(name: 'tagList')
          List<String> rawTagList,
      @required
      @protected
          String objectID,
      @required
      @JsonKey(name: '_highlightResult')
          HighlightResult highlightResult}) = _$_Hit;

  factory _Hit.fromJson(Map<String, dynamic> json) = _$_Hit.fromJson;

  @override
  DateTime get broadcastAt;
  @override
  String get channelTitle;
  @override
  String get programTitle;
  @override
  @protected
  @JsonKey(name: 'tagList')
  List<String> get rawTagList;
  @override
  @protected
  String get objectID;
  @override
  @JsonKey(name: '_highlightResult')
  HighlightResult get highlightResult;
  @override
  @JsonKey(ignore: true)
  _$HitCopyWith<_Hit> get copyWith;
}

HighlightResult _$HighlightResultFromJson(Map<String, dynamic> json) {
  return _HighlightResult.fromJson(json);
}

/// @nodoc
class _$HighlightResultTearOff {
  const _$HighlightResultTearOff();

// ignore: unused_element
  _HighlightResult call(
      {@required
          MatchResult channelTitle,
      @required
          MatchResult programTitle,
      @protected
      @JsonKey(name: 'tagList', defaultValue: const [])
          List<MatchResult> rawTagList}) {
    return _HighlightResult(
      channelTitle: channelTitle,
      programTitle: programTitle,
      rawTagList: rawTagList,
    );
  }

// ignore: unused_element
  HighlightResult fromJson(Map<String, Object> json) {
    return HighlightResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HighlightResult = _$HighlightResultTearOff();

/// @nodoc
mixin _$HighlightResult {
  MatchResult get channelTitle;
  MatchResult get programTitle;
  @protected
  @JsonKey(name: 'tagList', defaultValue: const [])
  List<MatchResult> get rawTagList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HighlightResultCopyWith<HighlightResult> get copyWith;
}

/// @nodoc
abstract class $HighlightResultCopyWith<$Res> {
  factory $HighlightResultCopyWith(
          HighlightResult value, $Res Function(HighlightResult) then) =
      _$HighlightResultCopyWithImpl<$Res>;
  $Res call(
      {MatchResult channelTitle,
      MatchResult programTitle,
      @protected
      @JsonKey(name: 'tagList', defaultValue: const [])
          List<MatchResult> rawTagList});

  $MatchResultCopyWith<$Res> get channelTitle;
  $MatchResultCopyWith<$Res> get programTitle;
}

/// @nodoc
class _$HighlightResultCopyWithImpl<$Res>
    implements $HighlightResultCopyWith<$Res> {
  _$HighlightResultCopyWithImpl(this._value, this._then);

  final HighlightResult _value;
  // ignore: unused_field
  final $Res Function(HighlightResult) _then;

  @override
  $Res call({
    Object channelTitle = freezed,
    Object programTitle = freezed,
    Object rawTagList = freezed,
  }) {
    return _then(_value.copyWith(
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle as MatchResult,
      programTitle: programTitle == freezed
          ? _value.programTitle
          : programTitle as MatchResult,
      rawTagList: rawTagList == freezed
          ? _value.rawTagList
          : rawTagList as List<MatchResult>,
    ));
  }

  @override
  $MatchResultCopyWith<$Res> get channelTitle {
    if (_value.channelTitle == null) {
      return null;
    }
    return $MatchResultCopyWith<$Res>(_value.channelTitle, (value) {
      return _then(_value.copyWith(channelTitle: value));
    });
  }

  @override
  $MatchResultCopyWith<$Res> get programTitle {
    if (_value.programTitle == null) {
      return null;
    }
    return $MatchResultCopyWith<$Res>(_value.programTitle, (value) {
      return _then(_value.copyWith(programTitle: value));
    });
  }
}

/// @nodoc
abstract class _$HighlightResultCopyWith<$Res>
    implements $HighlightResultCopyWith<$Res> {
  factory _$HighlightResultCopyWith(
          _HighlightResult value, $Res Function(_HighlightResult) then) =
      __$HighlightResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {MatchResult channelTitle,
      MatchResult programTitle,
      @protected
      @JsonKey(name: 'tagList', defaultValue: const [])
          List<MatchResult> rawTagList});

  @override
  $MatchResultCopyWith<$Res> get channelTitle;
  @override
  $MatchResultCopyWith<$Res> get programTitle;
}

/// @nodoc
class __$HighlightResultCopyWithImpl<$Res>
    extends _$HighlightResultCopyWithImpl<$Res>
    implements _$HighlightResultCopyWith<$Res> {
  __$HighlightResultCopyWithImpl(
      _HighlightResult _value, $Res Function(_HighlightResult) _then)
      : super(_value, (v) => _then(v as _HighlightResult));

  @override
  _HighlightResult get _value => super._value as _HighlightResult;

  @override
  $Res call({
    Object channelTitle = freezed,
    Object programTitle = freezed,
    Object rawTagList = freezed,
  }) {
    return _then(_HighlightResult(
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle as MatchResult,
      programTitle: programTitle == freezed
          ? _value.programTitle
          : programTitle as MatchResult,
      rawTagList: rawTagList == freezed
          ? _value.rawTagList
          : rawTagList as List<MatchResult>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HighlightResult extends _HighlightResult {
  const _$_HighlightResult(
      {@required
          this.channelTitle,
      @required
          this.programTitle,
      @protected
      @JsonKey(name: 'tagList', defaultValue: const [])
          this.rawTagList})
      : assert(channelTitle != null),
        assert(programTitle != null),
        super._();

  factory _$_HighlightResult.fromJson(Map<String, dynamic> json) =>
      _$_$_HighlightResultFromJson(json);

  @override
  final MatchResult channelTitle;
  @override
  final MatchResult programTitle;
  @override
  @protected
  @JsonKey(name: 'tagList', defaultValue: const [])
  final List<MatchResult> rawTagList;

  @override
  String toString() {
    return 'HighlightResult(channelTitle: $channelTitle, programTitle: $programTitle, rawTagList: $rawTagList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HighlightResult &&
            (identical(other.channelTitle, channelTitle) ||
                const DeepCollectionEquality()
                    .equals(other.channelTitle, channelTitle)) &&
            (identical(other.programTitle, programTitle) ||
                const DeepCollectionEquality()
                    .equals(other.programTitle, programTitle)) &&
            (identical(other.rawTagList, rawTagList) ||
                const DeepCollectionEquality()
                    .equals(other.rawTagList, rawTagList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(channelTitle) ^
      const DeepCollectionEquality().hash(programTitle) ^
      const DeepCollectionEquality().hash(rawTagList);

  @JsonKey(ignore: true)
  @override
  _$HighlightResultCopyWith<_HighlightResult> get copyWith =>
      __$HighlightResultCopyWithImpl<_HighlightResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HighlightResultToJson(this);
  }
}

abstract class _HighlightResult extends HighlightResult {
  const _HighlightResult._() : super._();
  const factory _HighlightResult(
      {@required
          MatchResult channelTitle,
      @required
          MatchResult programTitle,
      @protected
      @JsonKey(name: 'tagList', defaultValue: const [])
          List<MatchResult> rawTagList}) = _$_HighlightResult;

  factory _HighlightResult.fromJson(Map<String, dynamic> json) =
      _$_HighlightResult.fromJson;

  @override
  MatchResult get channelTitle;
  @override
  MatchResult get programTitle;
  @override
  @protected
  @JsonKey(name: 'tagList', defaultValue: const [])
  List<MatchResult> get rawTagList;
  @override
  @JsonKey(ignore: true)
  _$HighlightResultCopyWith<_HighlightResult> get copyWith;
}

MatchResult _$MatchResultFromJson(Map<String, dynamic> json) {
  return _MatchResult.fromJson(json);
}

/// @nodoc
class _$MatchResultTearOff {
  const _$MatchResultTearOff();

// ignore: unused_element
  _MatchResult call(
      {@required
          String value,
      @required
      @protected
      @JsonKey(name: 'matchLevel')
          String rawMatchLevel,
      @required
      @protected
      @JsonKey(name: 'matchedWords')
          List<String> rawMatchedWords,
      @JsonKey(defaultValue: false)
          bool fullyHighlighted}) {
    return _MatchResult(
      value: value,
      rawMatchLevel: rawMatchLevel,
      rawMatchedWords: rawMatchedWords,
      fullyHighlighted: fullyHighlighted,
    );
  }

// ignore: unused_element
  MatchResult fromJson(Map<String, Object> json) {
    return MatchResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MatchResult = _$MatchResultTearOff();

/// @nodoc
mixin _$MatchResult {
  String get value;
  @protected
  @JsonKey(name: 'matchLevel')
  String get rawMatchLevel;
  @protected
  @JsonKey(name: 'matchedWords')
  List<String> get rawMatchedWords;
  @JsonKey(defaultValue: false)
  bool get fullyHighlighted;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MatchResultCopyWith<MatchResult> get copyWith;
}

/// @nodoc
abstract class $MatchResultCopyWith<$Res> {
  factory $MatchResultCopyWith(
          MatchResult value, $Res Function(MatchResult) then) =
      _$MatchResultCopyWithImpl<$Res>;
  $Res call(
      {String value,
      @protected @JsonKey(name: 'matchLevel') String rawMatchLevel,
      @protected @JsonKey(name: 'matchedWords') List<String> rawMatchedWords,
      @JsonKey(defaultValue: false) bool fullyHighlighted});
}

/// @nodoc
class _$MatchResultCopyWithImpl<$Res> implements $MatchResultCopyWith<$Res> {
  _$MatchResultCopyWithImpl(this._value, this._then);

  final MatchResult _value;
  // ignore: unused_field
  final $Res Function(MatchResult) _then;

  @override
  $Res call({
    Object value = freezed,
    Object rawMatchLevel = freezed,
    Object rawMatchedWords = freezed,
    Object fullyHighlighted = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      rawMatchLevel: rawMatchLevel == freezed
          ? _value.rawMatchLevel
          : rawMatchLevel as String,
      rawMatchedWords: rawMatchedWords == freezed
          ? _value.rawMatchedWords
          : rawMatchedWords as List<String>,
      fullyHighlighted: fullyHighlighted == freezed
          ? _value.fullyHighlighted
          : fullyHighlighted as bool,
    ));
  }
}

/// @nodoc
abstract class _$MatchResultCopyWith<$Res>
    implements $MatchResultCopyWith<$Res> {
  factory _$MatchResultCopyWith(
          _MatchResult value, $Res Function(_MatchResult) then) =
      __$MatchResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value,
      @protected @JsonKey(name: 'matchLevel') String rawMatchLevel,
      @protected @JsonKey(name: 'matchedWords') List<String> rawMatchedWords,
      @JsonKey(defaultValue: false) bool fullyHighlighted});
}

/// @nodoc
class __$MatchResultCopyWithImpl<$Res> extends _$MatchResultCopyWithImpl<$Res>
    implements _$MatchResultCopyWith<$Res> {
  __$MatchResultCopyWithImpl(
      _MatchResult _value, $Res Function(_MatchResult) _then)
      : super(_value, (v) => _then(v as _MatchResult));

  @override
  _MatchResult get _value => super._value as _MatchResult;

  @override
  $Res call({
    Object value = freezed,
    Object rawMatchLevel = freezed,
    Object rawMatchedWords = freezed,
    Object fullyHighlighted = freezed,
  }) {
    return _then(_MatchResult(
      value: value == freezed ? _value.value : value as String,
      rawMatchLevel: rawMatchLevel == freezed
          ? _value.rawMatchLevel
          : rawMatchLevel as String,
      rawMatchedWords: rawMatchedWords == freezed
          ? _value.rawMatchedWords
          : rawMatchedWords as List<String>,
      fullyHighlighted: fullyHighlighted == freezed
          ? _value.fullyHighlighted
          : fullyHighlighted as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MatchResult extends _MatchResult {
  const _$_MatchResult(
      {@required this.value,
      @required @protected @JsonKey(name: 'matchLevel') this.rawMatchLevel,
      @required @protected @JsonKey(name: 'matchedWords') this.rawMatchedWords,
      @JsonKey(defaultValue: false) this.fullyHighlighted})
      : assert(value != null),
        assert(rawMatchLevel != null),
        assert(rawMatchedWords != null),
        super._();

  factory _$_MatchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_MatchResultFromJson(json);

  @override
  final String value;
  @override
  @protected
  @JsonKey(name: 'matchLevel')
  final String rawMatchLevel;
  @override
  @protected
  @JsonKey(name: 'matchedWords')
  final List<String> rawMatchedWords;
  @override
  @JsonKey(defaultValue: false)
  final bool fullyHighlighted;

  @override
  String toString() {
    return 'MatchResult(value: $value, rawMatchLevel: $rawMatchLevel, rawMatchedWords: $rawMatchedWords, fullyHighlighted: $fullyHighlighted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MatchResult &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.rawMatchLevel, rawMatchLevel) ||
                const DeepCollectionEquality()
                    .equals(other.rawMatchLevel, rawMatchLevel)) &&
            (identical(other.rawMatchedWords, rawMatchedWords) ||
                const DeepCollectionEquality()
                    .equals(other.rawMatchedWords, rawMatchedWords)) &&
            (identical(other.fullyHighlighted, fullyHighlighted) ||
                const DeepCollectionEquality()
                    .equals(other.fullyHighlighted, fullyHighlighted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(rawMatchLevel) ^
      const DeepCollectionEquality().hash(rawMatchedWords) ^
      const DeepCollectionEquality().hash(fullyHighlighted);

  @JsonKey(ignore: true)
  @override
  _$MatchResultCopyWith<_MatchResult> get copyWith =>
      __$MatchResultCopyWithImpl<_MatchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MatchResultToJson(this);
  }
}

abstract class _MatchResult extends MatchResult {
  const _MatchResult._() : super._();
  const factory _MatchResult(
      {@required
          String value,
      @required
      @protected
      @JsonKey(name: 'matchLevel')
          String rawMatchLevel,
      @required
      @protected
      @JsonKey(name: 'matchedWords')
          List<String> rawMatchedWords,
      @JsonKey(defaultValue: false)
          bool fullyHighlighted}) = _$_MatchResult;

  factory _MatchResult.fromJson(Map<String, dynamic> json) =
      _$_MatchResult.fromJson;

  @override
  String get value;
  @override
  @protected
  @JsonKey(name: 'matchLevel')
  String get rawMatchLevel;
  @override
  @protected
  @JsonKey(name: 'matchedWords')
  List<String> get rawMatchedWords;
  @override
  @JsonKey(defaultValue: false)
  bool get fullyHighlighted;
  @override
  @JsonKey(ignore: true)
  _$MatchResultCopyWith<_MatchResult> get copyWith;
}
