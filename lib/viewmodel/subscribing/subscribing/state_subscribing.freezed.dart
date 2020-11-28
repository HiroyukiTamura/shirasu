// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_subscribing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeatureProgramStateTearOff {
  const _$FeatureProgramStateTearOff();

// ignore: unused_element
  FeatureProgramPreInitialized preInitialized() {
    return const FeatureProgramPreInitialized();
  }

// ignore: unused_element
  FeatureProgramLoading loading() {
    return const FeatureProgramLoading();
  }

// ignore: unused_element
  FeatureProgramResultEmpty resultEmpty() {
    return const FeatureProgramResultEmpty();
  }

// ignore: unused_element
  FeatureProgramSuccess success(FeatureProgramSuccessData data) {
    return FeatureProgramSuccess(
      data,
    );
  }

// ignore: unused_element
  FeatureProgramError error() {
    return const FeatureProgramError();
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProgramState = _$FeatureProgramStateTearOff();

/// @nodoc
mixin _$FeatureProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
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
abstract class $FeatureProgramPreInitializedCopyWith<$Res> {
  factory $FeatureProgramPreInitializedCopyWith(
          FeatureProgramPreInitialized value,
          $Res Function(FeatureProgramPreInitialized) then) =
      _$FeatureProgramPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramPreInitializedCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramPreInitializedCopyWith<$Res> {
  _$FeatureProgramPreInitializedCopyWithImpl(
      FeatureProgramPreInitialized _value,
      $Res Function(FeatureProgramPreInitialized) _then)
      : super(_value, (v) => _then(v as FeatureProgramPreInitialized));

  @override
  FeatureProgramPreInitialized get _value =>
      super._value as FeatureProgramPreInitialized;
}

@Implements(FeatureProgramStateGroup)
@Implements(StatePreInitialized)

/// @nodoc
class _$FeatureProgramPreInitialized implements FeatureProgramPreInitialized {
  const _$FeatureProgramPreInitialized();

  @override
  String toString() {
    return 'FeatureProgramState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
    TResult error(),
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
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramPreInitialized
    implements
        FeatureProgramState,
        FeatureProgramStateGroup,
        StatePreInitialized {
  const factory FeatureProgramPreInitialized() = _$FeatureProgramPreInitialized;
}

/// @nodoc
abstract class $FeatureProgramLoadingCopyWith<$Res> {
  factory $FeatureProgramLoadingCopyWith(FeatureProgramLoading value,
          $Res Function(FeatureProgramLoading) then) =
      _$FeatureProgramLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramLoadingCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramLoadingCopyWith<$Res> {
  _$FeatureProgramLoadingCopyWithImpl(
      FeatureProgramLoading _value, $Res Function(FeatureProgramLoading) _then)
      : super(_value, (v) => _then(v as FeatureProgramLoading));

  @override
  FeatureProgramLoading get _value => super._value as FeatureProgramLoading;
}

@Implements(FeatureProgramStateGroup)
@Implements(StateLoading)

/// @nodoc
class _$FeatureProgramLoading implements FeatureProgramLoading {
  const _$FeatureProgramLoading();

  @override
  String toString() {
    return 'FeatureProgramState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
    TResult error(),
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
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramLoading
    implements FeatureProgramState, FeatureProgramStateGroup, StateLoading {
  const factory FeatureProgramLoading() = _$FeatureProgramLoading;
}

/// @nodoc
abstract class $FeatureProgramResultEmptyCopyWith<$Res> {
  factory $FeatureProgramResultEmptyCopyWith(FeatureProgramResultEmpty value,
          $Res Function(FeatureProgramResultEmpty) then) =
      _$FeatureProgramResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramResultEmptyCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramResultEmptyCopyWith<$Res> {
  _$FeatureProgramResultEmptyCopyWithImpl(FeatureProgramResultEmpty _value,
      $Res Function(FeatureProgramResultEmpty) _then)
      : super(_value, (v) => _then(v as FeatureProgramResultEmpty));

  @override
  FeatureProgramResultEmpty get _value =>
      super._value as FeatureProgramResultEmpty;
}

@Implements(FeatureProgramStateGroup)

/// @nodoc
class _$FeatureProgramResultEmpty implements FeatureProgramResultEmpty {
  const _$FeatureProgramResultEmpty();

  @override
  String toString() {
    return 'FeatureProgramState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
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
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramResultEmpty
    implements FeatureProgramState, FeatureProgramStateGroup {
  const factory FeatureProgramResultEmpty() = _$FeatureProgramResultEmpty;
}

/// @nodoc
abstract class $FeatureProgramSuccessCopyWith<$Res> {
  factory $FeatureProgramSuccessCopyWith(FeatureProgramSuccess value,
          $Res Function(FeatureProgramSuccess) then) =
      _$FeatureProgramSuccessCopyWithImpl<$Res>;
  $Res call({FeatureProgramSuccessData data});
}

/// @nodoc
class _$FeatureProgramSuccessCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramSuccessCopyWith<$Res> {
  _$FeatureProgramSuccessCopyWithImpl(
      FeatureProgramSuccess _value, $Res Function(FeatureProgramSuccess) _then)
      : super(_value, (v) => _then(v as FeatureProgramSuccess));

  @override
  FeatureProgramSuccess get _value => super._value as FeatureProgramSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(FeatureProgramSuccess(
      data == freezed ? _value.data : data as FeatureProgramSuccessData,
    ));
  }
}

@Implements(FeatureProgramStateGroup)
@Implements(StateSuccess)

/// @nodoc
class _$FeatureProgramSuccess implements FeatureProgramSuccess {
  const _$FeatureProgramSuccess(this.data) : assert(data != null);

  @override
  final FeatureProgramSuccessData data;

  @override
  String toString() {
    return 'FeatureProgramState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeatureProgramSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $FeatureProgramSuccessCopyWith<FeatureProgramSuccess> get copyWith =>
      _$FeatureProgramSuccessCopyWithImpl<FeatureProgramSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
    TResult error(),
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
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramSuccess
    implements FeatureProgramState, FeatureProgramStateGroup, StateSuccess {
  const factory FeatureProgramSuccess(FeatureProgramSuccessData data) =
      _$FeatureProgramSuccess;

  FeatureProgramSuccessData get data;
  $FeatureProgramSuccessCopyWith<FeatureProgramSuccess> get copyWith;
}

/// @nodoc
abstract class $FeatureProgramErrorCopyWith<$Res> {
  factory $FeatureProgramErrorCopyWith(
          FeatureProgramError value, $Res Function(FeatureProgramError) then) =
      _$FeatureProgramErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramErrorCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramErrorCopyWith<$Res> {
  _$FeatureProgramErrorCopyWithImpl(
      FeatureProgramError _value, $Res Function(FeatureProgramError) _then)
      : super(_value, (v) => _then(v as FeatureProgramError));

  @override
  FeatureProgramError get _value => super._value as FeatureProgramError;
}

@Implements(FeatureProgramStateGroup)
@Implements(StateError)

/// @nodoc
class _$FeatureProgramError implements FeatureProgramError {
  const _$FeatureProgramError();

  @override
  String toString() {
    return 'FeatureProgramState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeatureProgramError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult resultEmpty(),
    TResult success(FeatureProgramSuccessData data),
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
    @required TResult preInitialized(FeatureProgramPreInitialized value),
    @required TResult loading(FeatureProgramLoading value),
    @required TResult resultEmpty(FeatureProgramResultEmpty value),
    @required TResult success(FeatureProgramSuccess value),
    @required TResult error(FeatureProgramError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(FeatureProgramPreInitialized value),
    TResult loading(FeatureProgramLoading value),
    TResult resultEmpty(FeatureProgramResultEmpty value),
    TResult success(FeatureProgramSuccess value),
    TResult error(FeatureProgramError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FeatureProgramError
    implements FeatureProgramState, FeatureProgramStateGroup, StateError {
  const factory FeatureProgramError() = _$FeatureProgramError;
}
