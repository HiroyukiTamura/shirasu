// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChannelDataResultTearOff {
  const _$ChannelDataResultTearOff();

// ignore: unused_element
  PreInitialized preInitialized() {
    return const PreInitialized();
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ChannelData channelData),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(ChannelData channelData),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(PreInitialized value),
    @required Result success(Success value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(PreInitialized value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ChannelData channelData),
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
    Result success(ChannelData channelData),
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
    @required Result preInitialized(PreInitialized value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(PreInitialized value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ChannelData channelData),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(channelData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(ChannelData channelData),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(channelData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(PreInitialized value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(PreInitialized value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ChannelData channelData),
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
    Result success(ChannelData channelData),
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
    @required Result preInitialized(PreInitialized value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(PreInitialized value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
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
