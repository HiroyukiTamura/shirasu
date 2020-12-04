// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_user_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserLocationModelTearOff {
  const _$UserLocationModelTearOff();

// ignore: unused_element
  _UserLocationModel call({@required ModelStatus status, ModelData data}) {
    return _UserLocationModel(
      status: status,
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserLocationModel = _$UserLocationModelTearOff();

/// @nodoc
mixin _$UserLocationModel {
  ModelStatus get status;
  ModelData get data;

  $UserLocationModelCopyWith<UserLocationModel> get copyWith;
}

/// @nodoc
abstract class $UserLocationModelCopyWith<$Res> {
  factory $UserLocationModelCopyWith(
          UserLocationModel value, $Res Function(UserLocationModel) then) =
      _$UserLocationModelCopyWithImpl<$Res>;
  $Res call({ModelStatus status, ModelData data});

  $ModelStatusCopyWith<$Res> get status;
  $ModelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserLocationModelCopyWithImpl<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  _$UserLocationModelCopyWithImpl(this._value, this._then);

  final UserLocationModel _value;
  // ignore: unused_field
  final $Res Function(UserLocationModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as ModelStatus,
      data: data == freezed ? _value.data : data as ModelData,
    ));
  }

  @override
  $ModelStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $ModelStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $ModelDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ModelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserLocationModelCopyWith<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  factory _$UserLocationModelCopyWith(
          _UserLocationModel value, $Res Function(_UserLocationModel) then) =
      __$UserLocationModelCopyWithImpl<$Res>;
  @override
  $Res call({ModelStatus status, ModelData data});

  @override
  $ModelStatusCopyWith<$Res> get status;
  @override
  $ModelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$UserLocationModelCopyWithImpl<$Res>
    extends _$UserLocationModelCopyWithImpl<$Res>
    implements _$UserLocationModelCopyWith<$Res> {
  __$UserLocationModelCopyWithImpl(
      _UserLocationModel _value, $Res Function(_UserLocationModel) _then)
      : super(_value, (v) => _then(v as _UserLocationModel));

  @override
  _UserLocationModel get _value => super._value as _UserLocationModel;

  @override
  $Res call({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _then(_UserLocationModel(
      status: status == freezed ? _value.status : status as ModelStatus,
      data: data == freezed ? _value.data : data as ModelData,
    ));
  }
}

/// @nodoc
class _$_UserLocationModel extends _UserLocationModel {
  const _$_UserLocationModel({@required this.status, this.data})
      : assert(status != null),
        super._();

  @override
  final ModelStatus status;
  @override
  final ModelData data;

  @override
  String toString() {
    return 'UserLocationModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLocationModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$UserLocationModelCopyWith<_UserLocationModel> get copyWith =>
      __$UserLocationModelCopyWithImpl<_UserLocationModel>(this, _$identity);
}

abstract class _UserLocationModel extends UserLocationModel {
  const _UserLocationModel._() : super._();
  const factory _UserLocationModel(
      {@required ModelStatus status, ModelData data}) = _$_UserLocationModel;

  @override
  ModelStatus get status;
  @override
  ModelData get data;
  @override
  _$UserLocationModelCopyWith<_UserLocationModel> get copyWith;
}

/// @nodoc
class _$ModelStatusTearOff {
  const _$ModelStatusTearOff();

// ignore: unused_element
  PreInitalized preInitialized() {
    return const PreInitalized();
  }

// ignore: unused_element
  Initalized initialized() {
    return const Initalized();
  }

// ignore: unused_element
  Drafted drafted() {
    return const Drafted();
  }

// ignore: unused_element
  DraftNotified draftNotified() {
    return const DraftNotified();
  }
}

/// @nodoc
// ignore: unused_element
const $ModelStatus = _$ModelStatusTearOff();

/// @nodoc
mixin _$ModelStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult drafted(),
    @required TResult draftNotified(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult drafted(),
    TResult draftNotified(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitalized value),
    @required TResult initialized(Initalized value),
    @required TResult drafted(Drafted value),
    @required TResult draftNotified(DraftNotified value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitalized value),
    TResult initialized(Initalized value),
    TResult drafted(Drafted value),
    TResult draftNotified(DraftNotified value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ModelStatusCopyWith<$Res> {
  factory $ModelStatusCopyWith(
          ModelStatus value, $Res Function(ModelStatus) then) =
      _$ModelStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$ModelStatusCopyWithImpl<$Res> implements $ModelStatusCopyWith<$Res> {
  _$ModelStatusCopyWithImpl(this._value, this._then);

  final ModelStatus _value;
  // ignore: unused_field
  final $Res Function(ModelStatus) _then;
}

/// @nodoc
abstract class $PreInitalizedCopyWith<$Res> {
  factory $PreInitalizedCopyWith(
          PreInitalized value, $Res Function(PreInitalized) then) =
      _$PreInitalizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreInitalizedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements $PreInitalizedCopyWith<$Res> {
  _$PreInitalizedCopyWithImpl(
      PreInitalized _value, $Res Function(PreInitalized) _then)
      : super(_value, (v) => _then(v as PreInitalized));

  @override
  PreInitalized get _value => super._value as PreInitalized;
}

/// @nodoc
class _$PreInitalized implements PreInitalized {
  const _$PreInitalized();

  @override
  String toString() {
    return 'ModelStatus.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PreInitalized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult drafted(),
    @required TResult draftNotified(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult drafted(),
    TResult draftNotified(),
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
    @required TResult preInitialized(PreInitalized value),
    @required TResult initialized(Initalized value),
    @required TResult drafted(Drafted value),
    @required TResult draftNotified(DraftNotified value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitalized value),
    TResult initialized(Initalized value),
    TResult drafted(Drafted value),
    TResult draftNotified(DraftNotified value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class PreInitalized implements ModelStatus {
  const factory PreInitalized() = _$PreInitalized;
}

/// @nodoc
abstract class $InitalizedCopyWith<$Res> {
  factory $InitalizedCopyWith(
          Initalized value, $Res Function(Initalized) then) =
      _$InitalizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitalizedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements $InitalizedCopyWith<$Res> {
  _$InitalizedCopyWithImpl(Initalized _value, $Res Function(Initalized) _then)
      : super(_value, (v) => _then(v as Initalized));

  @override
  Initalized get _value => super._value as Initalized;
}

/// @nodoc
class _$Initalized implements Initalized {
  const _$Initalized();

  @override
  String toString() {
    return 'ModelStatus.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initalized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult drafted(),
    @required TResult draftNotified(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult drafted(),
    TResult draftNotified(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitalized value),
    @required TResult initialized(Initalized value),
    @required TResult drafted(Drafted value),
    @required TResult draftNotified(DraftNotified value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitalized value),
    TResult initialized(Initalized value),
    TResult drafted(Drafted value),
    TResult draftNotified(DraftNotified value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initalized implements ModelStatus {
  const factory Initalized() = _$Initalized;
}

/// @nodoc
abstract class $DraftedCopyWith<$Res> {
  factory $DraftedCopyWith(Drafted value, $Res Function(Drafted) then) =
      _$DraftedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DraftedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements $DraftedCopyWith<$Res> {
  _$DraftedCopyWithImpl(Drafted _value, $Res Function(Drafted) _then)
      : super(_value, (v) => _then(v as Drafted));

  @override
  Drafted get _value => super._value as Drafted;
}

/// @nodoc
class _$Drafted implements Drafted {
  const _$Drafted();

  @override
  String toString() {
    return 'ModelStatus.drafted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Drafted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult drafted(),
    @required TResult draftNotified(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return drafted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult drafted(),
    TResult draftNotified(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (drafted != null) {
      return drafted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitalized value),
    @required TResult initialized(Initalized value),
    @required TResult drafted(Drafted value),
    @required TResult draftNotified(DraftNotified value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return drafted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitalized value),
    TResult initialized(Initalized value),
    TResult drafted(Drafted value),
    TResult draftNotified(DraftNotified value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (drafted != null) {
      return drafted(this);
    }
    return orElse();
  }
}

abstract class Drafted implements ModelStatus {
  const factory Drafted() = _$Drafted;
}

/// @nodoc
abstract class $DraftNotifiedCopyWith<$Res> {
  factory $DraftNotifiedCopyWith(
          DraftNotified value, $Res Function(DraftNotified) then) =
      _$DraftNotifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DraftNotifiedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements $DraftNotifiedCopyWith<$Res> {
  _$DraftNotifiedCopyWithImpl(
      DraftNotified _value, $Res Function(DraftNotified) _then)
      : super(_value, (v) => _then(v as DraftNotified));

  @override
  DraftNotified get _value => super._value as DraftNotified;
}

/// @nodoc
class _$DraftNotified implements DraftNotified {
  const _$DraftNotified();

  @override
  String toString() {
    return 'ModelStatus.draftNotified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DraftNotified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult drafted(),
    @required TResult draftNotified(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return draftNotified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult drafted(),
    TResult draftNotified(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (draftNotified != null) {
      return draftNotified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(PreInitalized value),
    @required TResult initialized(Initalized value),
    @required TResult drafted(Drafted value),
    @required TResult draftNotified(DraftNotified value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(drafted != null);
    assert(draftNotified != null);
    return draftNotified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(PreInitalized value),
    TResult initialized(Initalized value),
    TResult drafted(Drafted value),
    TResult draftNotified(DraftNotified value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (draftNotified != null) {
      return draftNotified(this);
    }
    return orElse();
  }
}

abstract class DraftNotified implements ModelStatus {
  const factory DraftNotified() = _$DraftNotified;
}

/// @nodoc
class _$ModelDataTearOff {
  const _$ModelDataTearOff();

// ignore: unused_element
  _ModelData call(
      {@required CountryData countryData,
      @required PrefectureData prefectureData,
      @required String countryCode,
      @required String prefectureCode}) {
    return _ModelData(
      countryData: countryData,
      prefectureData: prefectureData,
      countryCode: countryCode,
      prefectureCode: prefectureCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelData = _$ModelDataTearOff();

/// @nodoc
mixin _$ModelData {
  CountryData get countryData;
  PrefectureData get prefectureData;
  String get countryCode;
  String get prefectureCode;

  $ModelDataCopyWith<ModelData> get copyWith;
}

/// @nodoc
abstract class $ModelDataCopyWith<$Res> {
  factory $ModelDataCopyWith(ModelData value, $Res Function(ModelData) then) =
      _$ModelDataCopyWithImpl<$Res>;
  $Res call(
      {CountryData countryData,
      PrefectureData prefectureData,
      String countryCode,
      String prefectureCode});

  $CountryDataCopyWith<$Res> get countryData;
  $PrefectureDataCopyWith<$Res> get prefectureData;
}

/// @nodoc
class _$ModelDataCopyWithImpl<$Res> implements $ModelDataCopyWith<$Res> {
  _$ModelDataCopyWithImpl(this._value, this._then);

  final ModelData _value;
  // ignore: unused_field
  final $Res Function(ModelData) _then;

  @override
  $Res call({
    Object countryData = freezed,
    Object prefectureData = freezed,
    Object countryCode = freezed,
    Object prefectureCode = freezed,
  }) {
    return _then(_value.copyWith(
      countryData: countryData == freezed
          ? _value.countryData
          : countryData as CountryData,
      prefectureData: prefectureData == freezed
          ? _value.prefectureData
          : prefectureData as PrefectureData,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      prefectureCode: prefectureCode == freezed
          ? _value.prefectureCode
          : prefectureCode as String,
    ));
  }

  @override
  $CountryDataCopyWith<$Res> get countryData {
    if (_value.countryData == null) {
      return null;
    }
    return $CountryDataCopyWith<$Res>(_value.countryData, (value) {
      return _then(_value.copyWith(countryData: value));
    });
  }

  @override
  $PrefectureDataCopyWith<$Res> get prefectureData {
    if (_value.prefectureData == null) {
      return null;
    }
    return $PrefectureDataCopyWith<$Res>(_value.prefectureData, (value) {
      return _then(_value.copyWith(prefectureData: value));
    });
  }
}

/// @nodoc
abstract class _$ModelDataCopyWith<$Res> implements $ModelDataCopyWith<$Res> {
  factory _$ModelDataCopyWith(
          _ModelData value, $Res Function(_ModelData) then) =
      __$ModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {CountryData countryData,
      PrefectureData prefectureData,
      String countryCode,
      String prefectureCode});

  @override
  $CountryDataCopyWith<$Res> get countryData;
  @override
  $PrefectureDataCopyWith<$Res> get prefectureData;
}

/// @nodoc
class __$ModelDataCopyWithImpl<$Res> extends _$ModelDataCopyWithImpl<$Res>
    implements _$ModelDataCopyWith<$Res> {
  __$ModelDataCopyWithImpl(_ModelData _value, $Res Function(_ModelData) _then)
      : super(_value, (v) => _then(v as _ModelData));

  @override
  _ModelData get _value => super._value as _ModelData;

  @override
  $Res call({
    Object countryData = freezed,
    Object prefectureData = freezed,
    Object countryCode = freezed,
    Object prefectureCode = freezed,
  }) {
    return _then(_ModelData(
      countryData: countryData == freezed
          ? _value.countryData
          : countryData as CountryData,
      prefectureData: prefectureData == freezed
          ? _value.prefectureData
          : prefectureData as PrefectureData,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      prefectureCode: prefectureCode == freezed
          ? _value.prefectureCode
          : prefectureCode as String,
    ));
  }
}

/// @nodoc
class _$_ModelData implements _ModelData {
  const _$_ModelData(
      {@required this.countryData,
      @required this.prefectureData,
      @required this.countryCode,
      @required this.prefectureCode})
      : assert(countryData != null),
        assert(prefectureData != null),
        assert(countryCode != null),
        assert(prefectureCode != null);

  @override
  final CountryData countryData;
  @override
  final PrefectureData prefectureData;
  @override
  final String countryCode;
  @override
  final String prefectureCode;

  @override
  String toString() {
    return 'ModelData(countryData: $countryData, prefectureData: $prefectureData, countryCode: $countryCode, prefectureCode: $prefectureCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelData &&
            (identical(other.countryData, countryData) ||
                const DeepCollectionEquality()
                    .equals(other.countryData, countryData)) &&
            (identical(other.prefectureData, prefectureData) ||
                const DeepCollectionEquality()
                    .equals(other.prefectureData, prefectureData)) &&
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
      const DeepCollectionEquality().hash(countryData) ^
      const DeepCollectionEquality().hash(prefectureData) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(prefectureCode);

  @override
  _$ModelDataCopyWith<_ModelData> get copyWith =>
      __$ModelDataCopyWithImpl<_ModelData>(this, _$identity);
}

abstract class _ModelData implements ModelData {
  const factory _ModelData(
      {@required CountryData countryData,
      @required PrefectureData prefectureData,
      @required String countryCode,
      @required String prefectureCode}) = _$_ModelData;

  @override
  CountryData get countryData;
  @override
  PrefectureData get prefectureData;
  @override
  String get countryCode;
  @override
  String get prefectureCode;
  @override
  _$ModelDataCopyWith<_ModelData> get copyWith;
}
