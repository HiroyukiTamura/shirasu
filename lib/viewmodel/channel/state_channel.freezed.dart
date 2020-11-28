// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChannelDataResultTearOff {
  const _$ChannelDataResultTearOff();

// ignore: unused_element
  ChannelPreInitialized preInitialized() {
    return const ChannelPreInitialized();
  }

// ignore: unused_element
  ChannelLoading loading() {
    return const ChannelLoading();
  }

// ignore: unused_element
  ChannelSuccess success(ChannelSuccessData data) {
    return ChannelSuccess(
      data,
    );
  }

// ignore: unused_element
  ChannelError error() {
    return const ChannelError();
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelDataResult = _$ChannelDataResultTearOff();

/// @nodoc
mixin _$ChannelDataResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelSuccessData data),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelSuccessData data),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(ChannelPreInitialized value),
    @required TResult loading(ChannelLoading value),
    @required TResult success(ChannelSuccess value),
    @required TResult error(ChannelError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(ChannelPreInitialized value),
    TResult loading(ChannelLoading value),
    TResult success(ChannelSuccess value),
    TResult error(ChannelError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChannelDataResultCopyWith<$Res> {
  factory $ChannelDataResultCopyWith(
          ChannelDataResult value, $Res Function(ChannelDataResult) then) =
      _$ChannelDataResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelDataResultCopyWithImpl<$Res>
    implements $ChannelDataResultCopyWith<$Res> {
  _$ChannelDataResultCopyWithImpl(this._value, this._then);

  final ChannelDataResult _value;
  // ignore: unused_field
  final $Res Function(ChannelDataResult) _then;
}

/// @nodoc
abstract class $ChannelPreInitializedCopyWith<$Res> {
  factory $ChannelPreInitializedCopyWith(ChannelPreInitialized value,
          $Res Function(ChannelPreInitialized) then) =
      _$ChannelPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelPreInitializedCopyWithImpl<$Res>
    extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $ChannelPreInitializedCopyWith<$Res> {
  _$ChannelPreInitializedCopyWithImpl(
      ChannelPreInitialized _value, $Res Function(ChannelPreInitialized) _then)
      : super(_value, (v) => _then(v as ChannelPreInitialized));

  @override
  ChannelPreInitialized get _value => super._value as ChannelPreInitialized;
}

@Implements(ChannelBaseStateGroup)
@Implements(StatePreInitialized)

/// @nodoc
class _$ChannelPreInitialized implements ChannelPreInitialized {
  const _$ChannelPreInitialized();

  @override
  String toString() {
    return 'ChannelDataResult.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChannelPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelSuccessData data),
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
    @required TResult preInitialized(ChannelPreInitialized value),
    @required TResult loading(ChannelLoading value),
    @required TResult success(ChannelSuccess value),
    @required TResult error(ChannelError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(ChannelPreInitialized value),
    TResult loading(ChannelLoading value),
    TResult success(ChannelSuccess value),
    TResult error(ChannelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class ChannelPreInitialized
    implements ChannelDataResult, ChannelBaseStateGroup, StatePreInitialized {
  const factory ChannelPreInitialized() = _$ChannelPreInitialized;
}

/// @nodoc
abstract class $ChannelLoadingCopyWith<$Res> {
  factory $ChannelLoadingCopyWith(
          ChannelLoading value, $Res Function(ChannelLoading) then) =
      _$ChannelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelLoadingCopyWithImpl<$Res>
    extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $ChannelLoadingCopyWith<$Res> {
  _$ChannelLoadingCopyWithImpl(
      ChannelLoading _value, $Res Function(ChannelLoading) _then)
      : super(_value, (v) => _then(v as ChannelLoading));

  @override
  ChannelLoading get _value => super._value as ChannelLoading;
}

@Implements(ChannelBaseStateGroup)
@Implements(StateLoading)

/// @nodoc
class _$ChannelLoading implements ChannelLoading {
  const _$ChannelLoading();

  @override
  String toString() {
    return 'ChannelDataResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChannelLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelSuccessData data),
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
    @required TResult preInitialized(ChannelPreInitialized value),
    @required TResult loading(ChannelLoading value),
    @required TResult success(ChannelSuccess value),
    @required TResult error(ChannelError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(ChannelPreInitialized value),
    TResult loading(ChannelLoading value),
    TResult success(ChannelSuccess value),
    TResult error(ChannelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChannelLoading
    implements ChannelDataResult, ChannelBaseStateGroup, StateLoading {
  const factory ChannelLoading() = _$ChannelLoading;
}

/// @nodoc
abstract class $ChannelSuccessCopyWith<$Res> {
  factory $ChannelSuccessCopyWith(
          ChannelSuccess value, $Res Function(ChannelSuccess) then) =
      _$ChannelSuccessCopyWithImpl<$Res>;
  $Res call({ChannelSuccessData data});
}

/// @nodoc
class _$ChannelSuccessCopyWithImpl<$Res>
    extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $ChannelSuccessCopyWith<$Res> {
  _$ChannelSuccessCopyWithImpl(
      ChannelSuccess _value, $Res Function(ChannelSuccess) _then)
      : super(_value, (v) => _then(v as ChannelSuccess));

  @override
  ChannelSuccess get _value => super._value as ChannelSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ChannelSuccess(
      data == freezed ? _value.data : data as ChannelSuccessData,
    ));
  }
}

@Implements(ChannelBaseStateGroup)
@Implements(StateSuccess)

/// @nodoc
class _$ChannelSuccess implements ChannelSuccess {
  const _$ChannelSuccess(this.data) : assert(data != null);

  @override
  final ChannelSuccessData data;

  @override
  String toString() {
    return 'ChannelDataResult.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChannelSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $ChannelSuccessCopyWith<ChannelSuccess> get copyWith =>
      _$ChannelSuccessCopyWithImpl<ChannelSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelSuccessData data),
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
    @required TResult preInitialized(ChannelPreInitialized value),
    @required TResult loading(ChannelLoading value),
    @required TResult success(ChannelSuccess value),
    @required TResult error(ChannelError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(ChannelPreInitialized value),
    TResult loading(ChannelLoading value),
    TResult success(ChannelSuccess value),
    TResult error(ChannelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChannelSuccess
    implements ChannelDataResult, ChannelBaseStateGroup, StateSuccess {
  const factory ChannelSuccess(ChannelSuccessData data) = _$ChannelSuccess;

  ChannelSuccessData get data;
  $ChannelSuccessCopyWith<ChannelSuccess> get copyWith;
}

/// @nodoc
abstract class $ChannelErrorCopyWith<$Res> {
  factory $ChannelErrorCopyWith(
          ChannelError value, $Res Function(ChannelError) then) =
      _$ChannelErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelErrorCopyWithImpl<$Res>
    extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $ChannelErrorCopyWith<$Res> {
  _$ChannelErrorCopyWithImpl(
      ChannelError _value, $Res Function(ChannelError) _then)
      : super(_value, (v) => _then(v as ChannelError));

  @override
  ChannelError get _value => super._value as ChannelError;
}

@Implements(ChannelBaseStateGroup)
@Implements(StateError)

/// @nodoc
class _$ChannelError implements ChannelError {
  const _$ChannelError();

  @override
  String toString() {
    return 'ChannelDataResult.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChannelError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelSuccessData data),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelSuccessData data),
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
    @required TResult preInitialized(ChannelPreInitialized value),
    @required TResult loading(ChannelLoading value),
    @required TResult success(ChannelSuccess value),
    @required TResult error(ChannelError value),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(ChannelPreInitialized value),
    TResult loading(ChannelLoading value),
    TResult success(ChannelSuccess value),
    TResult error(ChannelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChannelError
    implements ChannelDataResult, ChannelBaseStateGroup, StateError {
  const factory ChannelError() = _$ChannelError;
}
