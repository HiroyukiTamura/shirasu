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
  _PreInitialized preInitialized() {
    return const _PreInitialized();
  }

// ignore: unused_element
  Success success(ChannelDataWrapper channelData) {
    return Success(
      channelData,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelModel = _$ChannelModelTearOff();

/// @nodoc
mixin _$ChannelModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult success(ChannelDataWrapper channelData),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult success(ChannelDataWrapper channelData),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_PreInitialized value),
    @required TResult success(Success value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitialized value),
    TResult success(Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res> implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  final ChannelModel _value;
  // ignore: unused_field
  final $Res Function(ChannelModel) _then;
}

/// @nodoc
abstract class _$PreInitializedCopyWith<$Res> {
  factory _$PreInitializedCopyWith(
          _PreInitialized value, $Res Function(_PreInitialized) then) =
      __$PreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PreInitializedCopyWithImpl<$Res>
    extends _$ChannelModelCopyWithImpl<$Res>
    implements _$PreInitializedCopyWith<$Res> {
  __$PreInitializedCopyWithImpl(
      _PreInitialized _value, $Res Function(_PreInitialized) _then)
      : super(_value, (v) => _then(v as _PreInitialized));

  @override
  _PreInitialized get _value => super._value as _PreInitialized;
}

/// @nodoc
class _$_PreInitialized extends _PreInitialized {
  const _$_PreInitialized() : super._();

  @override
  String toString() {
    return 'ChannelModel.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult success(ChannelDataWrapper channelData),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult success(ChannelDataWrapper channelData),
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
    @required TResult preInitialized(_PreInitialized value),
    @required TResult success(Success value),
    @required TResult error(_Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitialized value),
    TResult success(Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _PreInitialized extends ChannelModel {
  const _PreInitialized._() : super._();
  const factory _PreInitialized() = _$_PreInitialized;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({ChannelDataWrapper channelData});

  $ChannelDataWrapperCopyWith<$Res> get channelData;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$ChannelModelCopyWithImpl<$Res>
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
      channelData == freezed
          ? _value.channelData
          : channelData as ChannelDataWrapper,
    ));
  }

  @override
  $ChannelDataWrapperCopyWith<$Res> get channelData {
    if (_value.channelData == null) {
      return null;
    }
    return $ChannelDataWrapperCopyWith<$Res>(_value.channelData, (value) {
      return _then(_value.copyWith(channelData: value));
    });
  }
}

/// @nodoc
class _$Success extends Success {
  const _$Success(this.channelData)
      : assert(channelData != null),
        super._();

  @override
  final ChannelDataWrapper channelData;

  @override
  String toString() {
    return 'ChannelModel.success(channelData: $channelData)';
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

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult success(ChannelDataWrapper channelData),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(channelData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult success(ChannelDataWrapper channelData),
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
    @required TResult preInitialized(_PreInitialized value),
    @required TResult success(Success value),
    @required TResult error(_Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitialized value),
    TResult success(Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success extends ChannelModel {
  const Success._() : super._();
  const factory Success(ChannelDataWrapper channelData) = _$Success;

  ChannelDataWrapper get channelData;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ChannelModelCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error extends _Error {
  const _$_Error() : super._();

  @override
  String toString() {
    return 'ChannelModel.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult success(ChannelDataWrapper channelData),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult success(ChannelDataWrapper channelData),
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
    @required TResult preInitialized(_PreInitialized value),
    @required TResult success(Success value),
    @required TResult error(_Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitialized value),
    TResult success(Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends ChannelModel {
  const _Error._() : super._();
  const factory _Error() = _$_Error;
}

/// @nodoc
class _$ChannelDataWrapperTearOff {
  const _$ChannelDataWrapperTearOff();

// ignore: unused_element
  _ChannelDataWrapper call(
      {@required ChannelData data, @required bool loading}) {
    return _ChannelDataWrapper(
      data: data,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChannelDataWrapper = _$ChannelDataWrapperTearOff();

/// @nodoc
mixin _$ChannelDataWrapper {
  ChannelData get data;
  bool get loading;

  @JsonKey(ignore: true)
  $ChannelDataWrapperCopyWith<ChannelDataWrapper> get copyWith;
}

/// @nodoc
abstract class $ChannelDataWrapperCopyWith<$Res> {
  factory $ChannelDataWrapperCopyWith(
          ChannelDataWrapper value, $Res Function(ChannelDataWrapper) then) =
      _$ChannelDataWrapperCopyWithImpl<$Res>;
  $Res call({ChannelData data, bool loading});

  $ChannelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChannelDataWrapperCopyWithImpl<$Res>
    implements $ChannelDataWrapperCopyWith<$Res> {
  _$ChannelDataWrapperCopyWithImpl(this._value, this._then);

  final ChannelDataWrapper _value;
  // ignore: unused_field
  final $Res Function(ChannelDataWrapper) _then;

  @override
  $Res call({
    Object data = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as ChannelData,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }

  @override
  $ChannelDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ChannelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ChannelDataWrapperCopyWith<$Res>
    implements $ChannelDataWrapperCopyWith<$Res> {
  factory _$ChannelDataWrapperCopyWith(
          _ChannelDataWrapper value, $Res Function(_ChannelDataWrapper) then) =
      __$ChannelDataWrapperCopyWithImpl<$Res>;
  @override
  $Res call({ChannelData data, bool loading});

  @override
  $ChannelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$ChannelDataWrapperCopyWithImpl<$Res>
    extends _$ChannelDataWrapperCopyWithImpl<$Res>
    implements _$ChannelDataWrapperCopyWith<$Res> {
  __$ChannelDataWrapperCopyWithImpl(
      _ChannelDataWrapper _value, $Res Function(_ChannelDataWrapper) _then)
      : super(_value, (v) => _then(v as _ChannelDataWrapper));

  @override
  _ChannelDataWrapper get _value => super._value as _ChannelDataWrapper;

  @override
  $Res call({
    Object data = freezed,
    Object loading = freezed,
  }) {
    return _then(_ChannelDataWrapper(
      data: data == freezed ? _value.data : data as ChannelData,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_ChannelDataWrapper implements _ChannelDataWrapper {
  const _$_ChannelDataWrapper({@required this.data, @required this.loading})
      : assert(data != null),
        assert(loading != null);

  @override
  final ChannelData data;
  @override
  final bool loading;

  @override
  String toString() {
    return 'ChannelDataWrapper(data: $data, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelDataWrapper &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ChannelDataWrapperCopyWith<_ChannelDataWrapper> get copyWith =>
      __$ChannelDataWrapperCopyWithImpl<_ChannelDataWrapper>(this, _$identity);
}

abstract class _ChannelDataWrapper implements ChannelDataWrapper {
  const factory _ChannelDataWrapper(
      {@required ChannelData data,
      @required bool loading}) = _$_ChannelDataWrapper;

  @override
  ChannelData get data;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$ChannelDataWrapperCopyWith<_ChannelDataWrapper> get copyWith;
}
