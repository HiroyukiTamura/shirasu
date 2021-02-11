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
  _StateSuccess success(
      UnmodifiableListView<WatchHistoriesData> watchHistories) {
    return _StateSuccess(
      watchHistories,
    );
  }

// ignore: unused_element
  _StateLoadingMore loadingMore(
      UnmodifiableListView<WatchHistoriesData> watchHistories) {
    return _StateLoadingMore(
      watchHistories,
    );
  }

// ignore: unused_element
  _StateError error() {
    return const _StateError();
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
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
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
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
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
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
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
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
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
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
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
  $Res call({UnmodifiableListView<WatchHistoriesData> watchHistories});
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
    Object watchHistories = freezed,
  }) {
    return _then(_StateSuccess(
      watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as UnmodifiableListView<WatchHistoriesData>,
    ));
  }
}

/// @nodoc
class _$_StateSuccess implements _StateSuccess {
  const _$_StateSuccess(this.watchHistories) : assert(watchHistories != null);

  @override
  final UnmodifiableListView<WatchHistoriesData> watchHistories;

  @override
  String toString() {
    return 'WatchHistoryState.success(watchHistories: $watchHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateSuccess &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories);

  @JsonKey(ignore: true)
  @override
  _$StateSuccessCopyWith<_StateSuccess> get copyWith =>
      __$StateSuccessCopyWithImpl<_StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return success(watchHistories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(watchHistories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
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
  const factory _StateSuccess(
          UnmodifiableListView<WatchHistoriesData> watchHistories) =
      _$_StateSuccess;

  UnmodifiableListView<WatchHistoriesData> get watchHistories;
  @JsonKey(ignore: true)
  _$StateSuccessCopyWith<_StateSuccess> get copyWith;
}

/// @nodoc
abstract class _$StateLoadingMoreCopyWith<$Res> {
  factory _$StateLoadingMoreCopyWith(
          _StateLoadingMore value, $Res Function(_StateLoadingMore) then) =
      __$StateLoadingMoreCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<WatchHistoriesData> watchHistories});
}

/// @nodoc
class __$StateLoadingMoreCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements _$StateLoadingMoreCopyWith<$Res> {
  __$StateLoadingMoreCopyWithImpl(
      _StateLoadingMore _value, $Res Function(_StateLoadingMore) _then)
      : super(_value, (v) => _then(v as _StateLoadingMore));

  @override
  _StateLoadingMore get _value => super._value as _StateLoadingMore;

  @override
  $Res call({
    Object watchHistories = freezed,
  }) {
    return _then(_StateLoadingMore(
      watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as UnmodifiableListView<WatchHistoriesData>,
    ));
  }
}

/// @nodoc
class _$_StateLoadingMore implements _StateLoadingMore {
  const _$_StateLoadingMore(this.watchHistories)
      : assert(watchHistories != null);

  @override
  final UnmodifiableListView<WatchHistoriesData> watchHistories;

  @override
  String toString() {
    return 'WatchHistoryState.loadingMore(watchHistories: $watchHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateLoadingMore &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories);

  @JsonKey(ignore: true)
  @override
  _$StateLoadingMoreCopyWith<_StateLoadingMore> get copyWith =>
      __$StateLoadingMoreCopyWithImpl<_StateLoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return loadingMore(watchHistories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(watchHistories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingMore implements WatchHistoryState {
  const factory _StateLoadingMore(
          UnmodifiableListView<WatchHistoriesData> watchHistories) =
      _$_StateLoadingMore;

  UnmodifiableListView<WatchHistoriesData> get watchHistories;
  @JsonKey(ignore: true)
  _$StateLoadingMoreCopyWith<_StateLoadingMore> get copyWith;
}

/// @nodoc
abstract class _$StateErrorCopyWith<$Res> {
  factory _$StateErrorCopyWith(
          _StateError value, $Res Function(_StateError) then) =
      __$StateErrorCopyWithImpl<$Res>;
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
}

/// @nodoc
class _$_StateError implements _StateError {
  const _$_StateError();

  @override
  String toString() {
    return 'WatchHistoryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required
        TResult success(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required
        TResult loadingMore(
            UnmodifiableListView<WatchHistoriesData> watchHistories),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult loadingMore(
        UnmodifiableListView<WatchHistoriesData> watchHistories),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StatePreInitial value),
    @required TResult resultEmpty(_StateResultEmpty value),
    @required TResult success(_StateSuccess value),
    @required TResult loadingMore(_StateLoadingMore value),
    @required TResult error(_StateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(loadingMore != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StatePreInitial value),
    TResult resultEmpty(_StateResultEmpty value),
    TResult success(_StateSuccess value),
    TResult loadingMore(_StateLoadingMore value),
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
  const factory _StateError() = _$_StateError;
}
