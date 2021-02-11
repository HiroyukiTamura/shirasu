// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_watch_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WatchHistoryStateTearOff {
  const _$WatchHistoryStateTearOff();

// ignore: unused_element
  _StatePreInitial initial() {
    return const _StatePreInitial();
  }

// ignore: unused_element
  _StateResultEmpty resultEmpty() {
    return const _StateResultEmpty();
  }

// ignore: unused_element
  _StateSuccess success(WatchHistoriesDataWrapper data) {
    return _StateSuccess(
      data,
    );
  }

// ignore: unused_element
  _StateError error(ErrorMsgCommon errorMsgCommon) {
    return _StateError(
      errorMsgCommon,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistoryState = _$WatchHistoryStateTearOff();

/// @nodoc
mixin _$WatchHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(WatchHistoriesDataWrapper data),
    @required TResult error(ErrorMsgCommon errorMsgCommon),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(WatchHistoriesDataWrapper data),
    TResult error(ErrorMsgCommon errorMsgCommon),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult error(_StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WatchHistoryStateCopyWith<$Res> {
  factory $WatchHistoryStateCopyWith(
          WatchHistoryState value, $Res Function(WatchHistoryState) then) =
      _$WatchHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  _$WatchHistoryStateCopyWithImpl(this._value, this._then);

  final WatchHistoryState _value;
  // ignore: unused_field
  final $Res Function(WatchHistoryState) _then;
}

/// @nodoc
abstract class _$StatePreInitialCopyWith<$Res> {
  factory _$StatePreInitialCopyWith(
          _StatePreInitial value, $Res Function(_StatePreInitial) then) =
      __$StatePreInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$StatePreInitialCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$StatePreInitialCopyWith<$Res> {
  __$StatePreInitialCopyWithImpl(
      _StatePreInitial _value, $Res Function(_StatePreInitial) _then)
      : super(_value, (v) => _then(v as _StatePreInitial));

  @override
  _StatePreInitial get _value => super._value as _StatePreInitial;
}

/// @nodoc
class _$_StatePreInitial implements _StatePreInitial {
  const _$_StatePreInitial();

  @override
  String toString() {
    return 'WatchHistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatePreInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(WatchHistoriesDataWrapper data),
    @required TResult error(ErrorMsgCommon errorMsgCommon),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(WatchHistoriesDataWrapper data),
    TResult error(ErrorMsgCommon errorMsgCommon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StatePreInitial implements WatchHistoryState {
  const factory _StatePreInitial() = _$_StatePreInitial;
}

/// @nodoc
abstract class _$StateResultEmptyCopyWith<$Res> {
  factory _$StateResultEmptyCopyWith(
          _StateResultEmpty value, $Res Function(_StateResultEmpty) then) =
      __$StateResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$StateResultEmptyCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$StateResultEmptyCopyWith<$Res> {
  __$StateResultEmptyCopyWithImpl(
      _StateResultEmpty _value, $Res Function(_StateResultEmpty) _then)
      : super(_value, (v) => _then(v as _StateResultEmpty));

  @override
  _StateResultEmpty get _value => super._value as _StateResultEmpty;
}

/// @nodoc
class _$_StateResultEmpty implements _StateResultEmpty {
  const _$_StateResultEmpty();

  @override
  String toString() {
    return 'WatchHistoryState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(WatchHistoriesDataWrapper data),
    @required TResult error(ErrorMsgCommon errorMsgCommon),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(WatchHistoriesDataWrapper data),
    TResult error(ErrorMsgCommon errorMsgCommon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class _StateResultEmpty implements WatchHistoryState {
  const factory _StateResultEmpty() = _$_StateResultEmpty;
}

/// @nodoc
abstract class _$StateSuccessCopyWith<$Res> {
  factory _$StateSuccessCopyWith(
          _StateSuccess value, $Res Function(_StateSuccess) then) =
      __$StateSuccessCopyWithImpl<$Res>;
  $Res call({WatchHistoriesDataWrapper data});

  $WatchHistoriesDataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$StateSuccessCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$StateSuccessCopyWith<$Res> {
  __$StateSuccessCopyWithImpl(
      _StateSuccess _value, $Res Function(_StateSuccess) _then)
      : super(_value, (v) => _then(v as _StateSuccess));

  @override
  _StateSuccess get _value => super._value as _StateSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_StateSuccess(
      data == freezed ? _value.data : data as WatchHistoriesDataWrapper,
    ));
  }

  @override
  $WatchHistoriesDataWrapperCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $WatchHistoriesDataWrapperCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$_StateSuccess implements _StateSuccess {
  const _$_StateSuccess(this.data) : assert(data != null);

  @override
  final WatchHistoriesDataWrapper data;

  @override
  String toString() {
    return 'WatchHistoryState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$StateSuccessCopyWith<_StateSuccess> get copyWith =>
      __$StateSuccessCopyWithImpl<_StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(WatchHistoriesDataWrapper data),
    @required TResult error(ErrorMsgCommon errorMsgCommon),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(WatchHistoriesDataWrapper data),
    TResult error(ErrorMsgCommon errorMsgCommon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StateSuccess implements WatchHistoryState {
  const factory _StateSuccess(WatchHistoriesDataWrapper data) = _$_StateSuccess;

  WatchHistoriesDataWrapper get data;
  @JsonKey(ignore: true)
  _$StateSuccessCopyWith<_StateSuccess> get copyWith;
}

/// @nodoc
abstract class _$StateErrorCopyWith<$Res> {
  factory _$StateErrorCopyWith(
          _StateError value, $Res Function(_StateError) then) =
      __$StateErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon errorMsgCommon});

  $ErrorMsgCommonCopyWith<$Res> get errorMsgCommon;
}

/// @nodoc
class __$StateErrorCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$StateErrorCopyWith<$Res> {
  __$StateErrorCopyWithImpl(
      _StateError _value, $Res Function(_StateError) _then)
      : super(_value, (v) => _then(v as _StateError));

  @override
  _StateError get _value => super._value as _StateError;

  @override
  $Res call({
    Object errorMsgCommon = freezed,
  }) {
    return _then(_StateError(
      errorMsgCommon == freezed
          ? _value.errorMsgCommon
          : errorMsgCommon as ErrorMsgCommon,
    ));
  }

  @override
  $ErrorMsgCommonCopyWith<$Res> get errorMsgCommon {
    if (_value.errorMsgCommon == null) {
      return null;
    }
    return $ErrorMsgCommonCopyWith<$Res>(_value.errorMsgCommon, (value) {
      return _then(_value.copyWith(errorMsgCommon: value));
    });
  }
}

/// @nodoc
class _$_StateError implements _StateError {
  const _$_StateError(this.errorMsgCommon) : assert(errorMsgCommon != null);

  @override
  final ErrorMsgCommon errorMsgCommon;

  @override
  String toString() {
    return 'WatchHistoryState.error(errorMsgCommon: $errorMsgCommon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateError &&
            (identical(other.errorMsgCommon, errorMsgCommon) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsgCommon, errorMsgCommon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMsgCommon);

  @JsonKey(ignore: true)
  @override
  _$StateErrorCopyWith<_StateError> get copyWith =>
      __$StateErrorCopyWithImpl<_StateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(WatchHistoriesDataWrapper data),
    @required TResult error(ErrorMsgCommon errorMsgCommon),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(errorMsgCommon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(WatchHistoriesDataWrapper data),
    TResult error(ErrorMsgCommon errorMsgCommon),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMsgCommon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements WatchHistoryState {
  const factory _StateError(ErrorMsgCommon errorMsgCommon) = _$_StateError;

  ErrorMsgCommon get errorMsgCommon;
  @JsonKey(ignore: true)
  _$StateErrorCopyWith<_StateError> get copyWith;
}

/// @nodoc
class _$WatchHistoriesDataWrapperTearOff {
  const _$WatchHistoriesDataWrapperTearOff();

// ignore: unused_element
  _WatchHistoriesDataWrapper call(
      {@required UnmodifiableListView<WatchHistoriesData> watchHistories,
      @required bool isLoadingMore}) {
    return _WatchHistoriesDataWrapper(
      watchHistories: watchHistories,
      isLoadingMore: isLoadingMore,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistoriesDataWrapper = _$WatchHistoriesDataWrapperTearOff();

/// @nodoc
mixin _$WatchHistoriesDataWrapper {
  UnmodifiableListView<WatchHistoriesData> get watchHistories;
  bool get isLoadingMore;

  @JsonKey(ignore: true)
  $WatchHistoriesDataWrapperCopyWith<WatchHistoriesDataWrapper> get copyWith;
}

/// @nodoc
abstract class $WatchHistoriesDataWrapperCopyWith<$Res> {
  factory $WatchHistoriesDataWrapperCopyWith(WatchHistoriesDataWrapper value,
          $Res Function(WatchHistoriesDataWrapper) then) =
      _$WatchHistoriesDataWrapperCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<WatchHistoriesData> watchHistories,
      bool isLoadingMore});
}

/// @nodoc
class _$WatchHistoriesDataWrapperCopyWithImpl<$Res>
    implements $WatchHistoriesDataWrapperCopyWith<$Res> {
  _$WatchHistoriesDataWrapperCopyWithImpl(this._value, this._then);

  final WatchHistoriesDataWrapper _value;
  // ignore: unused_field
  final $Res Function(WatchHistoriesDataWrapper) _then;

  @override
  $Res call({
    Object watchHistories = freezed,
    Object isLoadingMore = freezed,
  }) {
    return _then(_value.copyWith(
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as UnmodifiableListView<WatchHistoriesData>,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
    ));
  }
}

/// @nodoc
abstract class _$WatchHistoriesDataWrapperCopyWith<$Res>
    implements $WatchHistoriesDataWrapperCopyWith<$Res> {
  factory _$WatchHistoriesDataWrapperCopyWith(_WatchHistoriesDataWrapper value,
          $Res Function(_WatchHistoriesDataWrapper) then) =
      __$WatchHistoriesDataWrapperCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnmodifiableListView<WatchHistoriesData> watchHistories,
      bool isLoadingMore});
}

/// @nodoc
class __$WatchHistoriesDataWrapperCopyWithImpl<$Res>
    extends _$WatchHistoriesDataWrapperCopyWithImpl<$Res>
    implements _$WatchHistoriesDataWrapperCopyWith<$Res> {
  __$WatchHistoriesDataWrapperCopyWithImpl(_WatchHistoriesDataWrapper _value,
      $Res Function(_WatchHistoriesDataWrapper) _then)
      : super(_value, (v) => _then(v as _WatchHistoriesDataWrapper));

  @override
  _WatchHistoriesDataWrapper get _value =>
      super._value as _WatchHistoriesDataWrapper;

  @override
  $Res call({
    Object watchHistories = freezed,
    Object isLoadingMore = freezed,
  }) {
    return _then(_WatchHistoriesDataWrapper(
      watchHistories: watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as UnmodifiableListView<WatchHistoriesData>,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
    ));
  }
}

/// @nodoc
class _$_WatchHistoriesDataWrapper implements _WatchHistoriesDataWrapper {
  const _$_WatchHistoriesDataWrapper(
      {@required this.watchHistories, @required this.isLoadingMore})
      : assert(watchHistories != null),
        assert(isLoadingMore != null);

  @override
  final UnmodifiableListView<WatchHistoriesData> watchHistories;
  @override
  final bool isLoadingMore;

  @override
  String toString() {
    return 'WatchHistoriesDataWrapper(watchHistories: $watchHistories, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHistoriesDataWrapper &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingMore, isLoadingMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories) ^
      const DeepCollectionEquality().hash(isLoadingMore);

  @JsonKey(ignore: true)
  @override
  _$WatchHistoriesDataWrapperCopyWith<_WatchHistoriesDataWrapper>
      get copyWith =>
          __$WatchHistoriesDataWrapperCopyWithImpl<_WatchHistoriesDataWrapper>(
              this, _$identity);
}

abstract class _WatchHistoriesDataWrapper implements WatchHistoriesDataWrapper {
  const factory _WatchHistoriesDataWrapper(
      {@required UnmodifiableListView<WatchHistoriesData> watchHistories,
      @required bool isLoadingMore}) = _$_WatchHistoriesDataWrapper;

  @override
  UnmodifiableListView<WatchHistoriesData> get watchHistories;
  @override
  bool get isLoadingMore;
  @override
  @JsonKey(ignore: true)
  _$WatchHistoriesDataWrapperCopyWith<_WatchHistoriesDataWrapper> get copyWith;
}
