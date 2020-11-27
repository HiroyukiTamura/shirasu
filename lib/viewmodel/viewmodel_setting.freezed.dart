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
  StateLoading loading() {
    return const StateLoading();
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
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data, String locationStr),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(Viewer data, String locationStr),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult loading(StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(StatePreInitialized value),
    TResult loading(StateLoading value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
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
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data, String locationStr),
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
    TResult success(Viewer data, String locationStr),
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
    @required TResult preInitialized(StatePreInitialized value),
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
    TResult preInitialized(StatePreInitialized value),
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

abstract class StatePreInitialized implements SettingModelState {
  const factory StatePreInitialized() = _$StatePreInitialized;
}

/// @nodoc
abstract class $StateLoadingCopyWith<$Res> {
  factory $StateLoadingCopyWith(
          StateLoading value, $Res Function(StateLoading) then) =
      _$StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateLoadingCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
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
    return 'SettingModelState.loading()';
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
    @required TResult success(Viewer data, String locationStr),
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
    TResult success(Viewer data, String locationStr),
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
    @required TResult preInitialized(StatePreInitialized value),
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
    TResult preInitialized(StatePreInitialized value),
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

abstract class StateLoading implements SettingModelState {
  const factory StateLoading() = _$StateLoading;
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
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data, String locationStr),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(data, locationStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(Viewer data, String locationStr),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data, locationStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(StatePreInitialized value),
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
    TResult preInitialized(StatePreInitialized value),
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
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data, String locationStr),
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
    TResult success(Viewer data, String locationStr),
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
    @required TResult preInitialized(StatePreInitialized value),
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
    TResult preInitialized(StatePreInitialized value),
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

abstract class StateError implements SettingModelState {
  const factory StateError() = _$StateError;
}

/// @nodoc
class _$EditedUserInfoTearOff {
  const _$EditedUserInfoTearOff();

// ignore: unused_element
  _EditedUserInfo call({DateTime birthDate, String jobCode}) {
    return _EditedUserInfo(
      birthDate: birthDate,
      jobCode: jobCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditedUserInfo = _$EditedUserInfoTearOff();

/// @nodoc
mixin _$EditedUserInfo {
  DateTime get birthDate;
  String get jobCode;

  $EditedUserInfoCopyWith<EditedUserInfo> get copyWith;
}

/// @nodoc
abstract class $EditedUserInfoCopyWith<$Res> {
  factory $EditedUserInfoCopyWith(
          EditedUserInfo value, $Res Function(EditedUserInfo) then) =
      _$EditedUserInfoCopyWithImpl<$Res>;
  $Res call({DateTime birthDate, String jobCode});
}

/// @nodoc
class _$EditedUserInfoCopyWithImpl<$Res>
    implements $EditedUserInfoCopyWith<$Res> {
  _$EditedUserInfoCopyWithImpl(this._value, this._then);

  final EditedUserInfo _value;
  // ignore: unused_field
  final $Res Function(EditedUserInfo) _then;

  @override
  $Res call({
    Object birthDate = freezed,
    Object jobCode = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      jobCode: jobCode == freezed ? _value.jobCode : jobCode as String,
    ));
  }
}

/// @nodoc
abstract class _$EditedUserInfoCopyWith<$Res>
    implements $EditedUserInfoCopyWith<$Res> {
  factory _$EditedUserInfoCopyWith(
          _EditedUserInfo value, $Res Function(_EditedUserInfo) then) =
      __$EditedUserInfoCopyWithImpl<$Res>;
  @override
  $Res call({DateTime birthDate, String jobCode});
}

/// @nodoc
class __$EditedUserInfoCopyWithImpl<$Res>
    extends _$EditedUserInfoCopyWithImpl<$Res>
    implements _$EditedUserInfoCopyWith<$Res> {
  __$EditedUserInfoCopyWithImpl(
      _EditedUserInfo _value, $Res Function(_EditedUserInfo) _then)
      : super(_value, (v) => _then(v as _EditedUserInfo));

  @override
  _EditedUserInfo get _value => super._value as _EditedUserInfo;

  @override
  $Res call({
    Object birthDate = freezed,
    Object jobCode = freezed,
  }) {
    return _then(_EditedUserInfo(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      jobCode: jobCode == freezed ? _value.jobCode : jobCode as String,
    ));
  }
}

/// @nodoc
class _$_EditedUserInfo extends _EditedUserInfo {
  const _$_EditedUserInfo({this.birthDate, this.jobCode}) : super._();

  @override
  final DateTime birthDate;
  @override
  final String jobCode;

  @override
  String toString() {
    return 'EditedUserInfo(birthDate: $birthDate, jobCode: $jobCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditedUserInfo &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.jobCode, jobCode) ||
                const DeepCollectionEquality().equals(other.jobCode, jobCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(jobCode);

  @override
  _$EditedUserInfoCopyWith<_EditedUserInfo> get copyWith =>
      __$EditedUserInfoCopyWithImpl<_EditedUserInfo>(this, _$identity);
}

abstract class _EditedUserInfo extends EditedUserInfo {
  const _EditedUserInfo._() : super._();
  const factory _EditedUserInfo({DateTime birthDate, String jobCode}) =
      _$_EditedUserInfo;

  @override
  DateTime get birthDate;
  @override
  String get jobCode;
  @override
  _$EditedUserInfoCopyWith<_EditedUserInfo> get copyWith;
}
