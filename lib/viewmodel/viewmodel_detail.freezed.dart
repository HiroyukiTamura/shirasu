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
  StateSuccess success(ProgramDetailData data) {
    return StateSuccess(
      data,
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ProgramDetailData data),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(ProgramDetailData data),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(PreInitialized value),
    @required Result success(StateSuccess value),
    @required Result error(StateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result preInitialized(PreInitialized value),
    Result success(StateSuccess value),
    Result error(StateError value),
    @required Result orElse(),
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ProgramDetailData data),
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
    Result success(ProgramDetailData data),
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
    Result preInitialized(PreInitialized value),
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

abstract class PreInitialized implements DetailModelState {
  const factory PreInitialized() = _$PreInitialized;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({ProgramDetailData data});

  $ProgramDetailDataCopyWith<$Res> get data;
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
    Object data = freezed,
  }) {
    return _then(StateSuccess(
      data == freezed ? _value.data : data as ProgramDetailData,
    ));
  }

  @override
  $ProgramDetailDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ProgramDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(this.data) : assert(data != null);

  @override
  final ProgramDetailData data;

  @override
  String toString() {
    return 'DetailModelState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ProgramDetailData data),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(ProgramDetailData data),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result preInitialized(PreInitialized value),
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
    Result preInitialized(PreInitialized value),
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

abstract class StateSuccess implements DetailModelState {
  const factory StateSuccess(ProgramDetailData data) = _$StateSuccess;

  ProgramDetailData get data;
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
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(ProgramDetailData data),
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
    Result success(ProgramDetailData data),
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
    Result preInitialized(PreInitialized value),
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

abstract class StateError implements DetailModelState {
  const factory StateError() = _$StateError;
}