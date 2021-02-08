// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApiDataTearOff {
  const _$ApiDataTearOff();

// ignore: unused_element
  _ApiData call(
      {@required FeatureProgramData featureProgramData,
      @required @protected List<NewProgramsData> rawNewProgramsDataList}) {
    return _ApiData(
      featureProgramData: featureProgramData,
      rawNewProgramsDataList: rawNewProgramsDataList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApiData = _$ApiDataTearOff();

/// @nodoc
mixin _$ApiData {
  FeatureProgramData get featureProgramData;
  @protected
  List<NewProgramsData> get rawNewProgramsDataList;

  @JsonKey(ignore: true)
  $ApiDataCopyWith<ApiData> get copyWith;
}

/// @nodoc
abstract class $ApiDataCopyWith<$Res> {
  factory $ApiDataCopyWith(ApiData value, $Res Function(ApiData) then) =
      _$ApiDataCopyWithImpl<$Res>;
  $Res call(
      {FeatureProgramData featureProgramData,
      @protected List<NewProgramsData> rawNewProgramsDataList});

  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
}

/// @nodoc
class _$ApiDataCopyWithImpl<$Res> implements $ApiDataCopyWith<$Res> {
  _$ApiDataCopyWithImpl(this._value, this._then);

  final ApiData _value;
  // ignore: unused_field
  final $Res Function(ApiData) _then;

  @override
  $Res call({
    Object featureProgramData = freezed,
    Object rawNewProgramsDataList = freezed,
  }) {
    return _then(_value.copyWith(
      featureProgramData: featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
      rawNewProgramsDataList: rawNewProgramsDataList == freezed
          ? _value.rawNewProgramsDataList
          : rawNewProgramsDataList as List<NewProgramsData>,
    ));
  }

  @override
  $FeatureProgramDataCopyWith<$Res> get featureProgramData {
    if (_value.featureProgramData == null) {
      return null;
    }
    return $FeatureProgramDataCopyWith<$Res>(_value.featureProgramData,
        (value) {
      return _then(_value.copyWith(featureProgramData: value));
    });
  }
}

/// @nodoc
abstract class _$ApiDataCopyWith<$Res> implements $ApiDataCopyWith<$Res> {
  factory _$ApiDataCopyWith(_ApiData value, $Res Function(_ApiData) then) =
      __$ApiDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeatureProgramData featureProgramData,
      @protected List<NewProgramsData> rawNewProgramsDataList});

  @override
  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
}

/// @nodoc
class __$ApiDataCopyWithImpl<$Res> extends _$ApiDataCopyWithImpl<$Res>
    implements _$ApiDataCopyWith<$Res> {
  __$ApiDataCopyWithImpl(_ApiData _value, $Res Function(_ApiData) _then)
      : super(_value, (v) => _then(v as _ApiData));

  @override
  _ApiData get _value => super._value as _ApiData;

  @override
  $Res call({
    Object featureProgramData = freezed,
    Object rawNewProgramsDataList = freezed,
  }) {
    return _then(_ApiData(
      featureProgramData: featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
      rawNewProgramsDataList: rawNewProgramsDataList == freezed
          ? _value.rawNewProgramsDataList
          : rawNewProgramsDataList as List<NewProgramsData>,
    ));
  }
}

/// @nodoc
class _$_ApiData extends _ApiData {
  const _$_ApiData(
      {@required this.featureProgramData,
      @required @protected this.rawNewProgramsDataList})
      : assert(featureProgramData != null),
        assert(rawNewProgramsDataList != null),
        super._();

  @override
  final FeatureProgramData featureProgramData;
  @override
  @protected
  final List<NewProgramsData> rawNewProgramsDataList;

  @override
  String toString() {
    return 'ApiData(featureProgramData: $featureProgramData, rawNewProgramsDataList: $rawNewProgramsDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiData &&
            (identical(other.featureProgramData, featureProgramData) ||
                const DeepCollectionEquality()
                    .equals(other.featureProgramData, featureProgramData)) &&
            (identical(other.rawNewProgramsDataList, rawNewProgramsDataList) ||
                const DeepCollectionEquality().equals(
                    other.rawNewProgramsDataList, rawNewProgramsDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(featureProgramData) ^
      const DeepCollectionEquality().hash(rawNewProgramsDataList);

  @JsonKey(ignore: true)
  @override
  _$ApiDataCopyWith<_ApiData> get copyWith =>
      __$ApiDataCopyWithImpl<_ApiData>(this, _$identity);
}

abstract class _ApiData extends ApiData {
  const _ApiData._() : super._();
  const factory _ApiData(
          {@required FeatureProgramData featureProgramData,
          @required @protected List<NewProgramsData> rawNewProgramsDataList}) =
      _$_ApiData;

  @override
  FeatureProgramData get featureProgramData;
  @override
  @protected
  List<NewProgramsData> get rawNewProgramsDataList;
  @override
  @JsonKey(ignore: true)
  _$ApiDataCopyWith<_ApiData> get copyWith;
}

/// @nodoc
class _$DataWrapperTearOff {
  const _$DataWrapperTearOff();

// ignore: unused_element
  _DataWrapper call(
      {@required double scrollOffset,
      @required double channelHorizontalOffset,
      @required double subscribingChannelOffset,
      @required int billboardHeaderPage,
      @required ApiData apiData,
      @required bool loadingMore}) {
    return _DataWrapper(
      scrollOffset: scrollOffset,
      channelHorizontalOffset: channelHorizontalOffset,
      subscribingChannelOffset: subscribingChannelOffset,
      billboardHeaderPage: billboardHeaderPage,
      apiData: apiData,
      loadingMore: loadingMore,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DataWrapper = _$DataWrapperTearOff();

/// @nodoc
mixin _$DataWrapper {
  double get scrollOffset;
  double get channelHorizontalOffset;
  double get subscribingChannelOffset;
  int get billboardHeaderPage;
  ApiData get apiData;
  bool get loadingMore;

  @JsonKey(ignore: true)
  $DataWrapperCopyWith<DataWrapper> get copyWith;
}

/// @nodoc
abstract class $DataWrapperCopyWith<$Res> {
  factory $DataWrapperCopyWith(
          DataWrapper value, $Res Function(DataWrapper) then) =
      _$DataWrapperCopyWithImpl<$Res>;
  $Res call(
      {double scrollOffset,
      double channelHorizontalOffset,
      double subscribingChannelOffset,
      int billboardHeaderPage,
      ApiData apiData,
      bool loadingMore});

  $ApiDataCopyWith<$Res> get apiData;
}

/// @nodoc
class _$DataWrapperCopyWithImpl<$Res> implements $DataWrapperCopyWith<$Res> {
  _$DataWrapperCopyWithImpl(this._value, this._then);

  final DataWrapper _value;
  // ignore: unused_field
  final $Res Function(DataWrapper) _then;

  @override
  $Res call({
    Object scrollOffset = freezed,
    Object channelHorizontalOffset = freezed,
    Object subscribingChannelOffset = freezed,
    Object billboardHeaderPage = freezed,
    Object apiData = freezed,
    Object loadingMore = freezed,
  }) {
    return _then(_value.copyWith(
      scrollOffset: scrollOffset == freezed
          ? _value.scrollOffset
          : scrollOffset as double,
      channelHorizontalOffset: channelHorizontalOffset == freezed
          ? _value.channelHorizontalOffset
          : channelHorizontalOffset as double,
      subscribingChannelOffset: subscribingChannelOffset == freezed
          ? _value.subscribingChannelOffset
          : subscribingChannelOffset as double,
      billboardHeaderPage: billboardHeaderPage == freezed
          ? _value.billboardHeaderPage
          : billboardHeaderPage as int,
      apiData: apiData == freezed ? _value.apiData : apiData as ApiData,
      loadingMore:
          loadingMore == freezed ? _value.loadingMore : loadingMore as bool,
    ));
  }

  @override
  $ApiDataCopyWith<$Res> get apiData {
    if (_value.apiData == null) {
      return null;
    }
    return $ApiDataCopyWith<$Res>(_value.apiData, (value) {
      return _then(_value.copyWith(apiData: value));
    });
  }
}

/// @nodoc
abstract class _$DataWrapperCopyWith<$Res>
    implements $DataWrapperCopyWith<$Res> {
  factory _$DataWrapperCopyWith(
          _DataWrapper value, $Res Function(_DataWrapper) then) =
      __$DataWrapperCopyWithImpl<$Res>;
  @override
  $Res call(
      {double scrollOffset,
      double channelHorizontalOffset,
      double subscribingChannelOffset,
      int billboardHeaderPage,
      ApiData apiData,
      bool loadingMore});

  @override
  $ApiDataCopyWith<$Res> get apiData;
}

/// @nodoc
class __$DataWrapperCopyWithImpl<$Res> extends _$DataWrapperCopyWithImpl<$Res>
    implements _$DataWrapperCopyWith<$Res> {
  __$DataWrapperCopyWithImpl(
      _DataWrapper _value, $Res Function(_DataWrapper) _then)
      : super(_value, (v) => _then(v as _DataWrapper));

  @override
  _DataWrapper get _value => super._value as _DataWrapper;

  @override
  $Res call({
    Object scrollOffset = freezed,
    Object channelHorizontalOffset = freezed,
    Object subscribingChannelOffset = freezed,
    Object billboardHeaderPage = freezed,
    Object apiData = freezed,
    Object loadingMore = freezed,
  }) {
    return _then(_DataWrapper(
      scrollOffset: scrollOffset == freezed
          ? _value.scrollOffset
          : scrollOffset as double,
      channelHorizontalOffset: channelHorizontalOffset == freezed
          ? _value.channelHorizontalOffset
          : channelHorizontalOffset as double,
      subscribingChannelOffset: subscribingChannelOffset == freezed
          ? _value.subscribingChannelOffset
          : subscribingChannelOffset as double,
      billboardHeaderPage: billboardHeaderPage == freezed
          ? _value.billboardHeaderPage
          : billboardHeaderPage as int,
      apiData: apiData == freezed ? _value.apiData : apiData as ApiData,
      loadingMore:
          loadingMore == freezed ? _value.loadingMore : loadingMore as bool,
    ));
  }
}

/// @nodoc
class _$_DataWrapper implements _DataWrapper {
  const _$_DataWrapper(
      {@required this.scrollOffset,
      @required this.channelHorizontalOffset,
      @required this.subscribingChannelOffset,
      @required this.billboardHeaderPage,
      @required this.apiData,
      @required this.loadingMore})
      : assert(scrollOffset != null),
        assert(channelHorizontalOffset != null),
        assert(subscribingChannelOffset != null),
        assert(billboardHeaderPage != null),
        assert(apiData != null),
        assert(loadingMore != null);

  @override
  final double scrollOffset;
  @override
  final double channelHorizontalOffset;
  @override
  final double subscribingChannelOffset;
  @override
  final int billboardHeaderPage;
  @override
  final ApiData apiData;
  @override
  final bool loadingMore;

  @override
  String toString() {
    return 'DataWrapper(scrollOffset: $scrollOffset, channelHorizontalOffset: $channelHorizontalOffset, subscribingChannelOffset: $subscribingChannelOffset, billboardHeaderPage: $billboardHeaderPage, apiData: $apiData, loadingMore: $loadingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataWrapper &&
            (identical(other.scrollOffset, scrollOffset) ||
                const DeepCollectionEquality()
                    .equals(other.scrollOffset, scrollOffset)) &&
            (identical(
                    other.channelHorizontalOffset, channelHorizontalOffset) ||
                const DeepCollectionEquality().equals(
                    other.channelHorizontalOffset, channelHorizontalOffset)) &&
            (identical(
                    other.subscribingChannelOffset, subscribingChannelOffset) ||
                const DeepCollectionEquality().equals(
                    other.subscribingChannelOffset,
                    subscribingChannelOffset)) &&
            (identical(other.billboardHeaderPage, billboardHeaderPage) ||
                const DeepCollectionEquality()
                    .equals(other.billboardHeaderPage, billboardHeaderPage)) &&
            (identical(other.apiData, apiData) ||
                const DeepCollectionEquality()
                    .equals(other.apiData, apiData)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scrollOffset) ^
      const DeepCollectionEquality().hash(channelHorizontalOffset) ^
      const DeepCollectionEquality().hash(subscribingChannelOffset) ^
      const DeepCollectionEquality().hash(billboardHeaderPage) ^
      const DeepCollectionEquality().hash(apiData) ^
      const DeepCollectionEquality().hash(loadingMore);

  @JsonKey(ignore: true)
  @override
  _$DataWrapperCopyWith<_DataWrapper> get copyWith =>
      __$DataWrapperCopyWithImpl<_DataWrapper>(this, _$identity);
}

abstract class _DataWrapper implements DataWrapper {
  const factory _DataWrapper(
      {@required double scrollOffset,
      @required double channelHorizontalOffset,
      @required double subscribingChannelOffset,
      @required int billboardHeaderPage,
      @required ApiData apiData,
      @required bool loadingMore}) = _$_DataWrapper;

  @override
  double get scrollOffset;
  @override
  double get channelHorizontalOffset;
  @override
  double get subscribingChannelOffset;
  @override
  int get billboardHeaderPage;
  @override
  ApiData get apiData;
  @override
  bool get loadingMore;
  @override
  @JsonKey(ignore: true)
  _$DataWrapperCopyWith<_DataWrapper> get copyWith;
}

/// @nodoc
class _$DashboardModelTearOff {
  const _$DashboardModelTearOff();

// ignore: unused_element
  _DashboardPreInitialized initial() {
    return const _DashboardPreInitialized();
  }

// ignore: unused_element
  DashboardSuccess success(DataWrapper data) {
    return DashboardSuccess(
      data,
    );
  }

// ignore: unused_element
  _DashboardModelError error() {
    return const _DashboardModelError();
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardModel = _$DashboardModelTearOff();

/// @nodoc
mixin _$DashboardModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(DataWrapper data),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(DataWrapper data),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_DashboardPreInitialized value),
    @required TResult success(DashboardSuccess value),
    @required TResult error(_DashboardModelError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_DashboardPreInitialized value),
    TResult success(DashboardSuccess value),
    TResult error(_DashboardModelError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  final DashboardModel _value;
  // ignore: unused_field
  final $Res Function(DashboardModel) _then;
}

/// @nodoc
abstract class _$DashboardPreInitializedCopyWith<$Res> {
  factory _$DashboardPreInitializedCopyWith(_DashboardPreInitialized value,
          $Res Function(_DashboardPreInitialized) then) =
      __$DashboardPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DashboardPreInitializedCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardPreInitializedCopyWith<$Res> {
  __$DashboardPreInitializedCopyWithImpl(_DashboardPreInitialized _value,
      $Res Function(_DashboardPreInitialized) _then)
      : super(_value, (v) => _then(v as _DashboardPreInitialized));

  @override
  _DashboardPreInitialized get _value =>
      super._value as _DashboardPreInitialized;
}

/// @nodoc
class _$_DashboardPreInitialized implements _DashboardPreInitialized {
  const _$_DashboardPreInitialized();

  @override
  String toString() {
    return 'DashboardModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DashboardPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(DataWrapper data),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(DataWrapper data),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_DashboardPreInitialized value),
    @required TResult success(DashboardSuccess value),
    @required TResult error(_DashboardModelError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_DashboardPreInitialized value),
    TResult success(DashboardSuccess value),
    TResult error(_DashboardModelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DashboardPreInitialized implements DashboardModel {
  const factory _DashboardPreInitialized() = _$_DashboardPreInitialized;
}

/// @nodoc
abstract class $DashboardSuccessCopyWith<$Res> {
  factory $DashboardSuccessCopyWith(
          DashboardSuccess value, $Res Function(DashboardSuccess) then) =
      _$DashboardSuccessCopyWithImpl<$Res>;
  $Res call({DataWrapper data});

  $DataWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardSuccessCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardSuccessCopyWith<$Res> {
  _$DashboardSuccessCopyWithImpl(
      DashboardSuccess _value, $Res Function(DashboardSuccess) _then)
      : super(_value, (v) => _then(v as DashboardSuccess));

  @override
  DashboardSuccess get _value => super._value as DashboardSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(DashboardSuccess(
      data == freezed ? _value.data : data as DataWrapper,
    ));
  }

  @override
  $DataWrapperCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $DataWrapperCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$DashboardSuccess implements DashboardSuccess {
  const _$DashboardSuccess(this.data) : assert(data != null);

  @override
  final DataWrapper data;

  @override
  String toString() {
    return 'DashboardModel.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DashboardSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DashboardSuccessCopyWith<DashboardSuccess> get copyWith =>
      _$DashboardSuccessCopyWithImpl<DashboardSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(DataWrapper data),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(DataWrapper data),
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
    @required TResult initial(_DashboardPreInitialized value),
    @required TResult success(DashboardSuccess value),
    @required TResult error(_DashboardModelError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_DashboardPreInitialized value),
    TResult success(DashboardSuccess value),
    TResult error(_DashboardModelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DashboardSuccess implements DashboardModel {
  const factory DashboardSuccess(DataWrapper data) = _$DashboardSuccess;

  DataWrapper get data;
  @JsonKey(ignore: true)
  $DashboardSuccessCopyWith<DashboardSuccess> get copyWith;
}

/// @nodoc
abstract class _$DashboardModelErrorCopyWith<$Res> {
  factory _$DashboardModelErrorCopyWith(_DashboardModelError value,
          $Res Function(_DashboardModelError) then) =
      __$DashboardModelErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$DashboardModelErrorCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelErrorCopyWith<$Res> {
  __$DashboardModelErrorCopyWithImpl(
      _DashboardModelError _value, $Res Function(_DashboardModelError) _then)
      : super(_value, (v) => _then(v as _DashboardModelError));

  @override
  _DashboardModelError get _value => super._value as _DashboardModelError;
}

/// @nodoc
class _$_DashboardModelError implements _DashboardModelError {
  const _$_DashboardModelError();

  @override
  String toString() {
    return 'DashboardModel.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DashboardModelError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult success(DataWrapper data),
    @required TResult error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult success(DataWrapper data),
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
    @required TResult initial(_DashboardPreInitialized value),
    @required TResult success(DashboardSuccess value),
    @required TResult error(_DashboardModelError value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_DashboardPreInitialized value),
    TResult success(DashboardSuccess value),
    TResult error(_DashboardModelError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DashboardModelError implements DashboardModel {
  const factory _DashboardModelError() = _$_DashboardModelError;
}
