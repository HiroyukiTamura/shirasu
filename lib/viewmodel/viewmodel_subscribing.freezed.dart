// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_subscribing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WatchHistoryStateTearOff {
  const _$WatchHistoryStateTearOff();

// ignore: unused_element
  StatePreInitialized preInitialized() {
    return const StatePreInitialized();
  }

// ignore: unused_element
  StateSuccess success(WatchHistoriesData watchHistories) {
    return StateSuccess(
      watchHistories,
    );
  }

// ignore: unused_element
  StateError error() {
    return const StateError();
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHistoryState = _$WatchHistoryStateTearOff();

/// @nodoc
mixin _$WatchHistoryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
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
abstract class $StatePreInitializedCopyWith<$Res> {
  factory $StatePreInitializedCopyWith(
          StatePreInitialized value, $Res Function(StatePreInitialized) then) =
      _$StatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePreInitializedCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $StatePreInitializedCopyWith<$Res> {
  _$StatePreInitializedCopyWithImpl(
      StatePreInitialized _value, $Res Function(StatePreInitialized) _then)
      : super(_value, (v) => _then(v as StatePreInitialized));

  @override
  StatePreInitialized get _value => super._value as StatePreInitialized;
}

/// @nodoc
class _$StatePreInitialized implements StatePreInitialized {
  const _$StatePreInitialized();

  @override
  String toString() {
    return 'WatchHistoryState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StatePreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class StatePreInitialized implements WatchHistoryState {
  const factory StatePreInitialized() = _$StatePreInitialized;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({WatchHistoriesData watchHistories});

  $WatchHistoriesDataCopyWith<$Res> get watchHistories;
}

/// @nodoc
class _$StateSuccessCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $StateSuccessCopyWith<$Res> {
  _$StateSuccessCopyWithImpl(
      StateSuccess _value, $Res Function(StateSuccess) _then)
      : super(_value, (v) => _then(v as StateSuccess));

  @override
  StateSuccess get _value => super._value as StateSuccess;

  @override
  $Res call({
    Object watchHistories = freezed,
  }) {
    return _then(StateSuccess(
      watchHistories == freezed
          ? _value.watchHistories
          : watchHistories as WatchHistoriesData,
    ));
  }

  @override
  $WatchHistoriesDataCopyWith<$Res> get watchHistories {
    if (_value.watchHistories == null) {
      return null;
    }
    return $WatchHistoriesDataCopyWith<$Res>(_value.watchHistories, (value) {
      return _then(_value.copyWith(watchHistories: value));
    });
  }
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(this.watchHistories) : assert(watchHistories != null);

  @override
  final WatchHistoriesData watchHistories;

  @override
  String toString() {
    return 'WatchHistoryState.success(watchHistories: $watchHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSuccess &&
            (identical(other.watchHistories, watchHistories) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistories, watchHistories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(watchHistories);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(watchHistories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(watchHistories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StateSuccess implements WatchHistoryState {
  const factory StateSuccess(WatchHistoriesData watchHistories) =
      _$StateSuccess;

  WatchHistoriesData get watchHistories;
  $StateSuccessCopyWith<StateSuccess> get copyWith;
}

/// @nodoc
abstract class $StateErrorCopyWith<$Res> {
  factory $StateErrorCopyWith(
          StateError value, $Res Function(StateError) then) =
      _$StateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateErrorCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $StateErrorCopyWith<$Res> {
  _$StateErrorCopyWithImpl(StateError _value, $Res Function(StateError) _then)
      : super(_value, (v) => _then(v as StateError));

  @override
  StateError get _value => super._value as StateError;
}

/// @nodoc
class _$StateError implements StateError {
  const _$StateError();

  @override
  String toString() {
    return 'WatchHistoryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateError implements WatchHistoryState {
  const factory StateError() = _$StateError;
}
