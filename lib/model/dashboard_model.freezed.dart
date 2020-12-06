// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DashboardModelTearOff {
  const _$DashboardModelTearOff();

// ignore: unused_element
  _DashboardModel call(
      {@required FeatureProgramData featureProgramData,
      @required List<NewProgramsData> newProgramsDataList}) {
    return _DashboardModel(
      featureProgramData: featureProgramData,
      newProgramsDataList: newProgramsDataList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardModel = _$DashboardModelTearOff();

/// @nodoc
mixin _$DashboardModel {
  FeatureProgramData get featureProgramData;
  List<NewProgramsData> get newProgramsDataList;

  $DashboardModelCopyWith<DashboardModel> get copyWith;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res>;
  $Res call(
      {FeatureProgramData featureProgramData,
      List<NewProgramsData> newProgramsDataList});

  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
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
abstract class _$DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(
          _DashboardModel value, $Res Function(_DashboardModel) then) =
      __$DashboardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeatureProgramData featureProgramData,
      List<NewProgramsData> newProgramsDataList});

  @override
  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
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
    Object featureProgramData = freezed,
    Object newProgramsDataList = freezed,
  }) {
    return _then(_DashboardModel(
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
class _$_DashboardModel extends _DashboardModel {
  const _$_DashboardModel(
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
    return 'DashboardModel(featureProgramData: $featureProgramData, newProgramsDataList: $newProgramsDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardModel &&
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
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);
}

abstract class _DashboardModel extends DashboardModel {
  const _DashboardModel._() : super._();
  const factory _DashboardModel(
      {@required FeatureProgramData featureProgramData,
      @required List<NewProgramsData> newProgramsDataList}) = _$_DashboardModel;

  @override
  FeatureProgramData get featureProgramData;
  @override
  List<NewProgramsData> get newProgramsDataList;
  @override
  _$DashboardModelCopyWith<_DashboardModel> get copyWith;
}

/// @nodoc
class _$DashboardModelStateTearOff {
  const _$DashboardModelStateTearOff();

// ignore: unused_element
  StateLoadmore loadingMore(DashboardModel dashboardModel) {
    return StateLoadmore(
      dashboardModel,
    );
  }

// ignore: unused_element
  StatePreInitialized preInitialized() {
    return const StatePreInitialized();
  }

// ignore: unused_element
  StateSuccess success(DashboardModel dashboardModel) {
    return StateSuccess(
      dashboardModel,
    );
  }

// ignore: unused_element
  StateError error() {
    return const StateError();
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardModelState = _$DashboardModelStateTearOff();

/// @nodoc
mixin _$DashboardModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(DashboardModel dashboardModel),
    @required TResult preInitialized(),
    @required TResult success(DashboardModel dashboardModel),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(DashboardModel dashboardModel),
    TResult preInitialized(),
    TResult success(DashboardModel dashboardModel),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(StateLoadmore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingMore(StateLoadmore value),
    TResult preInitialized(StatePreInitialized value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DashboardModelStateCopyWith<$Res> {
  factory $DashboardModelStateCopyWith(
          DashboardModelState value, $Res Function(DashboardModelState) then) =
      _$DashboardModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardModelStateCopyWithImpl<$Res>
    implements $DashboardModelStateCopyWith<$Res> {
  _$DashboardModelStateCopyWithImpl(this._value, this._then);

  final DashboardModelState _value;
  // ignore: unused_field
  final $Res Function(DashboardModelState) _then;
}

/// @nodoc
abstract class $StateLoadmoreCopyWith<$Res> {
  factory $StateLoadmoreCopyWith(
          StateLoadmore value, $Res Function(StateLoadmore) then) =
      _$StateLoadmoreCopyWithImpl<$Res>;
  $Res call({DashboardModel dashboardModel});

  $DashboardModelCopyWith<$Res> get dashboardModel;
}

/// @nodoc
class _$StateLoadmoreCopyWithImpl<$Res>
    extends _$DashboardModelStateCopyWithImpl<$Res>
    implements $StateLoadmoreCopyWith<$Res> {
  _$StateLoadmoreCopyWithImpl(
      StateLoadmore _value, $Res Function(StateLoadmore) _then)
      : super(_value, (v) => _then(v as StateLoadmore));

  @override
  StateLoadmore get _value => super._value as StateLoadmore;

  @override
  $Res call({
    Object dashboardModel = freezed,
  }) {
    return _then(StateLoadmore(
      dashboardModel == freezed
          ? _value.dashboardModel
          : dashboardModel as DashboardModel,
    ));
  }

  @override
  $DashboardModelCopyWith<$Res> get dashboardModel {
    if (_value.dashboardModel == null) {
      return null;
    }
    return $DashboardModelCopyWith<$Res>(_value.dashboardModel, (value) {
      return _then(_value.copyWith(dashboardModel: value));
    });
  }
}

/// @nodoc
class _$StateLoadmore implements StateLoadmore {
  const _$StateLoadmore(this.dashboardModel) : assert(dashboardModel != null);

  @override
  final DashboardModel dashboardModel;

  @override
  String toString() {
    return 'DashboardModelState.loadingMore(dashboardModel: $dashboardModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateLoadmore &&
            (identical(other.dashboardModel, dashboardModel) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardModel, dashboardModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dashboardModel);

  @override
  $StateLoadmoreCopyWith<StateLoadmore> get copyWith =>
      _$StateLoadmoreCopyWithImpl<StateLoadmore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(DashboardModel dashboardModel),
    @required TResult preInitialized(),
    @required TResult success(DashboardModel dashboardModel),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return loadingMore(dashboardModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(DashboardModel dashboardModel),
    TResult preInitialized(),
    TResult success(DashboardModel dashboardModel),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(dashboardModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(StateLoadmore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loadingMore(StateLoadmore value),
    TResult preInitialized(StatePreInitialized value),
    TResult success(StateSuccess value),
    TResult error(StateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class StateLoadmore implements DashboardModelState {
  const factory StateLoadmore(DashboardModel dashboardModel) = _$StateLoadmore;

  DashboardModel get dashboardModel;
  $StateLoadmoreCopyWith<StateLoadmore> get copyWith;
}

/// @nodoc
abstract class $StatePreInitializedCopyWith<$Res> {
  factory $StatePreInitializedCopyWith(
          StatePreInitialized value, $Res Function(StatePreInitialized) then) =
      _$StatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatePreInitializedCopyWithImpl<$Res>
    extends _$DashboardModelStateCopyWithImpl<$Res>
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
    return 'DashboardModelState.preInitialized()';
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
    @required TResult loadingMore(DashboardModel dashboardModel),
    @required TResult preInitialized(),
    @required TResult success(DashboardModel dashboardModel),
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
    TResult loadingMore(DashboardModel dashboardModel),
    TResult preInitialized(),
    TResult success(DashboardModel dashboardModel),
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
    @required TResult loadingMore(StateLoadmore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loadingMore(StateLoadmore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class StatePreInitialized implements DashboardModelState {
  const factory StatePreInitialized() = _$StatePreInitialized;
}

/// @nodoc
abstract class $StateSuccessCopyWith<$Res> {
  factory $StateSuccessCopyWith(
          StateSuccess value, $Res Function(StateSuccess) then) =
      _$StateSuccessCopyWithImpl<$Res>;
  $Res call({DashboardModel dashboardModel});

  $DashboardModelCopyWith<$Res> get dashboardModel;
}

/// @nodoc
class _$StateSuccessCopyWithImpl<$Res>
    extends _$DashboardModelStateCopyWithImpl<$Res>
    implements $StateSuccessCopyWith<$Res> {
  _$StateSuccessCopyWithImpl(
      StateSuccess _value, $Res Function(StateSuccess) _then)
      : super(_value, (v) => _then(v as StateSuccess));

  @override
  StateSuccess get _value => super._value as StateSuccess;

  @override
  $Res call({
    Object dashboardModel = freezed,
  }) {
    return _then(StateSuccess(
      dashboardModel == freezed
          ? _value.dashboardModel
          : dashboardModel as DashboardModel,
    ));
  }

  @override
  $DashboardModelCopyWith<$Res> get dashboardModel {
    if (_value.dashboardModel == null) {
      return null;
    }
    return $DashboardModelCopyWith<$Res>(_value.dashboardModel, (value) {
      return _then(_value.copyWith(dashboardModel: value));
    });
  }
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(this.dashboardModel) : assert(dashboardModel != null);

  @override
  final DashboardModel dashboardModel;

  @override
  String toString() {
    return 'DashboardModelState.success(dashboardModel: $dashboardModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSuccess &&
            (identical(other.dashboardModel, dashboardModel) ||
                const DeepCollectionEquality()
                    .equals(other.dashboardModel, dashboardModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dashboardModel);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingMore(DashboardModel dashboardModel),
    @required TResult preInitialized(),
    @required TResult success(DashboardModel dashboardModel),
    @required TResult error(),
  }) {
    assert(loadingMore != null);
    assert(preInitialized != null);
    assert(success != null);
    assert(error != null);
    return success(dashboardModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingMore(DashboardModel dashboardModel),
    TResult preInitialized(),
    TResult success(DashboardModel dashboardModel),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(dashboardModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingMore(StateLoadmore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loadingMore(StateLoadmore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class StateSuccess implements DashboardModelState {
  const factory StateSuccess(DashboardModel dashboardModel) = _$StateSuccess;

  DashboardModel get dashboardModel;
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
    extends _$DashboardModelStateCopyWithImpl<$Res>
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
    return 'DashboardModelState.error()';
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
    @required TResult loadingMore(DashboardModel dashboardModel),
    @required TResult preInitialized(),
    @required TResult success(DashboardModel dashboardModel),
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
    TResult loadingMore(DashboardModel dashboardModel),
    TResult preInitialized(),
    TResult success(DashboardModel dashboardModel),
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
    @required TResult loadingMore(StateLoadmore value),
    @required TResult preInitialized(StatePreInitialized value),
    @required TResult success(StateSuccess value),
    @required TResult error(StateError value),
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
    TResult loadingMore(StateLoadmore value),
    TResult preInitialized(StatePreInitialized value),
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

abstract class StateError implements DashboardModelState {
  const factory StateError() = _$StateError;
}
