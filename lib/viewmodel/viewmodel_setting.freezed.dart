// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingModelStateTearOff {
  const _$SettingModelStateTearOff();

// ignore: unused_element
  StatePreInitialized preInitialized() {
    return const StatePreInitialized();
  }

// ignore: unused_element
  StateSuccess success(Viewer data, String locationStr) {
    return StateSuccess(
      data,
      locationStr,
    );
  }

// ignore: unused_element
  StateError error() {
    return const StateError();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingModelState = _$SettingModelStateTearOff();

/// @nodoc
mixin _$SettingModelState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(Viewer data, String locationStr),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(Viewer data, String locationStr),
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
abstract class $SettingModelStateCopyWith<$Res> {
  factory $SettingModelStateCopyWith(
          SettingModelState value, $Res Function(SettingModelState) then) =
      _$SettingModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingModelStateCopyWithImpl<$Res>
    implements $SettingModelStateCopyWith<$Res> {
  _$SettingModelStateCopyWithImpl(this._value, this._then);

  final SettingModelState _value;
  // ignore: unused_field
  final $Res Function(SettingModelState) _then;
}

/// @nodoc
abstract class $StatePreInitializedCopyWith<$Res> {
  factory $StatePreInitializedCopyWith(
          StatePreInitialized value, $Res Function(StatePreInitialized) then) =
      _$StatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePreInitializedCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
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
    return 'SettingModelState.preInitialized()';
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
    @required Result success(Viewer data, String locationStr),
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
    Result success(Viewer data, String locationStr),
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

abstract class StatePreInitialized implements SettingModelState {
  const factory StatePreInitialized() = _$StatePreInitialized;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({Viewer data, String locationStr});

  $ViewerCopyWith<$Res> get data;
}

/// @nodoc
class _$StateSuccessCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
    implements $StateSuccessCopyWith<$Res> {
  _$StateSuccessCopyWithImpl(
      StateSuccess _value, $Res Function(StateSuccess) _then)
      : super(_value, (v) => _then(v as StateSuccess));

  @override
  StateSuccess get _value => super._value as StateSuccess;

  @override
  $Res call({
    Object data = freezed,
    Object locationStr = freezed,
  }) {
    return _then(StateSuccess(
      data == freezed ? _value.data : data as Viewer,
      locationStr == freezed ? _value.locationStr : locationStr as String,
    ));
  }

  @override
  $ViewerCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ViewerCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(this.data, this.locationStr)
      : assert(data != null),
        assert(locationStr != null);

  @override
  final Viewer data;
  @override
  final String locationStr;

  @override
  String toString() {
    return 'SettingModelState.success(data: $data, locationStr: $locationStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.locationStr, locationStr) ||
                const DeepCollectionEquality()
                    .equals(other.locationStr, locationStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(locationStr);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result preInitialized(),
    @required Result success(Viewer data, String locationStr),
    @required Result error(),
  }) {
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(data, locationStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result preInitialized(),
    Result success(Viewer data, String locationStr),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data, locationStr);
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

abstract class StateSuccess implements SettingModelState {
  const factory StateSuccess(Viewer data, String locationStr) = _$StateSuccess;

  Viewer get data;
  String get locationStr;
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
    extends _$SettingModelStateCopyWithImpl<$Res>
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
    return 'SettingModelState.error()';
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
    @required Result success(Viewer data, String locationStr),
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
    Result success(Viewer data, String locationStr),
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

abstract class StateError implements SettingModelState {
  const factory StateError() = _$StateError;
}
