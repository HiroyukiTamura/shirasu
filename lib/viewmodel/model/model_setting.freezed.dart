// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingModelStateTearOff {
  const _$SettingModelStateTearOff();

// ignore: unused_element
  _StatePreInitialized preInitialized() {
    return const _StatePreInitialized();
  }

// ignore: unused_element
  _StateLoading loading() {
    return const _StateLoading();
  }

// ignore: unused_element
  StateSuccess success(Viewer data) {
    return StateSuccess(
      data,
    );
  }

// ignore: unused_element
  _StateError error() {
    return const _StateError();
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
    @required TResult success(Viewer data),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(Viewer data),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_StatePreInitialized value),
    @required TResult loading(_StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_StatePreInitialized value),
    TResult loading(_StateLoading value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
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
abstract class _$StatePreInitializedCopyWith<$Res> {
  factory _$StatePreInitializedCopyWith(_StatePreInitialized value,
          $Res Function(_StatePreInitialized) then) =
      __$StatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StatePreInitializedCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
    implements _$StatePreInitializedCopyWith<$Res> {
  __$StatePreInitializedCopyWithImpl(
      _StatePreInitialized _value, $Res Function(_StatePreInitialized) _then)
      : super(_value, (v) => _then(v as _StatePreInitialized));

  @override
  _StatePreInitialized get _value => super._value as _StatePreInitialized;
}

/// @nodoc
class _$_StatePreInitialized implements _StatePreInitialized {
  const _$_StatePreInitialized();

  @override
  String toString() {
    return 'SettingModelState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatePreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data),
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
    TResult success(Viewer data),
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
    @required TResult preInitialized(_StatePreInitialized value),
    @required TResult loading(_StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
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
    TResult preInitialized(_StatePreInitialized value),
    TResult loading(_StateLoading value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _StatePreInitialized implements SettingModelState {
  const factory _StatePreInitialized() = _$_StatePreInitialized;
}

/// @nodoc
abstract class _$StateLoadingCopyWith<$Res> {
  factory _$StateLoadingCopyWith(
          _StateLoading value, $Res Function(_StateLoading) then) =
      __$StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$StateLoadingCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
    implements _$StateLoadingCopyWith<$Res> {
  __$StateLoadingCopyWithImpl(
      _StateLoading _value, $Res Function(_StateLoading) _then)
      : super(_value, (v) => _then(v as _StateLoading));

  @override
  _StateLoading get _value => super._value as _StateLoading;
}

/// @nodoc
class _$_StateLoading implements _StateLoading {
  const _$_StateLoading();

  @override
  String toString() {
    return 'SettingModelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data),
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
    TResult success(Viewer data),
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
    @required TResult preInitialized(_StatePreInitialized value),
    @required TResult loading(_StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
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
    TResult preInitialized(_StatePreInitialized value),
    TResult loading(_StateLoading value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading implements SettingModelState {
  const factory _StateLoading() = _$_StateLoading;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({Viewer data});

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
  }) {
    return _then(StateSuccess(
      data == freezed ? _value.data : data as Viewer,
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
  const _$StateSuccess(this.data) : assert(data != null);

  @override
  final Viewer data;

  @override
  String toString() {
    return 'SettingModelState.success(data: $data)';
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
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data),
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
    TResult success(Viewer data),
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
    @required TResult preInitialized(_StatePreInitialized value),
    @required TResult loading(_StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
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
    TResult preInitialized(_StatePreInitialized value),
    TResult loading(_StateLoading value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
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
  const factory StateSuccess(Viewer data) = _$StateSuccess;

  Viewer get data;
  $StateSuccessCopyWith<StateSuccess> get copyWith;
}

/// @nodoc
abstract class _$StateErrorCopyWith<$Res> {
  factory _$StateErrorCopyWith(
          _StateError value, $Res Function(_StateError) then) =
      __$StateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$StateErrorCopyWithImpl<$Res>
    extends _$SettingModelStateCopyWithImpl<$Res>
    implements _$StateErrorCopyWith<$Res> {
  __$StateErrorCopyWithImpl(
      _StateError _value, $Res Function(_StateError) _then)
      : super(_value, (v) => _then(v as _StateError));

  @override
  _StateError get _value => super._value as _StateError;
}

/// @nodoc
class _$_StateError implements _StateError {
  const _$_StateError();

  @override
  String toString() {
    return 'SettingModelState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required TResult success(Viewer data),
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
    TResult success(Viewer data),
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
    @required TResult preInitialized(_StatePreInitialized value),
    @required TResult loading(_StateLoading value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
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
    TResult preInitialized(_StatePreInitialized value),
    TResult loading(_StateLoading value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements SettingModelState {
  const factory _StateError() = _$_StateError;
}

/// @nodoc
class _$EditedUserInfoTearOff {
  const _$EditedUserInfoTearOff();

// ignore: unused_element
  _EditedUserInfo call(
      {DateTime birthDate, String jobCode, Location location}) {
    return _EditedUserInfo(
      birthDate: birthDate,
      jobCode: jobCode,
      location: location,
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
  Location get location;

  $EditedUserInfoCopyWith<EditedUserInfo> get copyWith;
}

/// @nodoc
abstract class $EditedUserInfoCopyWith<$Res> {
  factory $EditedUserInfoCopyWith(
          EditedUserInfo value, $Res Function(EditedUserInfo) then) =
      _$EditedUserInfoCopyWithImpl<$Res>;
  $Res call({DateTime birthDate, String jobCode, Location location});

  $LocationCopyWith<$Res> get location;
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
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      jobCode: jobCode == freezed ? _value.jobCode : jobCode as String,
      location: location == freezed ? _value.location : location as Location,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$EditedUserInfoCopyWith<$Res>
    implements $EditedUserInfoCopyWith<$Res> {
  factory _$EditedUserInfoCopyWith(
          _EditedUserInfo value, $Res Function(_EditedUserInfo) then) =
      __$EditedUserInfoCopyWithImpl<$Res>;
  @override
  $Res call({DateTime birthDate, String jobCode, Location location});

  @override
  $LocationCopyWith<$Res> get location;
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
    Object location = freezed,
  }) {
    return _then(_EditedUserInfo(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      jobCode: jobCode == freezed ? _value.jobCode : jobCode as String,
      location: location == freezed ? _value.location : location as Location,
    ));
  }
}

/// @nodoc
class _$_EditedUserInfo extends _EditedUserInfo {
  const _$_EditedUserInfo({this.birthDate, this.jobCode, this.location})
      : super._();

  @override
  final DateTime birthDate;
  @override
  final String jobCode;
  @override
  final Location location;

  @override
  String toString() {
    return 'EditedUserInfo(birthDate: $birthDate, jobCode: $jobCode, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditedUserInfo &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.jobCode, jobCode) ||
                const DeepCollectionEquality()
                    .equals(other.jobCode, jobCode)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(jobCode) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$EditedUserInfoCopyWith<_EditedUserInfo> get copyWith =>
      __$EditedUserInfoCopyWithImpl<_EditedUserInfo>(this, _$identity);
}

abstract class _EditedUserInfo extends EditedUserInfo {
  const _EditedUserInfo._() : super._();
  const factory _EditedUserInfo(
      {DateTime birthDate,
      String jobCode,
      Location location}) = _$_EditedUserInfo;

  @override
  DateTime get birthDate;
  @override
  String get jobCode;
  @override
  Location get location;
  @override
  _$EditedUserInfoCopyWith<_EditedUserInfo> get copyWith;
}

/// @nodoc
class _$SettingModelTearOff {
  const _$SettingModelTearOff();

// ignore: unused_element
  _SettingModel call(
      {@required SettingModelState settingModelState,
      @required bool uploadingProfile,
      @required EditedUserInfo editedUserInfo}) {
    return _SettingModel(
      settingModelState: settingModelState,
      uploadingProfile: uploadingProfile,
      editedUserInfo: editedUserInfo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingModel = _$SettingModelTearOff();

/// @nodoc
mixin _$SettingModel {
  SettingModelState get settingModelState;
  bool get uploadingProfile;
  EditedUserInfo get editedUserInfo;

  $SettingModelCopyWith<SettingModel> get copyWith;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res>;
  $Res call(
      {SettingModelState settingModelState,
      bool uploadingProfile,
      EditedUserInfo editedUserInfo});

  $SettingModelStateCopyWith<$Res> get settingModelState;
  $EditedUserInfoCopyWith<$Res> get editedUserInfo;
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res> implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  final SettingModel _value;
  // ignore: unused_field
  final $Res Function(SettingModel) _then;

  @override
  $Res call({
    Object settingModelState = freezed,
    Object uploadingProfile = freezed,
    Object editedUserInfo = freezed,
  }) {
    return _then(_value.copyWith(
      settingModelState: settingModelState == freezed
          ? _value.settingModelState
          : settingModelState as SettingModelState,
      uploadingProfile: uploadingProfile == freezed
          ? _value.uploadingProfile
          : uploadingProfile as bool,
      editedUserInfo: editedUserInfo == freezed
          ? _value.editedUserInfo
          : editedUserInfo as EditedUserInfo,
    ));
  }

  @override
  $SettingModelStateCopyWith<$Res> get settingModelState {
    if (_value.settingModelState == null) {
      return null;
    }
    return $SettingModelStateCopyWith<$Res>(_value.settingModelState, (value) {
      return _then(_value.copyWith(settingModelState: value));
    });
  }

  @override
  $EditedUserInfoCopyWith<$Res> get editedUserInfo {
    if (_value.editedUserInfo == null) {
      return null;
    }
    return $EditedUserInfoCopyWith<$Res>(_value.editedUserInfo, (value) {
      return _then(_value.copyWith(editedUserInfo: value));
    });
  }
}

/// @nodoc
abstract class _$SettingModelCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$SettingModelCopyWith(
          _SettingModel value, $Res Function(_SettingModel) then) =
      __$SettingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {SettingModelState settingModelState,
      bool uploadingProfile,
      EditedUserInfo editedUserInfo});

  @override
  $SettingModelStateCopyWith<$Res> get settingModelState;
  @override
  $EditedUserInfoCopyWith<$Res> get editedUserInfo;
}

/// @nodoc
class __$SettingModelCopyWithImpl<$Res> extends _$SettingModelCopyWithImpl<$Res>
    implements _$SettingModelCopyWith<$Res> {
  __$SettingModelCopyWithImpl(
      _SettingModel _value, $Res Function(_SettingModel) _then)
      : super(_value, (v) => _then(v as _SettingModel));

  @override
  _SettingModel get _value => super._value as _SettingModel;

  @override
  $Res call({
    Object settingModelState = freezed,
    Object uploadingProfile = freezed,
    Object editedUserInfo = freezed,
  }) {
    return _then(_SettingModel(
      settingModelState: settingModelState == freezed
          ? _value.settingModelState
          : settingModelState as SettingModelState,
      uploadingProfile: uploadingProfile == freezed
          ? _value.uploadingProfile
          : uploadingProfile as bool,
      editedUserInfo: editedUserInfo == freezed
          ? _value.editedUserInfo
          : editedUserInfo as EditedUserInfo,
    ));
  }
}

/// @nodoc
class _$_SettingModel implements _SettingModel {
  const _$_SettingModel(
      {@required this.settingModelState,
      @required this.uploadingProfile,
      @required this.editedUserInfo})
      : assert(settingModelState != null),
        assert(uploadingProfile != null),
        assert(editedUserInfo != null);

  @override
  final SettingModelState settingModelState;
  @override
  final bool uploadingProfile;
  @override
  final EditedUserInfo editedUserInfo;

  @override
  String toString() {
    return 'SettingModel(settingModelState: $settingModelState, uploadingProfile: $uploadingProfile, editedUserInfo: $editedUserInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingModel &&
            (identical(other.settingModelState, settingModelState) ||
                const DeepCollectionEquality()
                    .equals(other.settingModelState, settingModelState)) &&
            (identical(other.uploadingProfile, uploadingProfile) ||
                const DeepCollectionEquality()
                    .equals(other.uploadingProfile, uploadingProfile)) &&
            (identical(other.editedUserInfo, editedUserInfo) ||
                const DeepCollectionEquality()
                    .equals(other.editedUserInfo, editedUserInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settingModelState) ^
      const DeepCollectionEquality().hash(uploadingProfile) ^
      const DeepCollectionEquality().hash(editedUserInfo);

  @override
  _$SettingModelCopyWith<_SettingModel> get copyWith =>
      __$SettingModelCopyWithImpl<_SettingModel>(this, _$identity);
}

abstract class _SettingModel implements SettingModel {
  const factory _SettingModel(
      {@required SettingModelState settingModelState,
      @required bool uploadingProfile,
      @required EditedUserInfo editedUserInfo}) = _$_SettingModel;

  @override
  SettingModelState get settingModelState;
  @override
  bool get uploadingProfile;
  @override
  EditedUserInfo get editedUserInfo;
  @override
  _$SettingModelCopyWith<_SettingModel> get copyWith;
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  _Location call(
      {@required String countryCode, @required String prefectureCode}) {
    return _Location(
      countryCode: countryCode,
      prefectureCode: prefectureCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get countryCode;
  String get prefectureCode;

  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({String countryCode, String prefectureCode});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object countryCode = freezed,
    Object prefectureCode = freezed,
  }) {
    return _then(_value.copyWith(
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      prefectureCode: prefectureCode == freezed
          ? _value.prefectureCode
          : prefectureCode as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({String countryCode, String prefectureCode});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object countryCode = freezed,
    Object prefectureCode = freezed,
  }) {
    return _then(_Location(
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      prefectureCode: prefectureCode == freezed
          ? _value.prefectureCode
          : prefectureCode as String,
    ));
  }
}

/// @nodoc
class _$_Location implements _Location {
  const _$_Location({@required this.countryCode, @required this.prefectureCode})
      : assert(countryCode != null),
        assert(prefectureCode != null);

  @override
  final String countryCode;
  @override
  final String prefectureCode;

  @override
  String toString() {
    return 'Location(countryCode: $countryCode, prefectureCode: $prefectureCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.prefectureCode, prefectureCode) ||
                const DeepCollectionEquality()
                    .equals(other.prefectureCode, prefectureCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(prefectureCode);

  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);
}

abstract class _Location implements Location {
  const factory _Location(
      {@required String countryCode,
      @required String prefectureCode}) = _$_Location;

  @override
  String get countryCode;
  @override
  String get prefectureCode;
  @override
  _$LocationCopyWith<_Location> get copyWith;
}
