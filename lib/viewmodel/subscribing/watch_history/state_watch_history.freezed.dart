// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_watch_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WatchHistoryStateTearOff {
  const _$WatchHistoryStateTearOff();

// ignore: unused_element
  WatchHistoryPreInitialized preInitialized() {
    return const WatchHistoryPreInitialized();
  }

// ignore: unused_element
  WatchHistoryLoading loading() {
    return const WatchHistoryLoading();
  }

// ignore: unused_element
  WatchHistoryError error() {
    return const WatchHistoryError();
  }

// ignore: unused_element
  WatchHistorySuccess success(List<WatchHistoriesData> watchHistories) {
    return WatchHistorySuccess(
      watchHistories,
    );
  }

// ignore: unused_element
  WatchHistoryResultEmpty resultEmpty() {
    return const WatchHistoryResultEmpty();
  }

// ignore: unused_element
  WatchHistoryLoadingMore loadingMore(List<WatchHistoriesData> watchHistories) {
    return WatchHistoryLoadingMore(
      watchHistories,
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
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
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
abstract class $WatchHistoryPreInitializedCopyWith<$Res> {
  factory $WatchHistoryPreInitializedCopyWith(WatchHistoryPreInitialized value,
          $Res Function(WatchHistoryPreInitialized) then) =
      _$WatchHistoryPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHistoryPreInitializedCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryPreInitializedCopyWith<$Res> {
  _$WatchHistoryPreInitializedCopyWithImpl(WatchHistoryPreInitialized _value,
      $Res Function(WatchHistoryPreInitialized) _then)
      : super(_value, (v) => _then(v as WatchHistoryPreInitialized));

  @override
  WatchHistoryPreInitialized get _value =>
      super._value as WatchHistoryPreInitialized;
}

@Implements(WatchHistoryStateGroup)
@Implements(StatePreInitialized)

/// @nodoc
class _$WatchHistoryPreInitialized implements WatchHistoryPreInitialized {
  const _$WatchHistoryPreInitialized();

  @override
  String toString() {
    return 'WatchHistoryState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchHistoryPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class WatchHistoryPreInitialized
    implements WatchHistoryState, WatchHistoryStateGroup, StatePreInitialized {
  const factory WatchHistoryPreInitialized() = _$WatchHistoryPreInitialized;
}

/// @nodoc
abstract class $WatchHistoryLoadingCopyWith<$Res> {
  factory $WatchHistoryLoadingCopyWith(
          WatchHistoryLoading value, $Res Function(WatchHistoryLoading) then) =
      _$WatchHistoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHistoryLoadingCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryLoadingCopyWith<$Res> {
  _$WatchHistoryLoadingCopyWithImpl(
      WatchHistoryLoading _value, $Res Function(WatchHistoryLoading) _then)
      : super(_value, (v) => _then(v as WatchHistoryLoading));

  @override
  WatchHistoryLoading get _value => super._value as WatchHistoryLoading;
}

@Implements(WatchHistoryStateGroup)
@Implements(StateLoading)

/// @nodoc
class _$WatchHistoryLoading implements WatchHistoryLoading {
  const _$WatchHistoryLoading();

  @override
  String toString() {
    return 'WatchHistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchHistoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
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
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WatchHistoryLoading
    implements WatchHistoryState, WatchHistoryStateGroup, StateLoading {
  const factory WatchHistoryLoading() = _$WatchHistoryLoading;
}

/// @nodoc
abstract class $WatchHistoryErrorCopyWith<$Res> {
  factory $WatchHistoryErrorCopyWith(
          WatchHistoryError value, $Res Function(WatchHistoryError) then) =
      _$WatchHistoryErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHistoryErrorCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryErrorCopyWith<$Res> {
  _$WatchHistoryErrorCopyWithImpl(
      WatchHistoryError _value, $Res Function(WatchHistoryError) _then)
      : super(_value, (v) => _then(v as WatchHistoryError));

  @override
  WatchHistoryError get _value => super._value as WatchHistoryError;
}

@Implements(WatchHistoryStateGroup)
@Implements(StateError)

/// @nodoc
class _$WatchHistoryError implements WatchHistoryError {
  const _$WatchHistoryError();

  @override
  String toString() {
    return 'WatchHistoryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchHistoryError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
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
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WatchHistoryError
    implements WatchHistoryState, WatchHistoryStateGroup, StateError {
  const factory WatchHistoryError() = _$WatchHistoryError;
}

/// @nodoc
abstract class $WatchHistorySuccessCopyWith<$Res> {
  factory $WatchHistorySuccessCopyWith(
          WatchHistorySuccess value, $Res Function(WatchHistorySuccess) then) =
      _$WatchHistorySuccessCopyWithImpl<$Res>;
  $Res call({List<WatchHistoriesData> watchHistories});
}

/// @nodoc
class _$WatchHistorySuccessCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistorySuccessCopyWith<$Res> {
  _$WatchHistorySuccessCopyWithImpl(
      WatchHistorySuccess _value, $Res Function(WatchHistorySuccess) _then)
      : super(_value, (v) => _then(v as WatchHistorySuccess));

  @override
  WatchHistorySuccess get _value => super._value as WatchHistorySuccess;

  @override
  $Res call({
    Object watchHistories = freezed,
  }) {
    return _then(WatchHistorySuccess(
      watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as List<WatchHistoriesData>,
    ));
  }
}

@Implements(WatchHistoryStateGroup)
@Implements(StateSuccess)

/// @nodoc
class _$WatchHistorySuccess implements WatchHistorySuccess {
  const _$WatchHistorySuccess(this.watchHistories)
      : assert(watchHistories != null);

  @override
  final List<WatchHistoriesData> watchHistories;

  @override
  String toString() {
    return 'WatchHistoryState.success(watchHistories: $watchHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchHistorySuccess &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories);

  @override
  $WatchHistorySuccessCopyWith<WatchHistorySuccess> get copyWith =>
      _$WatchHistorySuccessCopyWithImpl<WatchHistorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return success(watchHistories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
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
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WatchHistorySuccess
    implements WatchHistoryState, WatchHistoryStateGroup, StateSuccess {
  const factory WatchHistorySuccess(List<WatchHistoriesData> watchHistories) =
      _$WatchHistorySuccess;

  List<WatchHistoriesData> get watchHistories;
  $WatchHistorySuccessCopyWith<WatchHistorySuccess> get copyWith;
}

/// @nodoc
abstract class $WatchHistoryResultEmptyCopyWith<$Res> {
  factory $WatchHistoryResultEmptyCopyWith(WatchHistoryResultEmpty value,
          $Res Function(WatchHistoryResultEmpty) then) =
      _$WatchHistoryResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHistoryResultEmptyCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryResultEmptyCopyWith<$Res> {
  _$WatchHistoryResultEmptyCopyWithImpl(WatchHistoryResultEmpty _value,
      $Res Function(WatchHistoryResultEmpty) _then)
      : super(_value, (v) => _then(v as WatchHistoryResultEmpty));

  @override
  WatchHistoryResultEmpty get _value => super._value as WatchHistoryResultEmpty;
}

@Implements(WatchHistoryStateGroup)

/// @nodoc
class _$WatchHistoryResultEmpty implements WatchHistoryResultEmpty {
  const _$WatchHistoryResultEmpty();

  @override
  String toString() {
    return 'WatchHistoryState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchHistoryResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
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
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class WatchHistoryResultEmpty
    implements WatchHistoryState, WatchHistoryStateGroup {
  const factory WatchHistoryResultEmpty() = _$WatchHistoryResultEmpty;
}

/// @nodoc
abstract class $WatchHistoryLoadingMoreCopyWith<$Res> {
  factory $WatchHistoryLoadingMoreCopyWith(WatchHistoryLoadingMore value,
          $Res Function(WatchHistoryLoadingMore) then) =
      _$WatchHistoryLoadingMoreCopyWithImpl<$Res>;
  $Res call({List<WatchHistoriesData> watchHistories});
}

/// @nodoc
class _$WatchHistoryLoadingMoreCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $WatchHistoryLoadingMoreCopyWith<$Res> {
  _$WatchHistoryLoadingMoreCopyWithImpl(WatchHistoryLoadingMore _value,
      $Res Function(WatchHistoryLoadingMore) _then)
      : super(_value, (v) => _then(v as WatchHistoryLoadingMore));

  @override
  WatchHistoryLoadingMore get _value => super._value as WatchHistoryLoadingMore;

  @override
  $Res call({
    Object watchHistories = freezed,
  }) {
    return _then(WatchHistoryLoadingMore(
      watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as List<WatchHistoriesData>,
    ));
  }
}

@Implements(WatchHistoryStateGroup)

/// @nodoc
class _$WatchHistoryLoadingMore implements WatchHistoryLoadingMore {
  const _$WatchHistoryLoadingMore(this.watchHistories)
      : assert(watchHistories != null);

  @override
  final List<WatchHistoriesData> watchHistories;

  @override
  String toString() {
    return 'WatchHistoryState.loadingMore(watchHistories: $watchHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchHistoryLoadingMore &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories);

  @override
  $WatchHistoryLoadingMoreCopyWith<WatchHistoryLoadingMore> get copyWith =>
      _$WatchHistoryLoadingMoreCopyWithImpl<WatchHistoryLoadingMore>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult success(List<WatchHistoriesData> watchHistories),
    @required TResult resultEmpty(),
    @required TResult loadingMore(List<WatchHistoriesData> watchHistories),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return loadingMore(watchHistories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    TResult success(List<WatchHistoriesData> watchHistories),
    TResult resultEmpty(),
    TResult loadingMore(List<WatchHistoriesData> watchHistories),
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
    @required TResult preInitialized(WatchHistoryPreInitialized value),
    @required TResult loading(WatchHistoryLoading value),
    @required TResult error(WatchHistoryError value),
    @required TResult success(WatchHistorySuccess value),
    @required TResult resultEmpty(WatchHistoryResultEmpty value),
    @required TResult loadingMore(WatchHistoryLoadingMore value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    assert(success != null);
    assert(resultEmpty != null);
    assert(loadingMore != null);
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(WatchHistoryPreInitialized value),
    TResult loading(WatchHistoryLoading value),
    TResult error(WatchHistoryError value),
    TResult success(WatchHistorySuccess value),
    TResult resultEmpty(WatchHistoryResultEmpty value),
    TResult loadingMore(WatchHistoryLoadingMore value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class WatchHistoryLoadingMore
    implements WatchHistoryState, WatchHistoryStateGroup {
  const factory WatchHistoryLoadingMore(
      List<WatchHistoriesData> watchHistories) = _$WatchHistoryLoadingMore;

  List<WatchHistoriesData> get watchHistories;
  $WatchHistoryLoadingMoreCopyWith<WatchHistoryLoadingMore> get copyWith;
}
