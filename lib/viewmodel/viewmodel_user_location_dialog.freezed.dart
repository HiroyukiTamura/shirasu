// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_user_location_dialog.dart';

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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$UserLocationModelCopyWith<_UserLocationModel> get copyWith;
}

/// @nodoc
class _$ModelStatusTearOff {
  const _$ModelStatusTearOff();

// ignore: unused_element
  _PreInitalized preInitialized() {
    return const _PreInitalized();
  }

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_PreInitalized value),
    @required TResult initialized(_Initialized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitalized value),
    TResult initialized(_Initialized value),
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
abstract class _$PreInitalizedCopyWith<$Res> {
  factory _$PreInitalizedCopyWith(
          _PreInitalized value, $Res Function(_PreInitalized) then) =
      __$PreInitalizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PreInitalizedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements _$PreInitalizedCopyWith<$Res> {
  __$PreInitalizedCopyWithImpl(
      _PreInitalized _value, $Res Function(_PreInitalized) _then)
      : super(_value, (v) => _then(v as _PreInitalized));

  @override
  _PreInitalized get _value => super._value as _PreInitalized;
}

/// @nodoc
class _$_PreInitalized implements _PreInitalized {
  const _$_PreInitalized();

  @override
  String toString() {
    return 'ModelStatus.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PreInitalized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
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
    @required TResult preInitialized(_PreInitalized value),
    @required TResult initialized(_Initialized value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitalized value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _PreInitalized implements ModelStatus {
  const factory _PreInitalized() = _$_PreInitalized;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ModelStatusCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'ModelStatus.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
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
    @required TResult preInitialized(_PreInitalized value),
    @required TResult initialized(_Initialized value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_PreInitalized value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ModelStatus {
  const factory _Initialized() = _$_Initialized;
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @JsonKey(ignore: true)
  _$ModelDataCopyWith<_ModelData> get copyWith;
}
