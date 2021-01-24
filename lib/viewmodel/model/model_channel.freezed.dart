// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChannelModelTearOff {
  const _$ChannelModelTearOff();

// ignore: unused_element
  _ChannelModel call(
      {@required ChannelDataResult result, @required bool loading}) {
    return _ChannelModel(
      result: result,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelModel = _$ChannelModelTearOff();

/// @nodoc
mixin _$ChannelModel {
  ChannelDataResult get result;
  bool get loading;

  $ChannelModelCopyWith<ChannelModel> get copyWith;
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res>;
  $Res call({ChannelDataResult result, bool loading});

  $ChannelDataResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res> implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  final ChannelModel _value;
  // ignore: unused_field
  final $Res Function(ChannelModel) _then;

  @override
  $Res call({
    Object result = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as ChannelDataResult,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }

  @override
  $ChannelDataResultCopyWith<$Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $ChannelDataResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$ChannelModelCopyWith<$Res>
    implements $ChannelModelCopyWith<$Res> {
  factory _$ChannelModelCopyWith(
          _ChannelModel value, $Res Function(_ChannelModel) then) =
      __$ChannelModelCopyWithImpl<$Res>;
  @override
  $Res call({ChannelDataResult result, bool loading});

  @override
  $ChannelDataResultCopyWith<$Res> get result;
}

/// @nodoc
class __$ChannelModelCopyWithImpl<$Res> extends _$ChannelModelCopyWithImpl<$Res>
    implements _$ChannelModelCopyWith<$Res> {
  __$ChannelModelCopyWithImpl(
      _ChannelModel _value, $Res Function(_ChannelModel) _then)
      : super(_value, (v) => _then(v as _ChannelModel));

  @override
  _ChannelModel get _value => super._value as _ChannelModel;

  @override
  $Res call({
    Object result = freezed,
    Object loading = freezed,
  }) {
    return _then(_ChannelModel(
      result: result == freezed ? _value.result : result as ChannelDataResult,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_ChannelModel extends _ChannelModel {
  const _$_ChannelModel({@required this.result, @required this.loading})
      : assert(result != null),
        assert(loading != null),
        assert(!loading || (result is Success && loading)),
        super._();

  @override
  final ChannelDataResult result;
  @override
  final bool loading;

  @override
  String toString() {
    return 'ChannelModel(result: $result, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(loading);

  @override
  _$ChannelModelCopyWith<_ChannelModel> get copyWith =>
      __$ChannelModelCopyWithImpl<_ChannelModel>(this, _$identity);
}

abstract class _ChannelModel extends ChannelModel {
  const _ChannelModel._() : super._();
  const factory _ChannelModel(
      {@required ChannelDataResult result,
      @required bool loading}) = _$_ChannelModel;

  @override
  ChannelDataResult get result;
  @override
  bool get loading;
  @override
  _$ChannelModelCopyWith<_ChannelModel> get copyWith;
}

/// @nodoc
class _$ChannelDataResultTearOff {
  const _$ChannelDataResultTearOff();

// ignore: unused_element
  PreInitialized preInitialized() {
    return const PreInitialized();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Success success(ChannelData channelData) {
    return Success(
      channelData,
    );
  }

// ignore: unused_element
  Error error() {
    return const Error();
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
    @required TResult success(ChannelData channelData),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelData channelData),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitialized value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult error(Error value),
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
abstract class $PreInitializedCopyWith<$Res> {
  factory $PreInitializedCopyWith(
          PreInitialized value, $Res Function(PreInitialized) then) =
      _$PreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreInitializedCopyWithImpl<$Res>
    extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $PreInitializedCopyWith<$Res> {
  _$PreInitializedCopyWithImpl(
      PreInitialized _value, $Res Function(PreInitialized) _then)
      : super(_value, (v) => _then(v as PreInitialized));

  @override
  PreInitialized get _value => super._value as PreInitialized;
}

/// @nodoc
class _$PreInitialized implements PreInitialized {
  const _$PreInitialized();

  @override
  String toString() {
    return 'ChannelDataResult.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelData channelData),
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
    TResult success(ChannelData channelData),
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
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult error(Error value),
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
    TResult preInitialized(PreInitialized value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class PreInitialized implements ChannelDataResult {
  const factory PreInitialized() = _$PreInitialized;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ChannelDataResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelData channelData),
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
    TResult success(ChannelData channelData),
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
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult error(Error value),
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
    TResult preInitialized(PreInitialized value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChannelDataResult {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({ChannelData channelData});

  $ChannelDataCopyWith<$Res> get channelData;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object channelData = freezed,
  }) {
    return _then(Success(
      channelData == freezed ? _value.channelData : channelData as ChannelData,
    ));
  }

  @override
  $ChannelDataCopyWith<$Res> get channelData {
    if (_value.channelData == null) {
      return null;
    }
    return $ChannelDataCopyWith<$Res>(_value.channelData, (value) {
      return _then(_value.copyWith(channelData: value));
    });
  }
}

/// @nodoc
class _$Success implements Success {
  const _$Success(this.channelData) : assert(channelData != null);

  @override
  final ChannelData channelData;

  @override
  String toString() {
    return 'ChannelDataResult.success(channelData: $channelData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.channelData, channelData) ||
                const DeepCollectionEquality()
                    .equals(other.channelData, channelData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(channelData);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelData channelData),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(channelData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ChannelData channelData),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(channelData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult error(Error value),
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
    TResult preInitialized(PreInitialized value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ChannelDataResult {
  const factory Success(ChannelData channelData) = _$Success;

  ChannelData get channelData;
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ChannelDataResultCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc
class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'ChannelDataResult.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(ChannelData channelData),
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
    TResult success(ChannelData channelData),
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
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult error(Error value),
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
    TResult preInitialized(PreInitialized value),
    TResult loading(Loading value),
    TResult success(Success value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ChannelDataResult {
  const factory Error() = _$Error;
}
