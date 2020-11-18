// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_subscribing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeatureProgramStateTearOff {
  const _$FeatureProgramStateTearOff();

// ignore: unused_element
  FeatureProgramStatePreInitialized preInitialized() {
    return const FeatureProgramStatePreInitialized();
  }

// ignore: unused_element
  FeatureProgramStateResultEmpty resultEmpty() {
    return const FeatureProgramStateResultEmpty();
  }

// ignore: unused_element
  FeatureProgramStateSuccess success(FeatureProgramData featureProgramData) {
    return FeatureProgramStateSuccess(
      featureProgramData,
    );
  }

// ignore: unused_element
  FeatureProgramStateError error() {
    return const FeatureProgramStateError();
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProgramState = _$FeatureProgramStateTearOff();

/// @nodoc
mixin _$FeatureProgramState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(FeatureProgramData featureProgramData),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(FeatureProgramData featureProgramData),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(FeatureProgramStatePreInitialized value),
    @required Result resultEmpty(FeatureProgramStateResultEmpty value),
    @required Result success(FeatureProgramStateSuccess value),
    @required Result error(FeatureProgramStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(FeatureProgramStatePreInitialized value),
    Result resultEmpty(FeatureProgramStateResultEmpty value),
    Result success(FeatureProgramStateSuccess value),
    Result error(FeatureProgramStateError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FeatureProgramStateCopyWith<$Res> {
  factory $FeatureProgramStateCopyWith(
          FeatureProgramState value, $Res Function(FeatureProgramState) then) =
      _$FeatureProgramStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStateCopyWith<$Res> {
  _$FeatureProgramStateCopyWithImpl(this._value, this._then);

  final FeatureProgramState _value;
  // ignore: unused_field
  final $Res Function(FeatureProgramState) _then;
}

/// @nodoc
abstract class $FeatureProgramStatePreInitializedCopyWith<$Res> {
  factory $FeatureProgramStatePreInitializedCopyWith(
          FeatureProgramStatePreInitialized value,
          $Res Function(FeatureProgramStatePreInitialized) then) =
      _$FeatureProgramStatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramStatePreInitializedCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStatePreInitializedCopyWith<$Res> {
  _$FeatureProgramStatePreInitializedCopyWithImpl(
      FeatureProgramStatePreInitialized _value,
      $Res Function(FeatureProgramStatePreInitialized) _then)
      : super(_value, (v) => _then(v as FeatureProgramStatePreInitialized));

  @override
  FeatureProgramStatePreInitialized get _value =>
      super._value as FeatureProgramStatePreInitialized;
}

/// @nodoc
class _$FeatureProgramStatePreInitialized
    implements FeatureProgramStatePreInitialized {
  const _$FeatureProgramStatePreInitialized();

  @override
  String toString() {
    return 'FeatureProgramState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeatureProgramStatePreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(FeatureProgramData featureProgramData),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(FeatureProgramData featureProgramData),
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
    @required Result preInitialized(FeatureProgramStatePreInitialized value),
    @required Result resultEmpty(FeatureProgramStateResultEmpty value),
    @required Result success(FeatureProgramStateSuccess value),
    @required Result error(FeatureProgramStateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(FeatureProgramStatePreInitialized value),
    Result resultEmpty(FeatureProgramStateResultEmpty value),
    Result success(FeatureProgramStateSuccess value),
    Result error(FeatureProgramStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramStatePreInitialized
    implements FeatureProgramState {
  const factory FeatureProgramStatePreInitialized() =
      _$FeatureProgramStatePreInitialized;
}

/// @nodoc
abstract class $FeatureProgramStateResultEmptyCopyWith<$Res> {
  factory $FeatureProgramStateResultEmptyCopyWith(
          FeatureProgramStateResultEmpty value,
          $Res Function(FeatureProgramStateResultEmpty) then) =
      _$FeatureProgramStateResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramStateResultEmptyCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStateResultEmptyCopyWith<$Res> {
  _$FeatureProgramStateResultEmptyCopyWithImpl(
      FeatureProgramStateResultEmpty _value,
      $Res Function(FeatureProgramStateResultEmpty) _then)
      : super(_value, (v) => _then(v as FeatureProgramStateResultEmpty));

  @override
  FeatureProgramStateResultEmpty get _value =>
      super._value as FeatureProgramStateResultEmpty;
}

/// @nodoc
class _$FeatureProgramStateResultEmpty
    implements FeatureProgramStateResultEmpty {
  const _$FeatureProgramStateResultEmpty();

  @override
  String toString() {
    return 'FeatureProgramState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramStateResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(FeatureProgramData featureProgramData),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(FeatureProgramData featureProgramData),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(FeatureProgramStatePreInitialized value),
    @required Result resultEmpty(FeatureProgramStateResultEmpty value),
    @required Result success(FeatureProgramStateSuccess value),
    @required Result error(FeatureProgramStateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(FeatureProgramStatePreInitialized value),
    Result resultEmpty(FeatureProgramStateResultEmpty value),
    Result success(FeatureProgramStateSuccess value),
    Result error(FeatureProgramStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramStateResultEmpty implements FeatureProgramState {
  const factory FeatureProgramStateResultEmpty() =
      _$FeatureProgramStateResultEmpty;
}

/// @nodoc
abstract class $FeatureProgramStateSuccessCopyWith<$Res> {
  factory $FeatureProgramStateSuccessCopyWith(FeatureProgramStateSuccess value,
          $Res Function(FeatureProgramStateSuccess) then) =
      _$FeatureProgramStateSuccessCopyWithImpl<$Res>;
  $Res call({FeatureProgramData featureProgramData});

  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
}

/// @nodoc
class _$FeatureProgramStateSuccessCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStateSuccessCopyWith<$Res> {
  _$FeatureProgramStateSuccessCopyWithImpl(FeatureProgramStateSuccess _value,
      $Res Function(FeatureProgramStateSuccess) _then)
      : super(_value, (v) => _then(v as FeatureProgramStateSuccess));

  @override
  FeatureProgramStateSuccess get _value =>
      super._value as FeatureProgramStateSuccess;

  @override
  $Res call({
    Object featureProgramData = freezed,
  }) {
    return _then(FeatureProgramStateSuccess(
      featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
    ));
  }

  @override
  $FeatureProgramDataCopyWith<$Res> get featureProgramData {
    if (_value.featureProgramData == null) {
      return null;
    }
    return $FeatureProgramDataCopyWith<$Res>(_value.featureProgramData,
        (value) {
      return _then(_value.copyWith(featureProgramData: value));
    });
  }
}

/// @nodoc
class _$FeatureProgramStateSuccess implements FeatureProgramStateSuccess {
  const _$FeatureProgramStateSuccess(this.featureProgramData)
      : assert(featureProgramData != null);

  @override
  final FeatureProgramData featureProgramData;

  @override
  String toString() {
    return 'FeatureProgramState.success(featureProgramData: $featureProgramData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeatureProgramStateSuccess &&
            (identical(other.featureProgramData, featureProgramData) ||
                const DeepCollectionEquality()
                    .equals(other.featureProgramData, featureProgramData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(featureProgramData);

  @override
  $FeatureProgramStateSuccessCopyWith<FeatureProgramStateSuccess>
      get copyWith =>
          _$FeatureProgramStateSuccessCopyWithImpl<FeatureProgramStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(FeatureProgramData featureProgramData),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(featureProgramData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(FeatureProgramData featureProgramData),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(featureProgramData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(FeatureProgramStatePreInitialized value),
    @required Result resultEmpty(FeatureProgramStateResultEmpty value),
    @required Result success(FeatureProgramStateSuccess value),
    @required Result error(FeatureProgramStateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(FeatureProgramStatePreInitialized value),
    Result resultEmpty(FeatureProgramStateResultEmpty value),
    Result success(FeatureProgramStateSuccess value),
    Result error(FeatureProgramStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramStateSuccess implements FeatureProgramState {
  const factory FeatureProgramStateSuccess(
      FeatureProgramData featureProgramData) = _$FeatureProgramStateSuccess;

  FeatureProgramData get featureProgramData;
  $FeatureProgramStateSuccessCopyWith<FeatureProgramStateSuccess> get copyWith;
}

/// @nodoc
abstract class $FeatureProgramStateErrorCopyWith<$Res> {
  factory $FeatureProgramStateErrorCopyWith(FeatureProgramStateError value,
          $Res Function(FeatureProgramStateError) then) =
      _$FeatureProgramStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramStateErrorCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStateErrorCopyWith<$Res> {
  _$FeatureProgramStateErrorCopyWithImpl(FeatureProgramStateError _value,
      $Res Function(FeatureProgramStateError) _then)
      : super(_value, (v) => _then(v as FeatureProgramStateError));

  @override
  FeatureProgramStateError get _value =>
      super._value as FeatureProgramStateError;
}

/// @nodoc
class _$FeatureProgramStateError implements FeatureProgramStateError {
  const _$FeatureProgramStateError();

  @override
  String toString() {
    return 'FeatureProgramState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(FeatureProgramData featureProgramData),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(FeatureProgramData featureProgramData),
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
    @required Result preInitialized(FeatureProgramStatePreInitialized value),
    @required Result resultEmpty(FeatureProgramStateResultEmpty value),
    @required Result success(FeatureProgramStateSuccess value),
    @required Result error(FeatureProgramStateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(FeatureProgramStatePreInitialized value),
    Result resultEmpty(FeatureProgramStateResultEmpty value),
    Result success(FeatureProgramStateSuccess value),
    Result error(FeatureProgramStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramStateError implements FeatureProgramState {
  const factory FeatureProgramStateError() = _$FeatureProgramStateError;
}

/// @nodoc
class _$WatchHistoryStateTearOff {
  const _$WatchHistoryStateTearOff();

// ignore: unused_element
  StatePreInitialized preInitialized() {
    return const StatePreInitialized();
  }

// ignore: unused_element
  StateResultEmpty resultEmpty() {
    return const StateResultEmpty();
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
    @required Result resultEmpty(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result resultEmpty(StateResultEmpty value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result resultEmpty(StateResultEmpty value),
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
    @required Result resultEmpty(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
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
    @required Result resultEmpty(StateResultEmpty value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result resultEmpty(StateResultEmpty value),
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
abstract class $StateResultEmptyCopyWith<$Res> {
  factory $StateResultEmptyCopyWith(
          StateResultEmpty value, $Res Function(StateResultEmpty) then) =
      _$StateResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateResultEmptyCopyWithImpl<$Res>
    extends _$WatchHistoryStateCopyWithImpl<$Res>
    implements $StateResultEmptyCopyWith<$Res> {
  _$StateResultEmptyCopyWithImpl(
      StateResultEmpty _value, $Res Function(StateResultEmpty) _then)
      : super(_value, (v) => _then(v as StateResultEmpty));

  @override
  StateResultEmpty get _value => super._value as StateResultEmpty;
}

/// @nodoc
class _$StateResultEmpty implements StateResultEmpty {
  const _$StateResultEmpty();

  @override
  String toString() {
    return 'WatchHistoryState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StateResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result resultEmpty(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
    Result success(WatchHistoriesData watchHistories),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(StatePreInitialized value),
    @required Result resultEmpty(StateResultEmpty value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result resultEmpty(StateResultEmpty value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class StateResultEmpty implements WatchHistoryState {
  const factory StateResultEmpty() = _$StateResultEmpty;
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
    @required Result resultEmpty(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(watchHistories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
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
    @required Result resultEmpty(StateResultEmpty value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result resultEmpty(StateResultEmpty value),
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
    @required Result resultEmpty(),
    @required Result success(WatchHistoriesData watchHistories),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result resultEmpty(),
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
    @required Result resultEmpty(StateResultEmpty value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  }) {
    assert(preInitialized != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(StatePreInitialized value),
    Result resultEmpty(StateResultEmpty value),
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
