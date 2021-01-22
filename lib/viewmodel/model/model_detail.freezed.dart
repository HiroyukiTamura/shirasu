// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ModelDetailTearOff {
  const _$ModelDetailTearOff();

// ignore: unused_element
  _ModelDetail call(
      {@required DetailModelState prgDataResult,
      @required PlayOutState playOutState,
      @required bool isHandoutUrlRequesting}) {
    return _ModelDetail(
      prgDataResult: prgDataResult,
      playOutState: playOutState,
      isHandoutUrlRequesting: isHandoutUrlRequesting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelDetail = _$ModelDetailTearOff();

/// @nodoc
mixin _$ModelDetail {
  DetailModelState get prgDataResult;
  PlayOutState get playOutState;
  bool get isHandoutUrlRequesting;

  $ModelDetailCopyWith<ModelDetail> get copyWith;
}

/// @nodoc
abstract class $ModelDetailCopyWith<$Res> {
  factory $ModelDetailCopyWith(
          ModelDetail value, $Res Function(ModelDetail) then) =
      _$ModelDetailCopyWithImpl<$Res>;
  $Res call(
      {DetailModelState prgDataResult,
      PlayOutState playOutState,
      bool isHandoutUrlRequesting});

  $DetailModelStateCopyWith<$Res> get prgDataResult;
  $PlayOutStateCopyWith<$Res> get playOutState;
}

/// @nodoc
class _$ModelDetailCopyWithImpl<$Res> implements $ModelDetailCopyWith<$Res> {
  _$ModelDetailCopyWithImpl(this._value, this._then);

  final ModelDetail _value;
  // ignore: unused_field
  final $Res Function(ModelDetail) _then;

  @override
  $Res call({
    Object prgDataResult = freezed,
    Object playOutState = freezed,
    Object isHandoutUrlRequesting = freezed,
  }) {
    return _then(_value.copyWith(
      prgDataResult: prgDataResult == freezed
          ? _value.prgDataResult
          : prgDataResult as DetailModelState,
      playOutState: playOutState == freezed
          ? _value.playOutState
          : playOutState as PlayOutState,
      isHandoutUrlRequesting: isHandoutUrlRequesting == freezed
          ? _value.isHandoutUrlRequesting
          : isHandoutUrlRequesting as bool,
    ));
  }

  @override
  $DetailModelStateCopyWith<$Res> get prgDataResult {
    if (_value.prgDataResult == null) {
      return null;
    }
    return $DetailModelStateCopyWith<$Res>(_value.prgDataResult, (value) {
      return _then(_value.copyWith(prgDataResult: value));
    });
  }

  @override
  $PlayOutStateCopyWith<$Res> get playOutState {
    if (_value.playOutState == null) {
      return null;
    }
    return $PlayOutStateCopyWith<$Res>(_value.playOutState, (value) {
      return _then(_value.copyWith(playOutState: value));
    });
  }
}

/// @nodoc
abstract class _$ModelDetailCopyWith<$Res>
    implements $ModelDetailCopyWith<$Res> {
  factory _$ModelDetailCopyWith(
          _ModelDetail value, $Res Function(_ModelDetail) then) =
      __$ModelDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {DetailModelState prgDataResult,
      PlayOutState playOutState,
      bool isHandoutUrlRequesting});

  @override
  $DetailModelStateCopyWith<$Res> get prgDataResult;
  @override
  $PlayOutStateCopyWith<$Res> get playOutState;
}

/// @nodoc
class __$ModelDetailCopyWithImpl<$Res> extends _$ModelDetailCopyWithImpl<$Res>
    implements _$ModelDetailCopyWith<$Res> {
  __$ModelDetailCopyWithImpl(
      _ModelDetail _value, $Res Function(_ModelDetail) _then)
      : super(_value, (v) => _then(v as _ModelDetail));

  @override
  _ModelDetail get _value => super._value as _ModelDetail;

  @override
  $Res call({
    Object prgDataResult = freezed,
    Object playOutState = freezed,
    Object isHandoutUrlRequesting = freezed,
  }) {
    return _then(_ModelDetail(
      prgDataResult: prgDataResult == freezed
          ? _value.prgDataResult
          : prgDataResult as DetailModelState,
      playOutState: playOutState == freezed
          ? _value.playOutState
          : playOutState as PlayOutState,
      isHandoutUrlRequesting: isHandoutUrlRequesting == freezed
          ? _value.isHandoutUrlRequesting
          : isHandoutUrlRequesting as bool,
    ));
  }
}

/// @nodoc
class _$_ModelDetail extends _ModelDetail {
  const _$_ModelDetail(
      {@required this.prgDataResult,
      @required this.playOutState,
      @required this.isHandoutUrlRequesting})
      : assert(prgDataResult != null),
        assert(playOutState != null),
        assert(isHandoutUrlRequesting != null),
        super._();

  @override
  final DetailModelState prgDataResult;
  @override
  final PlayOutState playOutState;
  @override
  final bool isHandoutUrlRequesting;

  @override
  String toString() {
    return 'ModelDetail(prgDataResult: $prgDataResult, playOutState: $playOutState, isHandoutUrlRequesting: $isHandoutUrlRequesting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelDetail &&
            (identical(other.prgDataResult, prgDataResult) ||
                const DeepCollectionEquality()
                    .equals(other.prgDataResult, prgDataResult)) &&
            (identical(other.playOutState, playOutState) ||
                const DeepCollectionEquality()
                    .equals(other.playOutState, playOutState)) &&
            (identical(other.isHandoutUrlRequesting, isHandoutUrlRequesting) ||
                const DeepCollectionEquality().equals(
                    other.isHandoutUrlRequesting, isHandoutUrlRequesting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prgDataResult) ^
      const DeepCollectionEquality().hash(playOutState) ^
      const DeepCollectionEquality().hash(isHandoutUrlRequesting);

  @override
  _$ModelDetailCopyWith<_ModelDetail> get copyWith =>
      __$ModelDetailCopyWithImpl<_ModelDetail>(this, _$identity);
}

abstract class _ModelDetail extends ModelDetail {
  const _ModelDetail._() : super._();
  const factory _ModelDetail(
      {@required DetailModelState prgDataResult,
      @required PlayOutState playOutState,
      @required bool isHandoutUrlRequesting}) = _$_ModelDetail;

  @override
  DetailModelState get prgDataResult;
  @override
  PlayOutState get playOutState;
  @override
  bool get isHandoutUrlRequesting;
  @override
  _$ModelDetailCopyWith<_ModelDetail> get copyWith;
}

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
      {@required ProgramDetailData programDetailData,
      @required ChannelData channelData,
      @required PageSheetModel page}) {
    return StateSuccess(
      programDetailData: programDetailData,
      channelData: channelData,
      page: page,
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
        TResult success(ProgramDetailData programDetailData,
            ChannelData channelData, PageSheetModel page),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ProgramDetailData programDetailData,
        ChannelData channelData, PageSheetModel page),
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
        TResult success(ProgramDetailData programDetailData,
            ChannelData channelData, PageSheetModel page),
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
    TResult success(ProgramDetailData programDetailData,
        ChannelData channelData, PageSheetModel page),
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
        TResult success(ProgramDetailData programDetailData,
            ChannelData channelData, PageSheetModel page),
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
    TResult success(ProgramDetailData programDetailData,
        ChannelData channelData, PageSheetModel page),
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
  $Res call(
      {ProgramDetailData programDetailData,
      ChannelData channelData,
      PageSheetModel page});

  $ProgramDetailDataCopyWith<$Res> get programDetailData;
  $ChannelDataCopyWith<$Res> get channelData;
  $PageSheetModelCopyWith<$Res> get page;
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
    Object page = freezed,
  }) {
    return _then(StateSuccess(
      programDetailData: programDetailData == freezed
          ? _value.programDetailData
          : programDetailData as ProgramDetailData,
      channelData: channelData == freezed
          ? _value.channelData
          : channelData as ChannelData,
      page: page == freezed ? _value.page : page as PageSheetModel,
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

  @override
  $PageSheetModelCopyWith<$Res> get page {
    if (_value.page == null) {
      return null;
    }
    return $PageSheetModelCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
class _$StateSuccess implements StateSuccess {
  const _$StateSuccess(
      {@required this.programDetailData,
      @required this.channelData,
      @required this.page})
      : assert(programDetailData != null),
        assert(channelData != null),
        assert(page != null);

  @override
  final ProgramDetailData programDetailData;
  @override
  final ChannelData channelData;
  @override
  final PageSheetModel page;

  @override
  String toString() {
    return 'DetailModelState.success(programDetailData: $programDetailData, channelData: $channelData, page: $page)';
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
                    .equals(other.channelData, channelData)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programDetailData) ^
      const DeepCollectionEquality().hash(channelData) ^
      const DeepCollectionEquality().hash(page);

  @override
  $StateSuccessCopyWith<StateSuccess> get copyWith =>
      _$StateSuccessCopyWithImpl<StateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult loading(),
    @required
        TResult success(ProgramDetailData programDetailData,
            ChannelData channelData, PageSheetModel page),
    @required TResult error(),
  }) {
    assert(preInitialized != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(programDetailData, channelData, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult loading(),
    TResult success(ProgramDetailData programDetailData,
        ChannelData channelData, PageSheetModel page),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(programDetailData, channelData, page);
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
      {@required ProgramDetailData programDetailData,
      @required ChannelData channelData,
      @required PageSheetModel page}) = _$StateSuccess;

  ProgramDetailData get programDetailData;
  ChannelData get channelData;
  PageSheetModel get page;
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
        TResult success(ProgramDetailData programDetailData,
            ChannelData channelData, PageSheetModel page),
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
    TResult success(ProgramDetailData programDetailData,
        ChannelData channelData, PageSheetModel page),
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

/// @nodoc
class _$PlayOutStateTearOff {
  const _$PlayOutStateTearOff();

// ignore: unused_element
  _PlayOutState call(
      {@required PlayerCommandedState commandedState,
      String hlsMediaUrl,
      VideoType videoType,
      String cookie,
      bool isPlaying = false,
      Duration currentPos = Duration.zero,
      Duration totalDuration = Duration.zero,
      bool fullScreen = false}) {
    return _PlayOutState(
      commandedState: commandedState,
      hlsMediaUrl: hlsMediaUrl,
      videoType: videoType,
      cookie: cookie,
      isPlaying: isPlaying,
      currentPos: currentPos,
      totalDuration: totalDuration,
      fullScreen: fullScreen,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlayOutState = _$PlayOutStateTearOff();

/// @nodoc
mixin _$PlayOutState {
  PlayerCommandedState get commandedState;
  String get hlsMediaUrl;
  VideoType get videoType;
  String get cookie;
  bool get isPlaying;
  Duration get currentPos;
  Duration get totalDuration;
  bool get fullScreen;

  $PlayOutStateCopyWith<PlayOutState> get copyWith;
}

/// @nodoc
abstract class $PlayOutStateCopyWith<$Res> {
  factory $PlayOutStateCopyWith(
          PlayOutState value, $Res Function(PlayOutState) then) =
      _$PlayOutStateCopyWithImpl<$Res>;
  $Res call(
      {PlayerCommandedState commandedState,
      String hlsMediaUrl,
      VideoType videoType,
      String cookie,
      bool isPlaying,
      Duration currentPos,
      Duration totalDuration,
      bool fullScreen});

  $PlayerCommandedStateCopyWith<$Res> get commandedState;
}

/// @nodoc
class _$PlayOutStateCopyWithImpl<$Res> implements $PlayOutStateCopyWith<$Res> {
  _$PlayOutStateCopyWithImpl(this._value, this._then);

  final PlayOutState _value;
  // ignore: unused_field
  final $Res Function(PlayOutState) _then;

  @override
  $Res call({
    Object commandedState = freezed,
    Object hlsMediaUrl = freezed,
    Object videoType = freezed,
    Object cookie = freezed,
    Object isPlaying = freezed,
    Object currentPos = freezed,
    Object totalDuration = freezed,
    Object fullScreen = freezed,
  }) {
    return _then(_value.copyWith(
      commandedState: commandedState == freezed
          ? _value.commandedState
          : commandedState as PlayerCommandedState,
      hlsMediaUrl:
          hlsMediaUrl == freezed ? _value.hlsMediaUrl : hlsMediaUrl as String,
      videoType:
          videoType == freezed ? _value.videoType : videoType as VideoType,
      cookie: cookie == freezed ? _value.cookie : cookie as String,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      currentPos:
          currentPos == freezed ? _value.currentPos : currentPos as Duration,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as Duration,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
    ));
  }

  @override
  $PlayerCommandedStateCopyWith<$Res> get commandedState {
    if (_value.commandedState == null) {
      return null;
    }
    return $PlayerCommandedStateCopyWith<$Res>(_value.commandedState, (value) {
      return _then(_value.copyWith(commandedState: value));
    });
  }
}

/// @nodoc
abstract class _$PlayOutStateCopyWith<$Res>
    implements $PlayOutStateCopyWith<$Res> {
  factory _$PlayOutStateCopyWith(
          _PlayOutState value, $Res Function(_PlayOutState) then) =
      __$PlayOutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PlayerCommandedState commandedState,
      String hlsMediaUrl,
      VideoType videoType,
      String cookie,
      bool isPlaying,
      Duration currentPos,
      Duration totalDuration,
      bool fullScreen});

  @override
  $PlayerCommandedStateCopyWith<$Res> get commandedState;
}

/// @nodoc
class __$PlayOutStateCopyWithImpl<$Res> extends _$PlayOutStateCopyWithImpl<$Res>
    implements _$PlayOutStateCopyWith<$Res> {
  __$PlayOutStateCopyWithImpl(
      _PlayOutState _value, $Res Function(_PlayOutState) _then)
      : super(_value, (v) => _then(v as _PlayOutState));

  @override
  _PlayOutState get _value => super._value as _PlayOutState;

  @override
  $Res call({
    Object commandedState = freezed,
    Object hlsMediaUrl = freezed,
    Object videoType = freezed,
    Object cookie = freezed,
    Object isPlaying = freezed,
    Object currentPos = freezed,
    Object totalDuration = freezed,
    Object fullScreen = freezed,
  }) {
    return _then(_PlayOutState(
      commandedState: commandedState == freezed
          ? _value.commandedState
          : commandedState as PlayerCommandedState,
      hlsMediaUrl:
          hlsMediaUrl == freezed ? _value.hlsMediaUrl : hlsMediaUrl as String,
      videoType:
          videoType == freezed ? _value.videoType : videoType as VideoType,
      cookie: cookie == freezed ? _value.cookie : cookie as String,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      currentPos:
          currentPos == freezed ? _value.currentPos : currentPos as Duration,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as Duration,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
    ));
  }
}

/// @nodoc
class _$_PlayOutState extends _PlayOutState {
  const _$_PlayOutState(
      {@required this.commandedState,
      this.hlsMediaUrl,
      this.videoType,
      this.cookie,
      this.isPlaying = false,
      this.currentPos = Duration.zero,
      this.totalDuration = Duration.zero,
      this.fullScreen = false})
      : assert(commandedState != null),
        assert(isPlaying != null),
        assert(currentPos != null),
        assert(totalDuration != null),
        assert(fullScreen != null),
        super._();

  @override
  final PlayerCommandedState commandedState;
  @override
  final String hlsMediaUrl;
  @override
  final VideoType videoType;
  @override
  final String cookie;
  @JsonKey(defaultValue: false)
  @override
  final bool isPlaying;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration currentPos;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration totalDuration;
  @JsonKey(defaultValue: false)
  @override
  final bool fullScreen;

  @override
  String toString() {
    return 'PlayOutState(commandedState: $commandedState, hlsMediaUrl: $hlsMediaUrl, videoType: $videoType, cookie: $cookie, isPlaying: $isPlaying, currentPos: $currentPos, totalDuration: $totalDuration, fullScreen: $fullScreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayOutState &&
            (identical(other.commandedState, commandedState) ||
                const DeepCollectionEquality()
                    .equals(other.commandedState, commandedState)) &&
            (identical(other.hlsMediaUrl, hlsMediaUrl) ||
                const DeepCollectionEquality()
                    .equals(other.hlsMediaUrl, hlsMediaUrl)) &&
            (identical(other.videoType, videoType) ||
                const DeepCollectionEquality()
                    .equals(other.videoType, videoType)) &&
            (identical(other.cookie, cookie) ||
                const DeepCollectionEquality().equals(other.cookie, cookie)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.currentPos, currentPos) ||
                const DeepCollectionEquality()
                    .equals(other.currentPos, currentPos)) &&
            (identical(other.totalDuration, totalDuration) ||
                const DeepCollectionEquality()
                    .equals(other.totalDuration, totalDuration)) &&
            (identical(other.fullScreen, fullScreen) ||
                const DeepCollectionEquality()
                    .equals(other.fullScreen, fullScreen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commandedState) ^
      const DeepCollectionEquality().hash(hlsMediaUrl) ^
      const DeepCollectionEquality().hash(videoType) ^
      const DeepCollectionEquality().hash(cookie) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(currentPos) ^
      const DeepCollectionEquality().hash(totalDuration) ^
      const DeepCollectionEquality().hash(fullScreen);

  @override
  _$PlayOutStateCopyWith<_PlayOutState> get copyWith =>
      __$PlayOutStateCopyWithImpl<_PlayOutState>(this, _$identity);
}

abstract class _PlayOutState extends PlayOutState {
  const _PlayOutState._() : super._();
  const factory _PlayOutState(
      {@required PlayerCommandedState commandedState,
      String hlsMediaUrl,
      VideoType videoType,
      String cookie,
      bool isPlaying,
      Duration currentPos,
      Duration totalDuration,
      bool fullScreen}) = _$_PlayOutState;

  @override
  PlayerCommandedState get commandedState;
  @override
  String get hlsMediaUrl;
  @override
  VideoType get videoType;
  @override
  String get cookie;
  @override
  bool get isPlaying;
  @override
  Duration get currentPos;
  @override
  Duration get totalDuration;
  @override
  bool get fullScreen;
  @override
  _$PlayOutStateCopyWith<_PlayOutState> get copyWith;
}

/// @nodoc
class _$PlayerCommandedStateTearOff {
  const _$PlayerCommandedStateTearOff();

// ignore: unused_element
  PlayerCommandedStatePlayError playError() {
    return const PlayerCommandedStatePlayError();
  }

// ignore: unused_element
  PlayerCommandedStatePrePlay prePlay() {
    return const PlayerCommandedStatePrePlay();
  }

// ignore: unused_element
  PlayerCommandedStatePostPlay postPlay() {
    return const PlayerCommandedStatePostPlay();
  }

// ignore: unused_element
  PlayerCommandedStateInitializing initializing() {
    return const PlayerCommandedStateInitializing();
  }

// ignore: unused_element
  PlayerCommandedStateError error() {
    return const PlayerCommandedStateError();
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerCommandedState = _$PlayerCommandedStateTearOff();

/// @nodoc
mixin _$PlayerCommandedState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlayerCommandedStateCopyWith<$Res> {
  factory $PlayerCommandedStateCopyWith(PlayerCommandedState value,
          $Res Function(PlayerCommandedState) then) =
      _$PlayerCommandedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStateCopyWith<$Res> {
  _$PlayerCommandedStateCopyWithImpl(this._value, this._then);

  final PlayerCommandedState _value;
  // ignore: unused_field
  final $Res Function(PlayerCommandedState) _then;
}

/// @nodoc
abstract class $PlayerCommandedStatePlayErrorCopyWith<$Res> {
  factory $PlayerCommandedStatePlayErrorCopyWith(
          PlayerCommandedStatePlayError value,
          $Res Function(PlayerCommandedStatePlayError) then) =
      _$PlayerCommandedStatePlayErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStatePlayErrorCopyWithImpl<$Res>
    extends _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStatePlayErrorCopyWith<$Res> {
  _$PlayerCommandedStatePlayErrorCopyWithImpl(
      PlayerCommandedStatePlayError _value,
      $Res Function(PlayerCommandedStatePlayError) _then)
      : super(_value, (v) => _then(v as PlayerCommandedStatePlayError));

  @override
  PlayerCommandedStatePlayError get _value =>
      super._value as PlayerCommandedStatePlayError;
}

/// @nodoc
class _$PlayerCommandedStatePlayError implements PlayerCommandedStatePlayError {
  const _$PlayerCommandedStatePlayError();

  @override
  String toString() {
    return 'PlayerCommandedState.playError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerCommandedStatePlayError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return playError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playError != null) {
      return playError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return playError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playError != null) {
      return playError(this);
    }
    return orElse();
  }
}

abstract class PlayerCommandedStatePlayError implements PlayerCommandedState {
  const factory PlayerCommandedStatePlayError() =
      _$PlayerCommandedStatePlayError;
}

/// @nodoc
abstract class $PlayerCommandedStatePrePlayCopyWith<$Res> {
  factory $PlayerCommandedStatePrePlayCopyWith(
          PlayerCommandedStatePrePlay value,
          $Res Function(PlayerCommandedStatePrePlay) then) =
      _$PlayerCommandedStatePrePlayCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStatePrePlayCopyWithImpl<$Res>
    extends _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStatePrePlayCopyWith<$Res> {
  _$PlayerCommandedStatePrePlayCopyWithImpl(PlayerCommandedStatePrePlay _value,
      $Res Function(PlayerCommandedStatePrePlay) _then)
      : super(_value, (v) => _then(v as PlayerCommandedStatePrePlay));

  @override
  PlayerCommandedStatePrePlay get _value =>
      super._value as PlayerCommandedStatePrePlay;
}

/// @nodoc
class _$PlayerCommandedStatePrePlay implements PlayerCommandedStatePrePlay {
  const _$PlayerCommandedStatePrePlay();

  @override
  String toString() {
    return 'PlayerCommandedState.prePlay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerCommandedStatePrePlay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return prePlay();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prePlay != null) {
      return prePlay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return prePlay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prePlay != null) {
      return prePlay(this);
    }
    return orElse();
  }
}

abstract class PlayerCommandedStatePrePlay implements PlayerCommandedState {
  const factory PlayerCommandedStatePrePlay() = _$PlayerCommandedStatePrePlay;
}

/// @nodoc
abstract class $PlayerCommandedStatePostPlayCopyWith<$Res> {
  factory $PlayerCommandedStatePostPlayCopyWith(
          PlayerCommandedStatePostPlay value,
          $Res Function(PlayerCommandedStatePostPlay) then) =
      _$PlayerCommandedStatePostPlayCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStatePostPlayCopyWithImpl<$Res>
    extends _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStatePostPlayCopyWith<$Res> {
  _$PlayerCommandedStatePostPlayCopyWithImpl(
      PlayerCommandedStatePostPlay _value,
      $Res Function(PlayerCommandedStatePostPlay) _then)
      : super(_value, (v) => _then(v as PlayerCommandedStatePostPlay));

  @override
  PlayerCommandedStatePostPlay get _value =>
      super._value as PlayerCommandedStatePostPlay;
}

/// @nodoc
class _$PlayerCommandedStatePostPlay implements PlayerCommandedStatePostPlay {
  const _$PlayerCommandedStatePostPlay();

  @override
  String toString() {
    return 'PlayerCommandedState.postPlay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerCommandedStatePostPlay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return postPlay();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postPlay != null) {
      return postPlay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return postPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postPlay != null) {
      return postPlay(this);
    }
    return orElse();
  }
}

abstract class PlayerCommandedStatePostPlay implements PlayerCommandedState {
  const factory PlayerCommandedStatePostPlay() = _$PlayerCommandedStatePostPlay;
}

/// @nodoc
abstract class $PlayerCommandedStateInitializingCopyWith<$Res> {
  factory $PlayerCommandedStateInitializingCopyWith(
          PlayerCommandedStateInitializing value,
          $Res Function(PlayerCommandedStateInitializing) then) =
      _$PlayerCommandedStateInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStateInitializingCopyWithImpl<$Res>
    extends _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStateInitializingCopyWith<$Res> {
  _$PlayerCommandedStateInitializingCopyWithImpl(
      PlayerCommandedStateInitializing _value,
      $Res Function(PlayerCommandedStateInitializing) _then)
      : super(_value, (v) => _then(v as PlayerCommandedStateInitializing));

  @override
  PlayerCommandedStateInitializing get _value =>
      super._value as PlayerCommandedStateInitializing;
}

/// @nodoc
class _$PlayerCommandedStateInitializing
    implements PlayerCommandedStateInitializing {
  const _$PlayerCommandedStateInitializing();

  @override
  String toString() {
    return 'PlayerCommandedState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerCommandedStateInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class PlayerCommandedStateInitializing
    implements PlayerCommandedState {
  const factory PlayerCommandedStateInitializing() =
      _$PlayerCommandedStateInitializing;
}

/// @nodoc
abstract class $PlayerCommandedStateErrorCopyWith<$Res> {
  factory $PlayerCommandedStateErrorCopyWith(PlayerCommandedStateError value,
          $Res Function(PlayerCommandedStateError) then) =
      _$PlayerCommandedStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerCommandedStateErrorCopyWithImpl<$Res>
    extends _$PlayerCommandedStateCopyWithImpl<$Res>
    implements $PlayerCommandedStateErrorCopyWith<$Res> {
  _$PlayerCommandedStateErrorCopyWithImpl(PlayerCommandedStateError _value,
      $Res Function(PlayerCommandedStateError) _then)
      : super(_value, (v) => _then(v as PlayerCommandedStateError));

  @override
  PlayerCommandedStateError get _value =>
      super._value as PlayerCommandedStateError;
}

/// @nodoc
class _$PlayerCommandedStateError implements PlayerCommandedStateError {
  const _$PlayerCommandedStateError();

  @override
  String toString() {
    return 'PlayerCommandedState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerCommandedStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playError(),
    @required TResult prePlay(),
    @required TResult postPlay(),
    @required TResult initializing(),
    @required TResult error(),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playError(),
    TResult prePlay(),
    TResult postPlay(),
    TResult initializing(),
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
    @required TResult playError(PlayerCommandedStatePlayError value),
    @required TResult prePlay(PlayerCommandedStatePrePlay value),
    @required TResult postPlay(PlayerCommandedStatePostPlay value),
    @required TResult initializing(PlayerCommandedStateInitializing value),
    @required TResult error(PlayerCommandedStateError value),
  }) {
    assert(playError != null);
    assert(prePlay != null);
    assert(postPlay != null);
    assert(initializing != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playError(PlayerCommandedStatePlayError value),
    TResult prePlay(PlayerCommandedStatePrePlay value),
    TResult postPlay(PlayerCommandedStatePostPlay value),
    TResult initializing(PlayerCommandedStateInitializing value),
    TResult error(PlayerCommandedStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlayerCommandedStateError implements PlayerCommandedState {
  const factory PlayerCommandedStateError() = _$PlayerCommandedStateError;
}

/// @nodoc
class _$PageSheetModelTearOff {
  const _$PageSheetModelTearOff();

// ignore: unused_element
  _PageSheetModelHidden hidden() {
    return const _PageSheetModelHidden();
  }

// ignore: unused_element
  PageSheetModelHandouts handouts() {
    return const PageSheetModelHandouts();
  }

// ignore: unused_element
  PageSheetModelPricing pricing() {
    return const PageSheetModelPricing();
  }
}

/// @nodoc
// ignore: unused_element
const $PageSheetModel = _$PageSheetModelTearOff();

/// @nodoc
mixin _$PageSheetModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult hidden(),
    @required TResult handouts(),
    @required TResult pricing(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult hidden(),
    TResult handouts(),
    TResult pricing(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult hidden(_PageSheetModelHidden value),
    @required TResult handouts(PageSheetModelHandouts value),
    @required TResult pricing(PageSheetModelPricing value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult hidden(_PageSheetModelHidden value),
    TResult handouts(PageSheetModelHandouts value),
    TResult pricing(PageSheetModelPricing value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PageSheetModelCopyWith<$Res> {
  factory $PageSheetModelCopyWith(
          PageSheetModel value, $Res Function(PageSheetModel) then) =
      _$PageSheetModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageSheetModelCopyWithImpl<$Res>
    implements $PageSheetModelCopyWith<$Res> {
  _$PageSheetModelCopyWithImpl(this._value, this._then);

  final PageSheetModel _value;
  // ignore: unused_field
  final $Res Function(PageSheetModel) _then;
}

/// @nodoc
abstract class _$PageSheetModelHiddenCopyWith<$Res> {
  factory _$PageSheetModelHiddenCopyWith(_PageSheetModelHidden value,
          $Res Function(_PageSheetModelHidden) then) =
      __$PageSheetModelHiddenCopyWithImpl<$Res>;
}

/// @nodoc
class __$PageSheetModelHiddenCopyWithImpl<$Res>
    extends _$PageSheetModelCopyWithImpl<$Res>
    implements _$PageSheetModelHiddenCopyWith<$Res> {
  __$PageSheetModelHiddenCopyWithImpl(
      _PageSheetModelHidden _value, $Res Function(_PageSheetModelHidden) _then)
      : super(_value, (v) => _then(v as _PageSheetModelHidden));

  @override
  _PageSheetModelHidden get _value => super._value as _PageSheetModelHidden;
}

/// @nodoc
class _$_PageSheetModelHidden implements _PageSheetModelHidden {
  const _$_PageSheetModelHidden();

  @override
  String toString() {
    return 'PageSheetModel.hidden()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PageSheetModelHidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult hidden(),
    @required TResult handouts(),
    @required TResult pricing(),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return hidden();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult hidden(),
    TResult handouts(),
    TResult pricing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hidden != null) {
      return hidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult hidden(_PageSheetModelHidden value),
    @required TResult handouts(PageSheetModelHandouts value),
    @required TResult pricing(PageSheetModelPricing value),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return hidden(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult hidden(_PageSheetModelHidden value),
    TResult handouts(PageSheetModelHandouts value),
    TResult pricing(PageSheetModelPricing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hidden != null) {
      return hidden(this);
    }
    return orElse();
  }
}

abstract class _PageSheetModelHidden implements PageSheetModel {
  const factory _PageSheetModelHidden() = _$_PageSheetModelHidden;
}

/// @nodoc
abstract class $PageSheetModelHandoutsCopyWith<$Res> {
  factory $PageSheetModelHandoutsCopyWith(PageSheetModelHandouts value,
          $Res Function(PageSheetModelHandouts) then) =
      _$PageSheetModelHandoutsCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageSheetModelHandoutsCopyWithImpl<$Res>
    extends _$PageSheetModelCopyWithImpl<$Res>
    implements $PageSheetModelHandoutsCopyWith<$Res> {
  _$PageSheetModelHandoutsCopyWithImpl(PageSheetModelHandouts _value,
      $Res Function(PageSheetModelHandouts) _then)
      : super(_value, (v) => _then(v as PageSheetModelHandouts));

  @override
  PageSheetModelHandouts get _value => super._value as PageSheetModelHandouts;
}

/// @nodoc
class _$PageSheetModelHandouts implements PageSheetModelHandouts {
  const _$PageSheetModelHandouts();

  @override
  String toString() {
    return 'PageSheetModel.handouts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageSheetModelHandouts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult hidden(),
    @required TResult handouts(),
    @required TResult pricing(),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return handouts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult hidden(),
    TResult handouts(),
    TResult pricing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (handouts != null) {
      return handouts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult hidden(_PageSheetModelHidden value),
    @required TResult handouts(PageSheetModelHandouts value),
    @required TResult pricing(PageSheetModelPricing value),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return handouts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult hidden(_PageSheetModelHidden value),
    TResult handouts(PageSheetModelHandouts value),
    TResult pricing(PageSheetModelPricing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (handouts != null) {
      return handouts(this);
    }
    return orElse();
  }
}

abstract class PageSheetModelHandouts implements PageSheetModel {
  const factory PageSheetModelHandouts() = _$PageSheetModelHandouts;
}

/// @nodoc
abstract class $PageSheetModelPricingCopyWith<$Res> {
  factory $PageSheetModelPricingCopyWith(PageSheetModelPricing value,
          $Res Function(PageSheetModelPricing) then) =
      _$PageSheetModelPricingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageSheetModelPricingCopyWithImpl<$Res>
    extends _$PageSheetModelCopyWithImpl<$Res>
    implements $PageSheetModelPricingCopyWith<$Res> {
  _$PageSheetModelPricingCopyWithImpl(
      PageSheetModelPricing _value, $Res Function(PageSheetModelPricing) _then)
      : super(_value, (v) => _then(v as PageSheetModelPricing));

  @override
  PageSheetModelPricing get _value => super._value as PageSheetModelPricing;
}

/// @nodoc
class _$PageSheetModelPricing implements PageSheetModelPricing {
  const _$PageSheetModelPricing();

  @override
  String toString() {
    return 'PageSheetModel.pricing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageSheetModelPricing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult hidden(),
    @required TResult handouts(),
    @required TResult pricing(),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return pricing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult hidden(),
    TResult handouts(),
    TResult pricing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pricing != null) {
      return pricing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult hidden(_PageSheetModelHidden value),
    @required TResult handouts(PageSheetModelHandouts value),
    @required TResult pricing(PageSheetModelPricing value),
  }) {
    assert(hidden != null);
    assert(handouts != null);
    assert(pricing != null);
    return pricing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult hidden(_PageSheetModelHidden value),
    TResult handouts(PageSheetModelHandouts value),
    TResult pricing(PageSheetModelPricing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pricing != null) {
      return pricing(this);
    }
    return orElse();
  }
}

abstract class PageSheetModelPricing implements PageSheetModel {
  const factory PageSheetModelPricing() = _$PageSheetModelPricing;
}
