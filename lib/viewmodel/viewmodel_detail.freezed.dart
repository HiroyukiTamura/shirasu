// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DetailModelStateTearOff {
  const _$DetailModelStateTearOff();

// ignore: unused_element
  PreInitialized preInitialized() {
    return const PreInitialized();
  }

// ignore: unused_element
  StateLoading loading() {
    return const StateLoading();
  }

// ignore: unused_element
  StateSuccess success(
      ProgramDetailData programDetailData, ChannelData channelData) {
    return StateSuccess(
      programDetailData,
      channelData,
    );
  }

// ignore: unused_element
  StateError error() {
    return const StateError();
  }
}

/// @nodoc
// ignore: unused_element
const $DetailModelState = _$DetailModelStateTearOff();

/// @nodoc
mixin _$DetailModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required
        TResult success(
            ProgramDetailData programDetailData, ChannelData channelData),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(
        ProgramDetailData programDetailData, ChannelData channelData),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitialized value),
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailModelStateCopyWith<$Res> {
  factory $DetailModelStateCopyWith(
          DetailModelState value, $Res Function(DetailModelState) then) =
      _$DetailModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailModelStateCopyWithImpl<$Res>
    implements $DetailModelStateCopyWith<$Res> {
  _$DetailModelStateCopyWithImpl(this._value, this._then);

  final DetailModelState _value;
  // ignore: unused_field
  final $Res Function(DetailModelState) _then;
}

/// @nodoc
abstract class $PreInitializedCopyWith<$Res> {
  factory $PreInitializedCopyWith(
          PreInitialized value, $Res Function(PreInitialized) then) =
      _$PreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreInitializedCopyWithImpl<$Res>
    extends _$DetailModelStateCopyWithImpl<$Res>
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
    return 'DetailModelState.preInitialized()';
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
    @required
        TResult success(
            ProgramDetailData programDetailData, ChannelData channelData),
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
    TResult success(
        ProgramDetailData programDetailData, ChannelData channelData),
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
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class PreInitialized implements DetailModelState {
  const factory PreInitialized() = _$PreInitialized;
}

/// @nodoc
abstract class $StateLoadingCopyWith<$Res> {
  factory $StateLoadingCopyWith(
          StateLoading value, $Res Function(StateLoading) then) =
      _$StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateLoadingCopyWithImpl<$Res>
    extends _$DetailModelStateCopyWithImpl<$Res>
    implements $StateLoadingCopyWith<$Res> {
  _$StateLoadingCopyWithImpl(
      StateLoading _value, $Res Function(StateLoading) _then)
      : super(_value, (v) => _then(v as StateLoading));

  @override
  StateLoading get _value => super._value as StateLoading;
}

/// @nodoc
class _$StateLoading implements StateLoading {
  const _$StateLoading();

  @override
  String toString() {
    return 'DetailModelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required
        TResult success(
            ProgramDetailData programDetailData, ChannelData channelData),
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
    TResult success(
        ProgramDetailData programDetailData, ChannelData channelData),
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
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateLoading implements DetailModelState {
  const factory StateLoading() = _$StateLoading;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({ProgramDetailData programDetailData, ChannelData channelData});

  $ProgramDetailDataCopyWith<$Res> get programDetailData;
  $ChannelDataCopyWith<$Res> get channelData;
}

/// @nodoc
class _$StateSuccessCopyWithImpl<$Res>
    extends _$DetailModelStateCopyWithImpl<$Res>
    implements $StateSuccessCopyWith<$Res> {
  _$StateSuccessCopyWithImpl(
      StateSuccess _value, $Res Function(StateSuccess) _then)
      : super(_value, (v) => _then(v as StateSuccess));

  @override
  StateSuccess get _value => super._value as StateSuccess;

  @override
  $Res call({
    Object programDetailData = freezed,
    Object channelData = freezed,
  }) {
    return _then(StateSuccess(
      programDetailData == freezed
          ? _value.programDetailData
          : programDetailData as ProgramDetailData,
      channelData == freezed ? _value.channelData : channelData as ChannelData,
    ));
  }

  @override
  $ProgramDetailDataCopyWith<$Res> get programDetailData {
    if (_value.programDetailData == null) {
      return null;
    }
    return $ProgramDetailDataCopyWith<$Res>(_value.programDetailData, (value) {
      return _then(_value.copyWith(programDetailData: value));
    });
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
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(this.programDetailData, this.channelData)
      : assert(programDetailData != null),
        assert(channelData != null);

  @override
  final ProgramDetailData programDetailData;
  @override
  final ChannelData channelData;

  @override
  String toString() {
    return 'DetailModelState.success(programDetailData: $programDetailData, channelData: $channelData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSuccess &&
            (identical(other.programDetailData, programDetailData) ||
                const DeepCollectionEquality()
                    .equals(other.programDetailData, programDetailData)) &&
            (identical(other.channelData, channelData) ||
                const DeepCollectionEquality()
                    .equals(other.channelData, channelData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programDetailData) ^
      const DeepCollectionEquality().hash(channelData);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required
        TResult success(
            ProgramDetailData programDetailData, ChannelData channelData),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(programDetailData, channelData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(
        ProgramDetailData programDetailData, ChannelData channelData),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(programDetailData, channelData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitialized value),
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StateSuccess implements DetailModelState {
  const factory StateSuccess(
          ProgramDetailData programDetailData, ChannelData channelData) =
      _$StateSuccess;

  ProgramDetailData get programDetailData;
  ChannelData get channelData;
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
    extends _$DetailModelStateCopyWithImpl<$Res>
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
    return 'DetailModelState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required
        TResult success(
            ProgramDetailData programDetailData, ChannelData channelData),
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
    TResult success(
        ProgramDetailData programDetailData, ChannelData channelData),
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
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateError implements DetailModelState {
  const factory StateError() = _$StateError;
}
