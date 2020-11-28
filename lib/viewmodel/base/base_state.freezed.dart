// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$$BaseStateTearOff {
  const _$$BaseStateTearOff();

// ignore: unused_element
  $BaseStatePreInitialized preInitialized() {
    return const $BaseStatePreInitialized();
  }

// ignore: unused_element
  $BaseStateLoading loading() {
    return const $BaseStateLoading();
  }

// ignore: unused_element
  $BaseStateError error() {
    return const $BaseStateError();
  }
}

/// @nodoc
// ignore: unused_element
const $$BaseState = _$$BaseStateTearOff();

/// @nodoc
mixin _$$BaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized($BaseStatePreInitialized value),
    @required TResult loading($BaseStateLoading value),
    @required TResult error($BaseStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized($BaseStatePreInitialized value),
    TResult loading($BaseStateLoading value),
    TResult error($BaseStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $$BaseStateCopyWith<$Res> {
  factory $$BaseStateCopyWith(
          $BaseState value, $Res Function($BaseState) then) =
      _$$BaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$$BaseStateCopyWithImpl<$Res> implements $$BaseStateCopyWith<$Res> {
  _$$BaseStateCopyWithImpl(this._value, this._then);

  final $BaseState _value;
  // ignore: unused_field
  final $Res Function($BaseState) _then;
}

/// @nodoc
abstract class $$BaseStatePreInitializedCopyWith<$Res> {
  factory $$BaseStatePreInitializedCopyWith($BaseStatePreInitialized value,
          $Res Function($BaseStatePreInitialized) then) =
      _$$BaseStatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$$BaseStatePreInitializedCopyWithImpl<$Res>
    extends _$$BaseStateCopyWithImpl<$Res>
    implements $$BaseStatePreInitializedCopyWith<$Res> {
  _$$BaseStatePreInitializedCopyWithImpl($BaseStatePreInitialized _value,
      $Res Function($BaseStatePreInitialized) _then)
      : super(_value, (v) => _then(v as $BaseStatePreInitialized));

  @override
  $BaseStatePreInitialized get _value =>
      super._value as $BaseStatePreInitialized;
}

@Implements(StatePreInitialized)

/// @nodoc
class _$$BaseStatePreInitialized implements $BaseStatePreInitialized {
  const _$$BaseStatePreInitialized();

  @override
  String toString() {
    return '$BaseState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is $BaseStatePreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
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
    @required TResult preInitialized($BaseStatePreInitialized value),
    @required TResult loading($BaseStateLoading value),
    @required TResult error($BaseStateError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized($BaseStatePreInitialized value),
    TResult loading($BaseStateLoading value),
    TResult error($BaseStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class $BaseStatePreInitialized
    implements $BaseState, StatePreInitialized {
  const factory $BaseStatePreInitialized() = _$$BaseStatePreInitialized;
}

/// @nodoc
abstract class $$BaseStateLoadingCopyWith<$Res> {
  factory $$BaseStateLoadingCopyWith(
          $BaseStateLoading value, $Res Function($BaseStateLoading) then) =
      _$$BaseStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$$BaseStateLoadingCopyWithImpl<$Res>
    extends _$$BaseStateCopyWithImpl<$Res>
    implements $$BaseStateLoadingCopyWith<$Res> {
  _$$BaseStateLoadingCopyWithImpl(
      $BaseStateLoading _value, $Res Function($BaseStateLoading) _then)
      : super(_value, (v) => _then(v as $BaseStateLoading));

  @override
  $BaseStateLoading get _value => super._value as $BaseStateLoading;
}

@Implements(StateLoading)

/// @nodoc
class _$$BaseStateLoading implements $BaseStateLoading {
  const _$$BaseStateLoading();

  @override
  String toString() {
    return '$BaseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is $BaseStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
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
    @required TResult preInitialized($BaseStatePreInitialized value),
    @required TResult loading($BaseStateLoading value),
    @required TResult error($BaseStateError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized($BaseStatePreInitialized value),
    TResult loading($BaseStateLoading value),
    TResult error($BaseStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class $BaseStateLoading implements $BaseState, StateLoading {
  const factory $BaseStateLoading() = _$$BaseStateLoading;
}

/// @nodoc
abstract class $$BaseStateErrorCopyWith<$Res> {
  factory $$BaseStateErrorCopyWith(
          $BaseStateError value, $Res Function($BaseStateError) then) =
      _$$BaseStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$$BaseStateErrorCopyWithImpl<$Res> extends _$$BaseStateCopyWithImpl<$Res>
    implements $$BaseStateErrorCopyWith<$Res> {
  _$$BaseStateErrorCopyWithImpl(
      $BaseStateError _value, $Res Function($BaseStateError) _then)
      : super(_value, (v) => _then(v as $BaseStateError));

  @override
  $BaseStateError get _value => super._value as $BaseStateError;
}

@Implements(StateError)

/// @nodoc
class _$$BaseStateError implements $BaseStateError {
  const _$$BaseStateError();

  @override
  String toString() {
    return '$BaseState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is $BaseStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
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
    @required TResult preInitialized($BaseStatePreInitialized value),
    @required TResult loading($BaseStateLoading value),
    @required TResult error($BaseStateError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized($BaseStatePreInitialized value),
    TResult loading($BaseStateLoading value),
    TResult error($BaseStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class $BaseStateError implements $BaseState, StateError {
  const factory $BaseStateError() = _$$BaseStateError;
}
