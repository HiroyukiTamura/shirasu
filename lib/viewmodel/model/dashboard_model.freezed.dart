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
      @required List<NewProgramsData> newProgramsDataList}) {
    return _ApiData(
      featureProgramData: featureProgramData,
      newProgramsDataList: newProgramsDataList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApiData = _$ApiDataTearOff();

/// @nodoc
mixin _$ApiData {
  FeatureProgramData get featureProgramData;
  List<NewProgramsData> get newProgramsDataList;

  $ApiDataCopyWith<ApiData> get copyWith;
}

/// @nodoc
abstract class $ApiDataCopyWith<$Res> {
  factory $ApiDataCopyWith(ApiData value, $Res Function(ApiData) then) =
      _$ApiDataCopyWithImpl<$Res>;
  $Res call(
      {FeatureProgramData featureProgramData,
      List<NewProgramsData> newProgramsDataList});

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
    Object newProgramsDataList = freezed,
  }) {
    return _then(_value.copyWith(
      featureProgramData: featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
      newProgramsDataList: newProgramsDataList == freezed
          ? _value.newProgramsDataList
          : newProgramsDataList as List<NewProgramsData>,
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
      List<NewProgramsData> newProgramsDataList});

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
    Object newProgramsDataList = freezed,
  }) {
    return _then(_ApiData(
      featureProgramData: featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
      newProgramsDataList: newProgramsDataList == freezed
          ? _value.newProgramsDataList
          : newProgramsDataList as List<NewProgramsData>,
    ));
  }
}

/// @nodoc
class _$_ApiData extends _ApiData {
  const _$_ApiData(
      {@required this.featureProgramData, @required this.newProgramsDataList})
      : assert(featureProgramData != null),
        assert(newProgramsDataList != null),
        super._();

  @override
  final FeatureProgramData featureProgramData;
  @override
  final List<NewProgramsData> newProgramsDataList;

  @override
  String toString() {
    return 'ApiData(featureProgramData: $featureProgramData, newProgramsDataList: $newProgramsDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiData &&
            (identical(other.featureProgramData, featureProgramData) ||
                const DeepCollectionEquality()
                    .equals(other.featureProgramData, featureProgramData)) &&
            (identical(other.newProgramsDataList, newProgramsDataList) ||
                const DeepCollectionEquality()
                    .equals(other.newProgramsDataList, newProgramsDataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(featureProgramData) ^
      const DeepCollectionEquality().hash(newProgramsDataList);

  @override
  _$ApiDataCopyWith<_ApiData> get copyWith =>
      __$ApiDataCopyWithImpl<_ApiData>(this, _$identity);
}

abstract class _ApiData extends ApiData {
  const _ApiData._() : super._();
  const factory _ApiData(
      {@required FeatureProgramData featureProgramData,
      @required List<NewProgramsData> newProgramsDataList}) = _$_ApiData;

  @override
  FeatureProgramData get featureProgramData;
  @override
  List<NewProgramsData> get newProgramsDataList;
  @override
  _$ApiDataCopyWith<_ApiData> get copyWith;
}

/// @nodoc
class _$DashboardModelTearOff {
  const _$DashboardModelTearOff();

// ignore: unused_element
  _DashboardModel call(
      {@required DashboardState state,
      ApiData apiData,
      double offset = 0,
      double channelHorizontalOffset = 0,
      double subscribingChannelOffset = 0,
      int billboardHeaderPage = 0}) {
    return _DashboardModel(
      state: state,
      apiData: apiData,
      offset: offset,
      channelHorizontalOffset: channelHorizontalOffset,
      subscribingChannelOffset: subscribingChannelOffset,
      billboardHeaderPage: billboardHeaderPage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardModel = _$DashboardModelTearOff();

/// @nodoc
mixin _$DashboardModel {
  DashboardState get state;
  ApiData get apiData;
  double get offset;
  double get channelHorizontalOffset;
  double get subscribingChannelOffset;
  int get billboardHeaderPage;

  $DashboardModelCopyWith<DashboardModel> get copyWith;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res>;
  $Res call(
      {DashboardState state,
      ApiData apiData,
      double offset,
      double channelHorizontalOffset,
      double subscribingChannelOffset,
      int billboardHeaderPage});

  $DashboardStateCopyWith<$Res> get state;
  $ApiDataCopyWith<$Res> get apiData;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  final DashboardModel _value;
  // ignore: unused_field
  final $Res Function(DashboardModel) _then;

  @override
  $Res call({
    Object state = freezed,
    Object apiData = freezed,
    Object offset = freezed,
    Object channelHorizontalOffset = freezed,
    Object subscribingChannelOffset = freezed,
    Object billboardHeaderPage = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as DashboardState,
      apiData: apiData == freezed ? _value.apiData : apiData as ApiData,
      offset: offset == freezed ? _value.offset : offset as double,
      channelHorizontalOffset: channelHorizontalOffset == freezed
          ? _value.channelHorizontalOffset
          : channelHorizontalOffset as double,
      subscribingChannelOffset: subscribingChannelOffset == freezed
          ? _value.subscribingChannelOffset
          : subscribingChannelOffset as double,
      billboardHeaderPage: billboardHeaderPage == freezed
          ? _value.billboardHeaderPage
          : billboardHeaderPage as int,
    ));
  }

  @override
  $DashboardStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $DashboardStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
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
abstract class _$DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(
          _DashboardModel value, $Res Function(_DashboardModel) then) =
      __$DashboardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {DashboardState state,
      ApiData apiData,
      double offset,
      double channelHorizontalOffset,
      double subscribingChannelOffset,
      int billboardHeaderPage});

  @override
  $DashboardStateCopyWith<$Res> get state;
  @override
  $ApiDataCopyWith<$Res> get apiData;
}

/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(
      _DashboardModel _value, $Res Function(_DashboardModel) _then)
      : super(_value, (v) => _then(v as _DashboardModel));

  @override
  _DashboardModel get _value => super._value as _DashboardModel;

  @override
  $Res call({
    Object state = freezed,
    Object apiData = freezed,
    Object offset = freezed,
    Object channelHorizontalOffset = freezed,
    Object subscribingChannelOffset = freezed,
    Object billboardHeaderPage = freezed,
  }) {
    return _then(_DashboardModel(
      state: state == freezed ? _value.state : state as DashboardState,
      apiData: apiData == freezed ? _value.apiData : apiData as ApiData,
      offset: offset == freezed ? _value.offset : offset as double,
      channelHorizontalOffset: channelHorizontalOffset == freezed
          ? _value.channelHorizontalOffset
          : channelHorizontalOffset as double,
      subscribingChannelOffset: subscribingChannelOffset == freezed
          ? _value.subscribingChannelOffset
          : subscribingChannelOffset as double,
      billboardHeaderPage: billboardHeaderPage == freezed
          ? _value.billboardHeaderPage
          : billboardHeaderPage as int,
    ));
  }
}

/// @nodoc
class _$_DashboardModel extends _DashboardModel {
  const _$_DashboardModel(
      {@required this.state,
      this.apiData,
      this.offset = 0,
      this.channelHorizontalOffset = 0,
      this.subscribingChannelOffset = 0,
      this.billboardHeaderPage = 0})
      : assert(state != null),
        assert(offset != null),
        assert(channelHorizontalOffset != null),
        assert(subscribingChannelOffset != null),
        assert(billboardHeaderPage != null),
        super._();

  @override
  final DashboardState state;
  @override
  final ApiData apiData;
  @JsonKey(defaultValue: 0)
  @override
  final double offset;
  @JsonKey(defaultValue: 0)
  @override
  final double channelHorizontalOffset;
  @JsonKey(defaultValue: 0)
  @override
  final double subscribingChannelOffset;
  @JsonKey(defaultValue: 0)
  @override
  final int billboardHeaderPage;

  @override
  String toString() {
    return 'DashboardModel(state: $state, apiData: $apiData, offset: $offset, channelHorizontalOffset: $channelHorizontalOffset, subscribingChannelOffset: $subscribingChannelOffset, billboardHeaderPage: $billboardHeaderPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardModel &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.apiData, apiData) ||
                const DeepCollectionEquality()
                    .equals(other.apiData, apiData)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
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
                    .equals(other.billboardHeaderPage, billboardHeaderPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(apiData) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(channelHorizontalOffset) ^
      const DeepCollectionEquality().hash(subscribingChannelOffset) ^
      const DeepCollectionEquality().hash(billboardHeaderPage);

  @override
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);
}

abstract class _DashboardModel extends DashboardModel {
  const _DashboardModel._() : super._();
  const factory _DashboardModel(
      {@required DashboardState state,
      ApiData apiData,
      double offset,
      double channelHorizontalOffset,
      double subscribingChannelOffset,
      int billboardHeaderPage}) = _$_DashboardModel;

  @override
  DashboardState get state;
  @override
  ApiData get apiData;
  @override
  double get offset;
  @override
  double get channelHorizontalOffset;
  @override
  double get subscribingChannelOffset;
  @override
  int get billboardHeaderPage;
  @override
  _$DashboardModelCopyWith<_DashboardModel> get copyWith;
}

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

// ignore: unused_element
  _StateLoadMore loadingMore() {
    return const _StateLoadMore();
  }

// ignore: unused_element
  StatePreInitialized preInitialized() {
    return const StatePreInitialized();
  }

// ignore: unused_element
  StateSuccess success() {
    return const StateSuccess();
  }

// ignore: unused_element
  _StateError error() {
    return const _StateError();
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(),
    @required TResult preInitialized(),
    @required TResult success(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(),
    TResult preInitialized(),
    TResult success(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(_StateLoadMore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(_StateLoadMore value),
    TResult preInitialized(StatePreInitialized value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$StateLoadMoreCopyWith<$Res> {
  factory _$StateLoadMoreCopyWith(
          _StateLoadMore value, $Res Function(_StateLoadMore) then) =
      __$StateLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$StateLoadMoreCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$StateLoadMoreCopyWith<$Res> {
  __$StateLoadMoreCopyWithImpl(
      _StateLoadMore _value, $Res Function(_StateLoadMore) _then)
      : super(_value, (v) => _then(v as _StateLoadMore));

  @override
  _StateLoadMore get _value => super._value as _StateLoadMore;
}

/// @nodoc
class _$_StateLoadMore implements _StateLoadMore {
  const _$_StateLoadMore();

  @override
  String toString() {
    return 'DashboardState.loadingMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(),
    @required TResult preInitialized(),
    @required TResult success(),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(),
    TResult preInitialized(),
    TResult success(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(_StateLoadMore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(_StateLoadMore value),
    TResult preInitialized(StatePreInitialized value),
    TResult success(StateSuccess value),
    TResult error(_StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _StateLoadMore implements DashboardState {
  const factory _StateLoadMore() = _$_StateLoadMore;
}

/// @nodoc
abstract class $StatePreInitializedCopyWith<$Res> {
  factory $StatePreInitializedCopyWith(
          StatePreInitialized value, $Res Function(StatePreInitialized) then) =
      _$StatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePreInitializedCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
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
    return 'DashboardState.preInitialized()';
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
    @required TResult loadingMore(),
    @required TResult preInitialized(),
    @required TResult success(),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(),
    TResult preInitialized(),
    TResult success(),
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
    @required TResult loadingMore(_StateLoadMore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(_StateLoadMore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class StatePreInitialized implements DashboardState {
  const factory StatePreInitialized() = _$StatePreInitialized;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateSuccessCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements $StateSuccessCopyWith<$Res> {
  _$StateSuccessCopyWithImpl(
      StateSuccess _value, $Res Function(StateSuccess) _then)
      : super(_value, (v) => _then(v as StateSuccess));

  @override
  StateSuccess get _value => super._value as StateSuccess;
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess();

  @override
  String toString() {
    return 'DashboardState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(),
    @required TResult preInitialized(),
    @required TResult success(),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(),
    TResult preInitialized(),
    TResult success(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(_StateLoadMore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(_StateLoadMore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class StateSuccess implements DashboardState {
  const factory StateSuccess() = _$StateSuccess;
}

/// @nodoc
abstract class _$StateErrorCopyWith<$Res> {
  factory _$StateErrorCopyWith(
          _StateError value, $Res Function(_StateError) then) =
      __$StateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$StateErrorCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
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
    return 'DashboardState.error()';
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
    @required TResult loadingMore(),
    @required TResult preInitialized(),
    @required TResult success(),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(),
    TResult preInitialized(),
    TResult success(),
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
    @required TResult loadingMore(_StateLoadMore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(_StateError value),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(_StateLoadMore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class _StateError implements DashboardState {
  const factory _StateError() = _$_StateError;
}
