// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ModelSearchTearOff {
  const _$ModelSearchTearOff();

// ignore: unused_element
  _ModelSearch call(
      {@protected List<SuggestItem> rawSuggestList = const [],
      int textLen = 0,
      SearchResult searchResult = const SearchResult.noDisplay()}) {
    return _ModelSearch(
      rawSuggestList: rawSuggestList,
      textLen: textLen,
      searchResult: searchResult,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelSearch = _$ModelSearchTearOff();

/// @nodoc
mixin _$ModelSearch {
  @protected
  List<SuggestItem> get rawSuggestList;
  int get textLen;
  SearchResult get searchResult;

  @JsonKey(ignore: true)
  $ModelSearchCopyWith<ModelSearch> get copyWith;
}

/// @nodoc
abstract class $ModelSearchCopyWith<$Res> {
  factory $ModelSearchCopyWith(
          ModelSearch value, $Res Function(ModelSearch) then) =
      _$ModelSearchCopyWithImpl<$Res>;
  $Res call(
      {@protected List<SuggestItem> rawSuggestList,
      int textLen,
      SearchResult searchResult});

  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class _$ModelSearchCopyWithImpl<$Res> implements $ModelSearchCopyWith<$Res> {
  _$ModelSearchCopyWithImpl(this._value, this._then);

  final ModelSearch _value;
  // ignore: unused_field
  final $Res Function(ModelSearch) _then;

  @override
  $Res call({
    Object rawSuggestList = freezed,
    Object textLen = freezed,
    Object searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      rawSuggestList: rawSuggestList == freezed
          ? _value.rawSuggestList
          : rawSuggestList as List<SuggestItem>,
      textLen: textLen == freezed ? _value.textLen : textLen as int,
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult as SearchResult,
    ));
  }

  @override
  $SearchResultCopyWith<$Res> get searchResult {
    if (_value.searchResult == null) {
      return null;
    }
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc
abstract class _$ModelSearchCopyWith<$Res>
    implements $ModelSearchCopyWith<$Res> {
  factory _$ModelSearchCopyWith(
          _ModelSearch value, $Res Function(_ModelSearch) then) =
      __$ModelSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {@protected List<SuggestItem> rawSuggestList,
      int textLen,
      SearchResult searchResult});

  @override
  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$ModelSearchCopyWithImpl<$Res> extends _$ModelSearchCopyWithImpl<$Res>
    implements _$ModelSearchCopyWith<$Res> {
  __$ModelSearchCopyWithImpl(
      _ModelSearch _value, $Res Function(_ModelSearch) _then)
      : super(_value, (v) => _then(v as _ModelSearch));

  @override
  _ModelSearch get _value => super._value as _ModelSearch;

  @override
  $Res call({
    Object rawSuggestList = freezed,
    Object textLen = freezed,
    Object searchResult = freezed,
  }) {
    return _then(_ModelSearch(
      rawSuggestList: rawSuggestList == freezed
          ? _value.rawSuggestList
          : rawSuggestList as List<SuggestItem>,
      textLen: textLen == freezed ? _value.textLen : textLen as int,
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult as SearchResult,
    ));
  }
}

/// @nodoc
class _$_ModelSearch extends _ModelSearch {
  const _$_ModelSearch(
      {@protected this.rawSuggestList = const [],
      this.textLen = 0,
      this.searchResult = const SearchResult.noDisplay()})
      : assert(rawSuggestList != null),
        assert(textLen != null),
        assert(searchResult != null),
        assert(rawSuggestList.length <= 20),
        super._();

  @JsonKey(defaultValue: const [])
  @override
  @protected
  final List<SuggestItem> rawSuggestList;
  @JsonKey(defaultValue: 0)
  @override
  final int textLen;
  @JsonKey(defaultValue: const SearchResult.noDisplay())
  @override
  final SearchResult searchResult;

  @override
  String toString() {
    return 'ModelSearch(rawSuggestList: $rawSuggestList, textLen: $textLen, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelSearch &&
            (identical(other.rawSuggestList, rawSuggestList) ||
                const DeepCollectionEquality()
                    .equals(other.rawSuggestList, rawSuggestList)) &&
            (identical(other.textLen, textLen) ||
                const DeepCollectionEquality()
                    .equals(other.textLen, textLen)) &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawSuggestList) ^
      const DeepCollectionEquality().hash(textLen) ^
      const DeepCollectionEquality().hash(searchResult);

  @JsonKey(ignore: true)
  @override
  _$ModelSearchCopyWith<_ModelSearch> get copyWith =>
      __$ModelSearchCopyWithImpl<_ModelSearch>(this, _$identity);
}

abstract class _ModelSearch extends ModelSearch {
  const _ModelSearch._() : super._();
  const factory _ModelSearch(
      {@protected List<SuggestItem> rawSuggestList,
      int textLen,
      SearchResult searchResult}) = _$_ModelSearch;

  @override
  @protected
  List<SuggestItem> get rawSuggestList;
  @override
  int get textLen;
  @override
  SearchResult get searchResult;
  @override
  @JsonKey(ignore: true)
  _$ModelSearchCopyWith<_ModelSearch> get copyWith;
}

/// @nodoc
class _$SearchResultTearOff {
  const _$SearchResultTearOff();

// ignore: unused_element
  _SearchResultNoDisplay noDisplay() {
    return const _SearchResultNoDisplay();
  }

// ignore: unused_element
  SearchResultSuccess success(SearchResultContent content) {
    return SearchResultSuccess(
      content,
    );
  }

// ignore: unused_element
  _SearchResultLoading loading() {
    return const _SearchResultLoading();
  }

// ignore: unused_element
  _SearchResultError error(ErrorMsgCommon msg) {
    return _SearchResultError(
      msg,
    );
  }

// ignore: unused_element
  _SearchResultCanceled canceled() {
    return const _SearchResultCanceled();
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResult = _$SearchResultTearOff();

/// @nodoc
mixin _$SearchResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res> implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  final SearchResult _value;
  // ignore: unused_field
  final $Res Function(SearchResult) _then;
}

/// @nodoc
abstract class _$SearchResultNoDisplayCopyWith<$Res> {
  factory _$SearchResultNoDisplayCopyWith(_SearchResultNoDisplay value,
          $Res Function(_SearchResultNoDisplay) then) =
      __$SearchResultNoDisplayCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchResultNoDisplayCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultNoDisplayCopyWith<$Res> {
  __$SearchResultNoDisplayCopyWithImpl(_SearchResultNoDisplay _value,
      $Res Function(_SearchResultNoDisplay) _then)
      : super(_value, (v) => _then(v as _SearchResultNoDisplay));

  @override
  _SearchResultNoDisplay get _value => super._value as _SearchResultNoDisplay;
}

/// @nodoc
class _$_SearchResultNoDisplay implements _SearchResultNoDisplay {
  const _$_SearchResultNoDisplay();

  @override
  String toString() {
    return 'SearchResult.noDisplay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchResultNoDisplay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return noDisplay();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noDisplay != null) {
      return noDisplay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return noDisplay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noDisplay != null) {
      return noDisplay(this);
    }
    return orElse();
  }
}

abstract class _SearchResultNoDisplay implements SearchResult {
  const factory _SearchResultNoDisplay() = _$_SearchResultNoDisplay;
}

/// @nodoc
abstract class $SearchResultSuccessCopyWith<$Res> {
  factory $SearchResultSuccessCopyWith(
          SearchResultSuccess value, $Res Function(SearchResultSuccess) then) =
      _$SearchResultSuccessCopyWithImpl<$Res>;
  $Res call({SearchResultContent content});

  $SearchResultContentCopyWith<$Res> get content;
}

/// @nodoc
class _$SearchResultSuccessCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultSuccessCopyWith<$Res> {
  _$SearchResultSuccessCopyWithImpl(
      SearchResultSuccess _value, $Res Function(SearchResultSuccess) _then)
      : super(_value, (v) => _then(v as SearchResultSuccess));

  @override
  SearchResultSuccess get _value => super._value as SearchResultSuccess;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(SearchResultSuccess(
      content == freezed ? _value.content : content as SearchResultContent,
    ));
  }

  @override
  $SearchResultContentCopyWith<$Res> get content {
    if (_value.content == null) {
      return null;
    }
    return $SearchResultContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
class _$SearchResultSuccess implements SearchResultSuccess {
  const _$SearchResultSuccess(this.content) : assert(content != null);

  @override
  final SearchResultContent content;

  @override
  String toString() {
    return 'SearchResult.success(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchResultSuccess &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  $SearchResultSuccessCopyWith<SearchResultSuccess> get copyWith =>
      _$SearchResultSuccessCopyWithImpl<SearchResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return success(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchResultSuccess implements SearchResult {
  const factory SearchResultSuccess(SearchResultContent content) =
      _$SearchResultSuccess;

  SearchResultContent get content;
  @JsonKey(ignore: true)
  $SearchResultSuccessCopyWith<SearchResultSuccess> get copyWith;
}

/// @nodoc
abstract class _$SearchResultLoadingCopyWith<$Res> {
  factory _$SearchResultLoadingCopyWith(_SearchResultLoading value,
          $Res Function(_SearchResultLoading) then) =
      __$SearchResultLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchResultLoadingCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultLoadingCopyWith<$Res> {
  __$SearchResultLoadingCopyWithImpl(
      _SearchResultLoading _value, $Res Function(_SearchResultLoading) _then)
      : super(_value, (v) => _then(v as _SearchResultLoading));

  @override
  _SearchResultLoading get _value => super._value as _SearchResultLoading;
}

/// @nodoc
class _$_SearchResultLoading implements _SearchResultLoading {
  const _$_SearchResultLoading();

  @override
  String toString() {
    return 'SearchResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchResultLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchResultLoading implements SearchResult {
  const factory _SearchResultLoading() = _$_SearchResultLoading;
}

/// @nodoc
abstract class _$SearchResultErrorCopyWith<$Res> {
  factory _$SearchResultErrorCopyWith(
          _SearchResultError value, $Res Function(_SearchResultError) then) =
      __$SearchResultErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon msg});

  $ErrorMsgCommonCopyWith<$Res> get msg;
}

/// @nodoc
class __$SearchResultErrorCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultErrorCopyWith<$Res> {
  __$SearchResultErrorCopyWithImpl(
      _SearchResultError _value, $Res Function(_SearchResultError) _then)
      : super(_value, (v) => _then(v as _SearchResultError));

  @override
  _SearchResultError get _value => super._value as _SearchResultError;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(_SearchResultError(
      msg == freezed ? _value.msg : msg as ErrorMsgCommon,
    ));
  }

  @override
  $ErrorMsgCommonCopyWith<$Res> get msg {
    if (_value.msg == null) {
      return null;
    }
    return $ErrorMsgCommonCopyWith<$Res>(_value.msg, (value) {
      return _then(_value.copyWith(msg: value));
    });
  }
}

/// @nodoc
class _$_SearchResultError implements _SearchResultError {
  const _$_SearchResultError(this.msg) : assert(msg != null);

  @override
  final ErrorMsgCommon msg;

  @override
  String toString() {
    return 'SearchResult.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$SearchResultErrorCopyWith<_SearchResultError> get copyWith =>
      __$SearchResultErrorCopyWithImpl<_SearchResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchResultError implements SearchResult {
  const factory _SearchResultError(ErrorMsgCommon msg) = _$_SearchResultError;

  ErrorMsgCommon get msg;
  @JsonKey(ignore: true)
  _$SearchResultErrorCopyWith<_SearchResultError> get copyWith;
}

/// @nodoc
abstract class _$SearchResultCanceledCopyWith<$Res> {
  factory _$SearchResultCanceledCopyWith(_SearchResultCanceled value,
          $Res Function(_SearchResultCanceled) then) =
      __$SearchResultCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchResultCanceledCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCanceledCopyWith<$Res> {
  __$SearchResultCanceledCopyWithImpl(
      _SearchResultCanceled _value, $Res Function(_SearchResultCanceled) _then)
      : super(_value, (v) => _then(v as _SearchResultCanceled));

  @override
  _SearchResultCanceled get _value => super._value as _SearchResultCanceled;
}

/// @nodoc
class _$_SearchResultCanceled implements _SearchResultCanceled {
  const _$_SearchResultCanceled();

  @override
  String toString() {
    return 'SearchResult.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchResultCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noDisplay(),
    @required TResult success(SearchResultContent content),
    @required TResult loading(),
    @required TResult error(ErrorMsgCommon msg),
    @required TResult canceled(),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noDisplay(),
    TResult success(SearchResultContent content),
    TResult loading(),
    TResult error(ErrorMsgCommon msg),
    TResult canceled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noDisplay(_SearchResultNoDisplay value),
    @required TResult success(SearchResultSuccess value),
    @required TResult loading(_SearchResultLoading value),
    @required TResult error(_SearchResultError value),
    @required TResult canceled(_SearchResultCanceled value),
  }) {
    assert(noDisplay != null);
    assert(success != null);
    assert(loading != null);
    assert(error != null);
    assert(canceled != null);
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noDisplay(_SearchResultNoDisplay value),
    TResult success(SearchResultSuccess value),
    TResult loading(_SearchResultLoading value),
    TResult error(_SearchResultError value),
    TResult canceled(_SearchResultCanceled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class _SearchResultCanceled implements SearchResult {
  const factory _SearchResultCanceled() = _$_SearchResultCanceled;
}

/// @nodoc
class _$SearchResultContentTearOff {
  const _$SearchResultContentTearOff();

// ignore: unused_element
  _SearchResultContent call(
      {@required bool searchByTag,
      @required @protected List<Hit> hits,
      @protected List<ChannelData> channelDataList = const []}) {
    return _SearchResultContent(
      searchByTag: searchByTag,
      hits: hits,
      channelDataList: channelDataList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResultContent = _$SearchResultContentTearOff();

/// @nodoc
mixin _$SearchResultContent {
  bool get searchByTag;
  @protected
  List<Hit> get hits;
  @protected
  List<ChannelData> get channelDataList;

  @JsonKey(ignore: true)
  $SearchResultContentCopyWith<SearchResultContent> get copyWith;
}

/// @nodoc
abstract class $SearchResultContentCopyWith<$Res> {
  factory $SearchResultContentCopyWith(
          SearchResultContent value, $Res Function(SearchResultContent) then) =
      _$SearchResultContentCopyWithImpl<$Res>;
  $Res call(
      {bool searchByTag,
      @protected List<Hit> hits,
      @protected List<ChannelData> channelDataList});
}

/// @nodoc
class _$SearchResultContentCopyWithImpl<$Res>
    implements $SearchResultContentCopyWith<$Res> {
  _$SearchResultContentCopyWithImpl(this._value, this._then);

  final SearchResultContent _value;
  // ignore: unused_field
  final $Res Function(SearchResultContent) _then;

  @override
  $Res call({
    Object searchByTag = freezed,
    Object hits = freezed,
    Object channelDataList = freezed,
  }) {
    return _then(_value.copyWith(
      searchByTag:
          searchByTag == freezed ? _value.searchByTag : searchByTag as bool,
      hits: hits == freezed ? _value.hits : hits as List<Hit>,
      channelDataList: channelDataList == freezed
          ? _value.channelDataList
          : channelDataList as List<ChannelData>,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultContentCopyWith<$Res>
    implements $SearchResultContentCopyWith<$Res> {
  factory _$SearchResultContentCopyWith(_SearchResultContent value,
          $Res Function(_SearchResultContent) then) =
      __$SearchResultContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool searchByTag,
      @protected List<Hit> hits,
      @protected List<ChannelData> channelDataList});
}

/// @nodoc
class __$SearchResultContentCopyWithImpl<$Res>
    extends _$SearchResultContentCopyWithImpl<$Res>
    implements _$SearchResultContentCopyWith<$Res> {
  __$SearchResultContentCopyWithImpl(
      _SearchResultContent _value, $Res Function(_SearchResultContent) _then)
      : super(_value, (v) => _then(v as _SearchResultContent));

  @override
  _SearchResultContent get _value => super._value as _SearchResultContent;

  @override
  $Res call({
    Object searchByTag = freezed,
    Object hits = freezed,
    Object channelDataList = freezed,
  }) {
    return _then(_SearchResultContent(
      searchByTag:
          searchByTag == freezed ? _value.searchByTag : searchByTag as bool,
      hits: hits == freezed ? _value.hits : hits as List<Hit>,
      channelDataList: channelDataList == freezed
          ? _value.channelDataList
          : channelDataList as List<ChannelData>,
    ));
  }
}

/// @nodoc
class _$_SearchResultContent extends _SearchResultContent {
  const _$_SearchResultContent(
      {@required this.searchByTag,
      @required @protected this.hits,
      @protected this.channelDataList = const []})
      : assert(searchByTag != null),
        assert(hits != null),
        assert(channelDataList != null),
        super._();

  @override
  final bool searchByTag;
  @override
  @protected
  final List<Hit> hits;
  @JsonKey(defaultValue: const [])
  @override
  @protected
  final List<ChannelData> channelDataList;

  @override
  String toString() {
    return 'SearchResultContent(searchByTag: $searchByTag, hits: $hits, channelDataList: $channelDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultContent &&
            (identical(other.searchByTag, searchByTag) ||
                const DeepCollectionEquality()
                    .equals(other.searchByTag, searchByTag)) &&
            (identical(other.hits, hits) ||
                const DeepCollectionEquality().equals(other.hits, hits)) &&
            (identical(other.channelDataList, channelDataList) ||
                const DeepCollectionEquality()
                    .equals(other.channelDataList, channelDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchByTag) ^
      const DeepCollectionEquality().hash(hits) ^
      const DeepCollectionEquality().hash(channelDataList);

  @JsonKey(ignore: true)
  @override
  _$SearchResultContentCopyWith<_SearchResultContent> get copyWith =>
      __$SearchResultContentCopyWithImpl<_SearchResultContent>(
          this, _$identity);
}

abstract class _SearchResultContent extends SearchResultContent {
  const _SearchResultContent._() : super._();
  const factory _SearchResultContent(
      {@required bool searchByTag,
      @required @protected List<Hit> hits,
      @protected List<ChannelData> channelDataList}) = _$_SearchResultContent;

  @override
  bool get searchByTag;
  @override
  @protected
  List<Hit> get hits;
  @override
  @protected
  List<ChannelData> get channelDataList;
  @override
  @JsonKey(ignore: true)
  _$SearchResultContentCopyWith<_SearchResultContent> get copyWith;
}

/// @nodoc
class _$SearchResultItemTearOff {
  const _$SearchResultItemTearOff();

// ignore: unused_element
  _SearchResultItem call({@required Hit hit, @required ItemType type}) {
    return _SearchResultItem(
      hit: hit,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResultItem = _$SearchResultItemTearOff();

/// @nodoc
mixin _$SearchResultItem {
  Hit get hit;
  ItemType get type;

  @JsonKey(ignore: true)
  $SearchResultItemCopyWith<SearchResultItem> get copyWith;
}

/// @nodoc
abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res>;
  $Res call({Hit hit, ItemType type});

  $HitCopyWith<$Res> get hit;
  $ItemTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  final SearchResultItem _value;
  // ignore: unused_field
  final $Res Function(SearchResultItem) _then;

  @override
  $Res call({
    Object hit = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      hit: hit == freezed ? _value.hit : hit as Hit,
      type: type == freezed ? _value.type : type as ItemType,
    ));
  }

  @override
  $HitCopyWith<$Res> get hit {
    if (_value.hit == null) {
      return null;
    }
    return $HitCopyWith<$Res>(_value.hit, (value) {
      return _then(_value.copyWith(hit: value));
    });
  }

  @override
  $ItemTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $ItemTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$SearchResultItemCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$SearchResultItemCopyWith(
          _SearchResultItem value, $Res Function(_SearchResultItem) then) =
      __$SearchResultItemCopyWithImpl<$Res>;
  @override
  $Res call({Hit hit, ItemType type});

  @override
  $HitCopyWith<$Res> get hit;
  @override
  $ItemTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$SearchResultItemCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res>
    implements _$SearchResultItemCopyWith<$Res> {
  __$SearchResultItemCopyWithImpl(
      _SearchResultItem _value, $Res Function(_SearchResultItem) _then)
      : super(_value, (v) => _then(v as _SearchResultItem));

  @override
  _SearchResultItem get _value => super._value as _SearchResultItem;

  @override
  $Res call({
    Object hit = freezed,
    Object type = freezed,
  }) {
    return _then(_SearchResultItem(
      hit: hit == freezed ? _value.hit : hit as Hit,
      type: type == freezed ? _value.type : type as ItemType,
    ));
  }
}

/// @nodoc
class _$_SearchResultItem implements _SearchResultItem {
  const _$_SearchResultItem({@required this.hit, @required this.type})
      : assert(hit != null),
        assert(type != null);

  @override
  final Hit hit;
  @override
  final ItemType type;

  @override
  String toString() {
    return 'SearchResultItem(hit: $hit, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultItem &&
            (identical(other.hit, hit) ||
                const DeepCollectionEquality().equals(other.hit, hit)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hit) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith =>
      __$SearchResultItemCopyWithImpl<_SearchResultItem>(this, _$identity);
}

abstract class _SearchResultItem implements SearchResultItem {
  const factory _SearchResultItem(
      {@required Hit hit, @required ItemType type}) = _$_SearchResultItem;

  @override
  Hit get hit;
  @override
  ItemType get type;
  @override
  @JsonKey(ignore: true)
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith;
}

/// @nodoc
class _$SuggestItemTearOff {
  const _$SuggestItemTearOff();

// ignore: unused_element
  _SuggestItem call({@required ItemType type, @required SuggestData data}) {
    return _SuggestItem(
      type: type,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SuggestItem = _$SuggestItemTearOff();

/// @nodoc
mixin _$SuggestItem {
  ItemType get type;
  SuggestData get data;

  @JsonKey(ignore: true)
  $SuggestItemCopyWith<SuggestItem> get copyWith;
}

/// @nodoc
abstract class $SuggestItemCopyWith<$Res> {
  factory $SuggestItemCopyWith(
          SuggestItem value, $Res Function(SuggestItem) then) =
      _$SuggestItemCopyWithImpl<$Res>;
  $Res call({ItemType type, SuggestData data});

  $ItemTypeCopyWith<$Res> get type;
  $SuggestDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SuggestItemCopyWithImpl<$Res> implements $SuggestItemCopyWith<$Res> {
  _$SuggestItemCopyWithImpl(this._value, this._then);

  final SuggestItem _value;
  // ignore: unused_field
  final $Res Function(SuggestItem) _then;

  @override
  $Res call({
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as ItemType,
      data: data == freezed ? _value.data : data as SuggestData,
    ));
  }

  @override
  $ItemTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $ItemTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  $SuggestDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $SuggestDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SuggestItemCopyWith<$Res>
    implements $SuggestItemCopyWith<$Res> {
  factory _$SuggestItemCopyWith(
          _SuggestItem value, $Res Function(_SuggestItem) then) =
      __$SuggestItemCopyWithImpl<$Res>;
  @override
  $Res call({ItemType type, SuggestData data});

  @override
  $ItemTypeCopyWith<$Res> get type;
  @override
  $SuggestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$SuggestItemCopyWithImpl<$Res> extends _$SuggestItemCopyWithImpl<$Res>
    implements _$SuggestItemCopyWith<$Res> {
  __$SuggestItemCopyWithImpl(
      _SuggestItem _value, $Res Function(_SuggestItem) _then)
      : super(_value, (v) => _then(v as _SuggestItem));

  @override
  _SuggestItem get _value => super._value as _SuggestItem;

  @override
  $Res call({
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_SuggestItem(
      type: type == freezed ? _value.type : type as ItemType,
      data: data == freezed ? _value.data : data as SuggestData,
    ));
  }
}

/// @nodoc
class _$_SuggestItem implements _SuggestItem {
  const _$_SuggestItem({@required this.type, @required this.data})
      : assert(type != null),
        assert(data != null);

  @override
  final ItemType type;
  @override
  final SuggestData data;

  @override
  String toString() {
    return 'SuggestItem(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuggestItem &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SuggestItemCopyWith<_SuggestItem> get copyWith =>
      __$SuggestItemCopyWithImpl<_SuggestItem>(this, _$identity);
}

abstract class _SuggestItem implements SuggestItem {
  const factory _SuggestItem(
      {@required ItemType type, @required SuggestData data}) = _$_SuggestItem;

  @override
  ItemType get type;
  @override
  SuggestData get data;
  @override
  @JsonKey(ignore: true)
  _$SuggestItemCopyWith<_SuggestItem> get copyWith;
}

/// @nodoc
class _$SuggestDataTearOff {
  const _$SuggestDataTearOff();

// ignore: unused_element
  _SuggestData call(
      {@required
          String value,
      @required
      @protected
      @JsonKey(name: 'matchedWords')
          List<String> rawMatchedWords}) {
    return _SuggestData(
      value: value,
      rawMatchedWords: rawMatchedWords,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SuggestData = _$SuggestDataTearOff();

/// @nodoc
mixin _$SuggestData {
  String get value;
  @protected
  @JsonKey(name: 'matchedWords')
  List<String> get rawMatchedWords;

  @JsonKey(ignore: true)
  $SuggestDataCopyWith<SuggestData> get copyWith;
}

/// @nodoc
abstract class $SuggestDataCopyWith<$Res> {
  factory $SuggestDataCopyWith(
          SuggestData value, $Res Function(SuggestData) then) =
      _$SuggestDataCopyWithImpl<$Res>;
  $Res call(
      {String value,
      @protected @JsonKey(name: 'matchedWords') List<String> rawMatchedWords});
}

/// @nodoc
class _$SuggestDataCopyWithImpl<$Res> implements $SuggestDataCopyWith<$Res> {
  _$SuggestDataCopyWithImpl(this._value, this._then);

  final SuggestData _value;
  // ignore: unused_field
  final $Res Function(SuggestData) _then;

  @override
  $Res call({
    Object value = freezed,
    Object rawMatchedWords = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      rawMatchedWords: rawMatchedWords == freezed
          ? _value.rawMatchedWords
          : rawMatchedWords as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SuggestDataCopyWith<$Res>
    implements $SuggestDataCopyWith<$Res> {
  factory _$SuggestDataCopyWith(
          _SuggestData value, $Res Function(_SuggestData) then) =
      __$SuggestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value,
      @protected @JsonKey(name: 'matchedWords') List<String> rawMatchedWords});
}

/// @nodoc
class __$SuggestDataCopyWithImpl<$Res> extends _$SuggestDataCopyWithImpl<$Res>
    implements _$SuggestDataCopyWith<$Res> {
  __$SuggestDataCopyWithImpl(
      _SuggestData _value, $Res Function(_SuggestData) _then)
      : super(_value, (v) => _then(v as _SuggestData));

  @override
  _SuggestData get _value => super._value as _SuggestData;

  @override
  $Res call({
    Object value = freezed,
    Object rawMatchedWords = freezed,
  }) {
    return _then(_SuggestData(
      value: value == freezed ? _value.value : value as String,
      rawMatchedWords: rawMatchedWords == freezed
          ? _value.rawMatchedWords
          : rawMatchedWords as List<String>,
    ));
  }
}

/// @nodoc
class _$_SuggestData extends _SuggestData {
  const _$_SuggestData(
      {@required this.value,
      @required @protected @JsonKey(name: 'matchedWords') this.rawMatchedWords})
      : assert(value != null),
        assert(rawMatchedWords != null),
        super._();

  @override
  final String value;
  @override
  @protected
  @JsonKey(name: 'matchedWords')
  final List<String> rawMatchedWords;

  @override
  String toString() {
    return 'SuggestData(value: $value, rawMatchedWords: $rawMatchedWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuggestData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.rawMatchedWords, rawMatchedWords) ||
                const DeepCollectionEquality()
                    .equals(other.rawMatchedWords, rawMatchedWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(rawMatchedWords);

  @JsonKey(ignore: true)
  @override
  _$SuggestDataCopyWith<_SuggestData> get copyWith =>
      __$SuggestDataCopyWithImpl<_SuggestData>(this, _$identity);
}

abstract class _SuggestData extends SuggestData {
  const _SuggestData._() : super._();
  const factory _SuggestData(
      {@required
          String value,
      @required
      @protected
      @JsonKey(name: 'matchedWords')
          List<String> rawMatchedWords}) = _$_SuggestData;

  @override
  String get value;
  @override
  @protected
  @JsonKey(name: 'matchedWords')
  List<String> get rawMatchedWords;
  @override
  @JsonKey(ignore: true)
  _$SuggestDataCopyWith<_SuggestData> get copyWith;
}

/// @nodoc
class _$ItemTypeTearOff {
  const _$ItemTypeTearOff();

// ignore: unused_element
  _TypeTag tag() {
    return const _TypeTag();
  }

// ignore: unused_element
  _TypeChannelTitle channelTitle() {
    return const _TypeChannelTitle();
  }

// ignore: unused_element
  _TypeProgramTitle programTitle() {
    return const _TypeProgramTitle();
  }
}

/// @nodoc
// ignore: unused_element
const $ItemType = _$ItemTypeTearOff();

/// @nodoc
mixin _$ItemType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tag(),
    @required TResult channelTitle(),
    @required TResult programTitle(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tag(),
    TResult channelTitle(),
    TResult programTitle(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tag(_TypeTag value),
    @required TResult channelTitle(_TypeChannelTitle value),
    @required TResult programTitle(_TypeProgramTitle value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tag(_TypeTag value),
    TResult channelTitle(_TypeChannelTitle value),
    TResult programTitle(_TypeProgramTitle value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ItemTypeCopyWith<$Res> {
  factory $ItemTypeCopyWith(ItemType value, $Res Function(ItemType) then) =
      _$ItemTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemTypeCopyWithImpl<$Res> implements $ItemTypeCopyWith<$Res> {
  _$ItemTypeCopyWithImpl(this._value, this._then);

  final ItemType _value;
  // ignore: unused_field
  final $Res Function(ItemType) _then;
}

/// @nodoc
abstract class _$TypeTagCopyWith<$Res> {
  factory _$TypeTagCopyWith(_TypeTag value, $Res Function(_TypeTag) then) =
      __$TypeTagCopyWithImpl<$Res>;
}

/// @nodoc
class __$TypeTagCopyWithImpl<$Res> extends _$ItemTypeCopyWithImpl<$Res>
    implements _$TypeTagCopyWith<$Res> {
  __$TypeTagCopyWithImpl(_TypeTag _value, $Res Function(_TypeTag) _then)
      : super(_value, (v) => _then(v as _TypeTag));

  @override
  _TypeTag get _value => super._value as _TypeTag;
}

/// @nodoc
class _$_TypeTag implements _TypeTag {
  const _$_TypeTag();

  @override
  String toString() {
    return 'ItemType.tag()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TypeTag);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tag(),
    @required TResult channelTitle(),
    @required TResult programTitle(),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return tag();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tag(),
    TResult channelTitle(),
    TResult programTitle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tag != null) {
      return tag();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tag(_TypeTag value),
    @required TResult channelTitle(_TypeChannelTitle value),
    @required TResult programTitle(_TypeProgramTitle value),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return tag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tag(_TypeTag value),
    TResult channelTitle(_TypeChannelTitle value),
    TResult programTitle(_TypeProgramTitle value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tag != null) {
      return tag(this);
    }
    return orElse();
  }
}

abstract class _TypeTag implements ItemType {
  const factory _TypeTag() = _$_TypeTag;
}

/// @nodoc
abstract class _$TypeChannelTitleCopyWith<$Res> {
  factory _$TypeChannelTitleCopyWith(
          _TypeChannelTitle value, $Res Function(_TypeChannelTitle) then) =
      __$TypeChannelTitleCopyWithImpl<$Res>;
}

/// @nodoc
class __$TypeChannelTitleCopyWithImpl<$Res> extends _$ItemTypeCopyWithImpl<$Res>
    implements _$TypeChannelTitleCopyWith<$Res> {
  __$TypeChannelTitleCopyWithImpl(
      _TypeChannelTitle _value, $Res Function(_TypeChannelTitle) _then)
      : super(_value, (v) => _then(v as _TypeChannelTitle));

  @override
  _TypeChannelTitle get _value => super._value as _TypeChannelTitle;
}

/// @nodoc
class _$_TypeChannelTitle implements _TypeChannelTitle {
  const _$_TypeChannelTitle();

  @override
  String toString() {
    return 'ItemType.channelTitle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TypeChannelTitle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tag(),
    @required TResult channelTitle(),
    @required TResult programTitle(),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return channelTitle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tag(),
    TResult channelTitle(),
    TResult programTitle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (channelTitle != null) {
      return channelTitle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tag(_TypeTag value),
    @required TResult channelTitle(_TypeChannelTitle value),
    @required TResult programTitle(_TypeProgramTitle value),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return channelTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tag(_TypeTag value),
    TResult channelTitle(_TypeChannelTitle value),
    TResult programTitle(_TypeProgramTitle value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (channelTitle != null) {
      return channelTitle(this);
    }
    return orElse();
  }
}

abstract class _TypeChannelTitle implements ItemType {
  const factory _TypeChannelTitle() = _$_TypeChannelTitle;
}

/// @nodoc
abstract class _$TypeProgramTitleCopyWith<$Res> {
  factory _$TypeProgramTitleCopyWith(
          _TypeProgramTitle value, $Res Function(_TypeProgramTitle) then) =
      __$TypeProgramTitleCopyWithImpl<$Res>;
}

/// @nodoc
class __$TypeProgramTitleCopyWithImpl<$Res> extends _$ItemTypeCopyWithImpl<$Res>
    implements _$TypeProgramTitleCopyWith<$Res> {
  __$TypeProgramTitleCopyWithImpl(
      _TypeProgramTitle _value, $Res Function(_TypeProgramTitle) _then)
      : super(_value, (v) => _then(v as _TypeProgramTitle));

  @override
  _TypeProgramTitle get _value => super._value as _TypeProgramTitle;
}

/// @nodoc
class _$_TypeProgramTitle implements _TypeProgramTitle {
  const _$_TypeProgramTitle();

  @override
  String toString() {
    return 'ItemType.programTitle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TypeProgramTitle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult tag(),
    @required TResult channelTitle(),
    @required TResult programTitle(),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return programTitle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult tag(),
    TResult channelTitle(),
    TResult programTitle(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (programTitle != null) {
      return programTitle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult tag(_TypeTag value),
    @required TResult channelTitle(_TypeChannelTitle value),
    @required TResult programTitle(_TypeProgramTitle value),
  }) {
    assert(tag != null);
    assert(channelTitle != null);
    assert(programTitle != null);
    return programTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult tag(_TypeTag value),
    TResult channelTitle(_TypeChannelTitle value),
    TResult programTitle(_TypeProgramTitle value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (programTitle != null) {
      return programTitle(this);
    }
    return orElse();
  }
}

abstract class _TypeProgramTitle implements ItemType {
  const factory _TypeProgramTitle() = _$_TypeProgramTitle;
}
