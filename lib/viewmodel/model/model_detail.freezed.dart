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
      Duration currentPosForUi = Duration.zero,
      Duration totalDuration = Duration.zero,
      bool controllerVisibility = false,
      bool isSeekBarDragging = false,
      bool fullScreen = false,
      bool isBuffering = false,
      VideoPlayerState videoPlayerState =
          const VideoPlayerState.preInitialized(),
      LastControllerCommandHolder lastControllerCommandHolder =
          const LastControllerCommandHolder()}) {
    return _PlayOutState(
      commandedState: commandedState,
      hlsMediaUrl: hlsMediaUrl,
      videoType: videoType,
      cookie: cookie,
      isPlaying: isPlaying,
      currentPos: currentPos,
      currentPosForUi: currentPosForUi,
      totalDuration: totalDuration,
      controllerVisibility: controllerVisibility,
      isSeekBarDragging: isSeekBarDragging,
      fullScreen: fullScreen,
      isBuffering: isBuffering,
      videoPlayerState: videoPlayerState,
      lastControllerCommandHolder: lastControllerCommandHolder,
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
  Duration get currentPosForUi;
  Duration get totalDuration;
  bool get controllerVisibility;
  bool get isSeekBarDragging;
  bool get fullScreen;
  bool get isBuffering;
  VideoPlayerState get videoPlayerState;
  LastControllerCommandHolder get lastControllerCommandHolder;

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
      Duration currentPosForUi,
      Duration totalDuration,
      bool controllerVisibility,
      bool isSeekBarDragging,
      bool fullScreen,
      bool isBuffering,
      VideoPlayerState videoPlayerState,
      LastControllerCommandHolder lastControllerCommandHolder});

  $PlayerCommandedStateCopyWith<$Res> get commandedState;
  $VideoPlayerStateCopyWith<$Res> get videoPlayerState;
  $LastControllerCommandHolderCopyWith<$Res> get lastControllerCommandHolder;
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
    Object currentPosForUi = freezed,
    Object totalDuration = freezed,
    Object controllerVisibility = freezed,
    Object isSeekBarDragging = freezed,
    Object fullScreen = freezed,
    Object isBuffering = freezed,
    Object videoPlayerState = freezed,
    Object lastControllerCommandHolder = freezed,
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
      currentPosForUi: currentPosForUi == freezed
          ? _value.currentPosForUi
          : currentPosForUi as Duration,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as Duration,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
      isSeekBarDragging: isSeekBarDragging == freezed
          ? _value.isSeekBarDragging
          : isSeekBarDragging as bool,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
      isBuffering:
          isBuffering == freezed ? _value.isBuffering : isBuffering as bool,
      videoPlayerState: videoPlayerState == freezed
          ? _value.videoPlayerState
          : videoPlayerState as VideoPlayerState,
      lastControllerCommandHolder: lastControllerCommandHolder == freezed
          ? _value.lastControllerCommandHolder
          : lastControllerCommandHolder as LastControllerCommandHolder,
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

  @override
  $VideoPlayerStateCopyWith<$Res> get videoPlayerState {
    if (_value.videoPlayerState == null) {
      return null;
    }
    return $VideoPlayerStateCopyWith<$Res>(_value.videoPlayerState, (value) {
      return _then(_value.copyWith(videoPlayerState: value));
    });
  }

  @override
  $LastControllerCommandHolderCopyWith<$Res> get lastControllerCommandHolder {
    if (_value.lastControllerCommandHolder == null) {
      return null;
    }
    return $LastControllerCommandHolderCopyWith<$Res>(
        _value.lastControllerCommandHolder, (value) {
      return _then(_value.copyWith(lastControllerCommandHolder: value));
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
      Duration currentPosForUi,
      Duration totalDuration,
      bool controllerVisibility,
      bool isSeekBarDragging,
      bool fullScreen,
      bool isBuffering,
      VideoPlayerState videoPlayerState,
      LastControllerCommandHolder lastControllerCommandHolder});

  @override
  $PlayerCommandedStateCopyWith<$Res> get commandedState;
  @override
  $VideoPlayerStateCopyWith<$Res> get videoPlayerState;
  @override
  $LastControllerCommandHolderCopyWith<$Res> get lastControllerCommandHolder;
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
    Object currentPosForUi = freezed,
    Object totalDuration = freezed,
    Object controllerVisibility = freezed,
    Object isSeekBarDragging = freezed,
    Object fullScreen = freezed,
    Object isBuffering = freezed,
    Object videoPlayerState = freezed,
    Object lastControllerCommandHolder = freezed,
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
      currentPosForUi: currentPosForUi == freezed
          ? _value.currentPosForUi
          : currentPosForUi as Duration,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration as Duration,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
      isSeekBarDragging: isSeekBarDragging == freezed
          ? _value.isSeekBarDragging
          : isSeekBarDragging as bool,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
      isBuffering:
          isBuffering == freezed ? _value.isBuffering : isBuffering as bool,
      videoPlayerState: videoPlayerState == freezed
          ? _value.videoPlayerState
          : videoPlayerState as VideoPlayerState,
      lastControllerCommandHolder: lastControllerCommandHolder == freezed
          ? _value.lastControllerCommandHolder
          : lastControllerCommandHolder as LastControllerCommandHolder,
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
      this.currentPosForUi = Duration.zero,
      this.totalDuration = Duration.zero,
      this.controllerVisibility = false,
      this.isSeekBarDragging = false,
      this.fullScreen = false,
      this.isBuffering = false,
      this.videoPlayerState = const VideoPlayerState.preInitialized(),
      this.lastControllerCommandHolder = const LastControllerCommandHolder()})
      : assert(commandedState != null),
        assert(isPlaying != null),
        assert(currentPos != null),
        assert(currentPosForUi != null),
        assert(totalDuration != null),
        assert(controllerVisibility != null),
        assert(isSeekBarDragging != null),
        assert(fullScreen != null),
        assert(isBuffering != null),
        assert(videoPlayerState != null),
        assert(lastControllerCommandHolder != null),
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
  final Duration currentPosForUi;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration totalDuration;
  @JsonKey(defaultValue: false)
  @override
  final bool controllerVisibility;
  @JsonKey(defaultValue: false)
  @override
  final bool isSeekBarDragging;
  @JsonKey(defaultValue: false)
  @override
  final bool fullScreen;
  @JsonKey(defaultValue: false)
  @override
  final bool isBuffering;
  @JsonKey(defaultValue: const VideoPlayerState.preInitialized())
  @override
  final VideoPlayerState videoPlayerState;
  @JsonKey(defaultValue: const LastControllerCommandHolder())
  @override
  final LastControllerCommandHolder lastControllerCommandHolder;

  @override
  String toString() {
    return 'PlayOutState(commandedState: $commandedState, hlsMediaUrl: $hlsMediaUrl, videoType: $videoType, cookie: $cookie, isPlaying: $isPlaying, currentPos: $currentPos, currentPosForUi: $currentPosForUi, totalDuration: $totalDuration, controllerVisibility: $controllerVisibility, isSeekBarDragging: $isSeekBarDragging, fullScreen: $fullScreen, isBuffering: $isBuffering, videoPlayerState: $videoPlayerState, lastControllerCommandHolder: $lastControllerCommandHolder)';
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
            (identical(other.currentPosForUi, currentPosForUi) ||
                const DeepCollectionEquality()
                    .equals(other.currentPosForUi, currentPosForUi)) &&
            (identical(other.totalDuration, totalDuration) ||
                const DeepCollectionEquality()
                    .equals(other.totalDuration, totalDuration)) &&
            (identical(other.controllerVisibility, controllerVisibility) ||
                const DeepCollectionEquality().equals(
                    other.controllerVisibility, controllerVisibility)) &&
            (identical(other.isSeekBarDragging, isSeekBarDragging) ||
                const DeepCollectionEquality()
                    .equals(other.isSeekBarDragging, isSeekBarDragging)) &&
            (identical(other.fullScreen, fullScreen) ||
                const DeepCollectionEquality()
                    .equals(other.fullScreen, fullScreen)) &&
            (identical(other.isBuffering, isBuffering) ||
                const DeepCollectionEquality()
                    .equals(other.isBuffering, isBuffering)) &&
            (identical(other.videoPlayerState, videoPlayerState) ||
                const DeepCollectionEquality()
                    .equals(other.videoPlayerState, videoPlayerState)) &&
            (identical(other.lastControllerCommandHolder,
                    lastControllerCommandHolder) ||
                const DeepCollectionEquality().equals(
                    other.lastControllerCommandHolder,
                    lastControllerCommandHolder)));
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
      const DeepCollectionEquality().hash(currentPosForUi) ^
      const DeepCollectionEquality().hash(totalDuration) ^
      const DeepCollectionEquality().hash(controllerVisibility) ^
      const DeepCollectionEquality().hash(isSeekBarDragging) ^
      const DeepCollectionEquality().hash(fullScreen) ^
      const DeepCollectionEquality().hash(isBuffering) ^
      const DeepCollectionEquality().hash(videoPlayerState) ^
      const DeepCollectionEquality().hash(lastControllerCommandHolder);

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
          Duration currentPosForUi,
          Duration totalDuration,
          bool controllerVisibility,
          bool isSeekBarDragging,
          bool fullScreen,
          bool isBuffering,
          VideoPlayerState videoPlayerState,
          LastControllerCommandHolder lastControllerCommandHolder}) =
      _$_PlayOutState;

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
  Duration get currentPosForUi;
  @override
  Duration get totalDuration;
  @override
  bool get controllerVisibility;
  @override
  bool get isSeekBarDragging;
  @override
  bool get fullScreen;
  @override
  bool get isBuffering;
  @override
  VideoPlayerState get videoPlayerState;
  @override
  LastControllerCommandHolder get lastControllerCommandHolder;
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

/// @nodoc
class _$LastControllerCommandHolderTearOff {
  const _$LastControllerCommandHolderTearOff();

// ignore: unused_element
  _LastControllerCommandHolder call(
      {LastControllerCommand command = const LastControllerCommand.initial(),
      String commandKey = ''}) {
    return _LastControllerCommandHolder(
      command: command,
      commandKey: commandKey,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LastControllerCommandHolder = _$LastControllerCommandHolderTearOff();

/// @nodoc
mixin _$LastControllerCommandHolder {
  LastControllerCommand get command;
  String get commandKey;

  $LastControllerCommandHolderCopyWith<LastControllerCommandHolder>
      get copyWith;
}

/// @nodoc
abstract class $LastControllerCommandHolderCopyWith<$Res> {
  factory $LastControllerCommandHolderCopyWith(
          LastControllerCommandHolder value,
          $Res Function(LastControllerCommandHolder) then) =
      _$LastControllerCommandHolderCopyWithImpl<$Res>;
  $Res call({LastControllerCommand command, String commandKey});

  $LastControllerCommandCopyWith<$Res> get command;
}

/// @nodoc
class _$LastControllerCommandHolderCopyWithImpl<$Res>
    implements $LastControllerCommandHolderCopyWith<$Res> {
  _$LastControllerCommandHolderCopyWithImpl(this._value, this._then);

  final LastControllerCommandHolder _value;
  // ignore: unused_field
  final $Res Function(LastControllerCommandHolder) _then;

  @override
  $Res call({
    Object command = freezed,
    Object commandKey = freezed,
  }) {
    return _then(_value.copyWith(
      command: command == freezed
          ? _value.command
          : command as LastControllerCommand,
      commandKey:
          commandKey == freezed ? _value.commandKey : commandKey as String,
    ));
  }

  @override
  $LastControllerCommandCopyWith<$Res> get command {
    if (_value.command == null) {
      return null;
    }
    return $LastControllerCommandCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value));
    });
  }
}

/// @nodoc
abstract class _$LastControllerCommandHolderCopyWith<$Res>
    implements $LastControllerCommandHolderCopyWith<$Res> {
  factory _$LastControllerCommandHolderCopyWith(
          _LastControllerCommandHolder value,
          $Res Function(_LastControllerCommandHolder) then) =
      __$LastControllerCommandHolderCopyWithImpl<$Res>;
  @override
  $Res call({LastControllerCommand command, String commandKey});

  @override
  $LastControllerCommandCopyWith<$Res> get command;
}

/// @nodoc
class __$LastControllerCommandHolderCopyWithImpl<$Res>
    extends _$LastControllerCommandHolderCopyWithImpl<$Res>
    implements _$LastControllerCommandHolderCopyWith<$Res> {
  __$LastControllerCommandHolderCopyWithImpl(
      _LastControllerCommandHolder _value,
      $Res Function(_LastControllerCommandHolder) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandHolder));

  @override
  _LastControllerCommandHolder get _value =>
      super._value as _LastControllerCommandHolder;

  @override
  $Res call({
    Object command = freezed,
    Object commandKey = freezed,
  }) {
    return _then(_LastControllerCommandHolder(
      command: command == freezed
          ? _value.command
          : command as LastControllerCommand,
      commandKey:
          commandKey == freezed ? _value.commandKey : commandKey as String,
    ));
  }
}

/// @nodoc
class _$_LastControllerCommandHolder implements _LastControllerCommandHolder {
  const _$_LastControllerCommandHolder(
      {this.command = const LastControllerCommand.initial(),
      this.commandKey = ''})
      : assert(command != null),
        assert(commandKey != null);

  @JsonKey(defaultValue: const LastControllerCommand.initial())
  @override
  final LastControllerCommand command;
  @JsonKey(defaultValue: '')
  @override
  final String commandKey;

  @override
  String toString() {
    return 'LastControllerCommandHolder(command: $command, commandKey: $commandKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastControllerCommandHolder &&
            (identical(other.command, command) ||
                const DeepCollectionEquality()
                    .equals(other.command, command)) &&
            (identical(other.commandKey, commandKey) ||
                const DeepCollectionEquality()
                    .equals(other.commandKey, commandKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(command) ^
      const DeepCollectionEquality().hash(commandKey);

  @override
  _$LastControllerCommandHolderCopyWith<_LastControllerCommandHolder>
      get copyWith => __$LastControllerCommandHolderCopyWithImpl<
          _LastControllerCommandHolder>(this, _$identity);
}

abstract class _LastControllerCommandHolder
    implements LastControllerCommandHolder {
  const factory _LastControllerCommandHolder(
      {LastControllerCommand command,
      String commandKey}) = _$_LastControllerCommandHolder;

  @override
  LastControllerCommand get command;
  @override
  String get commandKey;
  @override
  _$LastControllerCommandHolderCopyWith<_LastControllerCommandHolder>
      get copyWith;
}

/// @nodoc
class _$LastControllerCommandTearOff {
  const _$LastControllerCommandTearOff();

// ignore: unused_element
  _LastControllerCommandInitial initial() {
    return const _LastControllerCommandInitial();
  }

// ignore: unused_element
  _LastControllerCommandPlay play() {
    return const _LastControllerCommandPlay();
  }

// ignore: unused_element
  _LastControllerCommandPause pause() {
    return const _LastControllerCommandPause();
  }

// ignore: unused_element
  _LastControllerCommandSeek seek(Duration diff) {
    return _LastControllerCommandSeek(
      diff,
    );
  }

// ignore: unused_element
  _LastControllerCommandSeekTo seekTo(Duration diff) {
    return _LastControllerCommandSeekTo(
      diff,
    );
  }

// ignore: unused_element
  _LastControllerCommandPlayOrPause playOrPause() {
    return const _LastControllerCommandPlayOrPause();
  }
}

/// @nodoc
// ignore: unused_element
const $LastControllerCommand = _$LastControllerCommandTearOff();

/// @nodoc
mixin _$LastControllerCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LastControllerCommandCopyWith<$Res> {
  factory $LastControllerCommandCopyWith(LastControllerCommand value,
          $Res Function(LastControllerCommand) then) =
      _$LastControllerCommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$LastControllerCommandCopyWithImpl<$Res>
    implements $LastControllerCommandCopyWith<$Res> {
  _$LastControllerCommandCopyWithImpl(this._value, this._then);

  final LastControllerCommand _value;
  // ignore: unused_field
  final $Res Function(LastControllerCommand) _then;
}

/// @nodoc
abstract class _$LastControllerCommandInitialCopyWith<$Res> {
  factory _$LastControllerCommandInitialCopyWith(
          _LastControllerCommandInitial value,
          $Res Function(_LastControllerCommandInitial) then) =
      __$LastControllerCommandInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LastControllerCommandInitialCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandInitialCopyWith<$Res> {
  __$LastControllerCommandInitialCopyWithImpl(
      _LastControllerCommandInitial _value,
      $Res Function(_LastControllerCommandInitial) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandInitial));

  @override
  _LastControllerCommandInitial get _value =>
      super._value as _LastControllerCommandInitial;
}

/// @nodoc
class _$_LastControllerCommandInitial implements _LastControllerCommandInitial {
  const _$_LastControllerCommandInitial();

  @override
  String toString() {
    return 'LastControllerCommand.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LastControllerCommandInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
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
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandInitial implements LastControllerCommand {
  const factory _LastControllerCommandInitial() =
      _$_LastControllerCommandInitial;
}

/// @nodoc
abstract class _$LastControllerCommandPlayCopyWith<$Res> {
  factory _$LastControllerCommandPlayCopyWith(_LastControllerCommandPlay value,
          $Res Function(_LastControllerCommandPlay) then) =
      __$LastControllerCommandPlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$LastControllerCommandPlayCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandPlayCopyWith<$Res> {
  __$LastControllerCommandPlayCopyWithImpl(_LastControllerCommandPlay _value,
      $Res Function(_LastControllerCommandPlay) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandPlay));

  @override
  _LastControllerCommandPlay get _value =>
      super._value as _LastControllerCommandPlay;
}

/// @nodoc
class _$_LastControllerCommandPlay implements _LastControllerCommandPlay {
  const _$_LastControllerCommandPlay();

  @override
  String toString() {
    return 'LastControllerCommand.play()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LastControllerCommandPlay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return play();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandPlay implements LastControllerCommand {
  const factory _LastControllerCommandPlay() = _$_LastControllerCommandPlay;
}

/// @nodoc
abstract class _$LastControllerCommandPauseCopyWith<$Res> {
  factory _$LastControllerCommandPauseCopyWith(
          _LastControllerCommandPause value,
          $Res Function(_LastControllerCommandPause) then) =
      __$LastControllerCommandPauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$LastControllerCommandPauseCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandPauseCopyWith<$Res> {
  __$LastControllerCommandPauseCopyWithImpl(_LastControllerCommandPause _value,
      $Res Function(_LastControllerCommandPause) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandPause));

  @override
  _LastControllerCommandPause get _value =>
      super._value as _LastControllerCommandPause;
}

/// @nodoc
class _$_LastControllerCommandPause implements _LastControllerCommandPause {
  const _$_LastControllerCommandPause();

  @override
  String toString() {
    return 'LastControllerCommand.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LastControllerCommandPause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandPause implements LastControllerCommand {
  const factory _LastControllerCommandPause() = _$_LastControllerCommandPause;
}

/// @nodoc
abstract class _$LastControllerCommandSeekCopyWith<$Res> {
  factory _$LastControllerCommandSeekCopyWith(_LastControllerCommandSeek value,
          $Res Function(_LastControllerCommandSeek) then) =
      __$LastControllerCommandSeekCopyWithImpl<$Res>;
  $Res call({Duration diff});
}

/// @nodoc
class __$LastControllerCommandSeekCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandSeekCopyWith<$Res> {
  __$LastControllerCommandSeekCopyWithImpl(_LastControllerCommandSeek _value,
      $Res Function(_LastControllerCommandSeek) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandSeek));

  @override
  _LastControllerCommandSeek get _value =>
      super._value as _LastControllerCommandSeek;

  @override
  $Res call({
    Object diff = freezed,
  }) {
    return _then(_LastControllerCommandSeek(
      diff == freezed ? _value.diff : diff as Duration,
    ));
  }
}

/// @nodoc
class _$_LastControllerCommandSeek implements _LastControllerCommandSeek {
  const _$_LastControllerCommandSeek(this.diff) : assert(diff != null);

  @override
  final Duration diff;

  @override
  String toString() {
    return 'LastControllerCommand.seek(diff: $diff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastControllerCommandSeek &&
            (identical(other.diff, diff) ||
                const DeepCollectionEquality().equals(other.diff, diff)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(diff);

  @override
  _$LastControllerCommandSeekCopyWith<_LastControllerCommandSeek>
      get copyWith =>
          __$LastControllerCommandSeekCopyWithImpl<_LastControllerCommandSeek>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return seek(diff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seek != null) {
      return seek(diff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandSeek implements LastControllerCommand {
  const factory _LastControllerCommandSeek(Duration diff) =
      _$_LastControllerCommandSeek;

  Duration get diff;
  _$LastControllerCommandSeekCopyWith<_LastControllerCommandSeek> get copyWith;
}

/// @nodoc
abstract class _$LastControllerCommandSeekToCopyWith<$Res> {
  factory _$LastControllerCommandSeekToCopyWith(
          _LastControllerCommandSeekTo value,
          $Res Function(_LastControllerCommandSeekTo) then) =
      __$LastControllerCommandSeekToCopyWithImpl<$Res>;
  $Res call({Duration diff});
}

/// @nodoc
class __$LastControllerCommandSeekToCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandSeekToCopyWith<$Res> {
  __$LastControllerCommandSeekToCopyWithImpl(
      _LastControllerCommandSeekTo _value,
      $Res Function(_LastControllerCommandSeekTo) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandSeekTo));

  @override
  _LastControllerCommandSeekTo get _value =>
      super._value as _LastControllerCommandSeekTo;

  @override
  $Res call({
    Object diff = freezed,
  }) {
    return _then(_LastControllerCommandSeekTo(
      diff == freezed ? _value.diff : diff as Duration,
    ));
  }
}

/// @nodoc
class _$_LastControllerCommandSeekTo implements _LastControllerCommandSeekTo {
  const _$_LastControllerCommandSeekTo(this.diff) : assert(diff != null);

  @override
  final Duration diff;

  @override
  String toString() {
    return 'LastControllerCommand.seekTo(diff: $diff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastControllerCommandSeekTo &&
            (identical(other.diff, diff) ||
                const DeepCollectionEquality().equals(other.diff, diff)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(diff);

  @override
  _$LastControllerCommandSeekToCopyWith<_LastControllerCommandSeekTo>
      get copyWith => __$LastControllerCommandSeekToCopyWithImpl<
          _LastControllerCommandSeekTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return seekTo(diff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seekTo != null) {
      return seekTo(diff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return seekTo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (seekTo != null) {
      return seekTo(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandSeekTo implements LastControllerCommand {
  const factory _LastControllerCommandSeekTo(Duration diff) =
      _$_LastControllerCommandSeekTo;

  Duration get diff;
  _$LastControllerCommandSeekToCopyWith<_LastControllerCommandSeekTo>
      get copyWith;
}

/// @nodoc
abstract class _$LastControllerCommandPlayOrPauseCopyWith<$Res> {
  factory _$LastControllerCommandPlayOrPauseCopyWith(
          _LastControllerCommandPlayOrPause value,
          $Res Function(_LastControllerCommandPlayOrPause) then) =
      __$LastControllerCommandPlayOrPauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$LastControllerCommandPlayOrPauseCopyWithImpl<$Res>
    extends _$LastControllerCommandCopyWithImpl<$Res>
    implements _$LastControllerCommandPlayOrPauseCopyWith<$Res> {
  __$LastControllerCommandPlayOrPauseCopyWithImpl(
      _LastControllerCommandPlayOrPause _value,
      $Res Function(_LastControllerCommandPlayOrPause) _then)
      : super(_value, (v) => _then(v as _LastControllerCommandPlayOrPause));

  @override
  _LastControllerCommandPlayOrPause get _value =>
      super._value as _LastControllerCommandPlayOrPause;
}

/// @nodoc
class _$_LastControllerCommandPlayOrPause
    implements _LastControllerCommandPlayOrPause {
  const _$_LastControllerCommandPlayOrPause();

  @override
  String toString() {
    return 'LastControllerCommand.playOrPause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastControllerCommandPlayOrPause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult play(),
    @required TResult pause(),
    @required TResult seek(Duration diff),
    @required TResult seekTo(Duration diff),
    @required TResult playOrPause(),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return playOrPause();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult play(),
    TResult pause(),
    TResult seek(Duration diff),
    TResult seekTo(Duration diff),
    TResult playOrPause(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playOrPause != null) {
      return playOrPause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LastControllerCommandInitial value),
    @required TResult play(_LastControllerCommandPlay value),
    @required TResult pause(_LastControllerCommandPause value),
    @required TResult seek(_LastControllerCommandSeek value),
    @required TResult seekTo(_LastControllerCommandSeekTo value),
    @required TResult playOrPause(_LastControllerCommandPlayOrPause value),
  }) {
    assert(initial != null);
    assert(play != null);
    assert(pause != null);
    assert(seek != null);
    assert(seekTo != null);
    assert(playOrPause != null);
    return playOrPause(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LastControllerCommandInitial value),
    TResult play(_LastControllerCommandPlay value),
    TResult pause(_LastControllerCommandPause value),
    TResult seek(_LastControllerCommandSeek value),
    TResult seekTo(_LastControllerCommandSeekTo value),
    TResult playOrPause(_LastControllerCommandPlayOrPause value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playOrPause != null) {
      return playOrPause(this);
    }
    return orElse();
  }
}

abstract class _LastControllerCommandPlayOrPause
    implements LastControllerCommand {
  const factory _LastControllerCommandPlayOrPause() =
      _$_LastControllerCommandPlayOrPause;
}

/// @nodoc
class _$VideoPlayerStateTearOff {
  const _$VideoPlayerStateTearOff();

// ignore: unused_element
  _VideoPlayerStatePreInitialized preInitialized() {
    return const _VideoPlayerStatePreInitialized();
  }

// ignore: unused_element
  _VideoPlayerStateReady ready() {
    return const _VideoPlayerStateReady();
  }

// ignore: unused_element
  _VideoPlayerStateError error(String msg) {
    return _VideoPlayerStateError(
      msg,
    );
  }

// ignore: unused_element
  _VideoPlayerStateFinish finish() {
    return const _VideoPlayerStateFinish();
  }
}

/// @nodoc
// ignore: unused_element
const $VideoPlayerState = _$VideoPlayerStateTearOff();

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult ready(),
    @required TResult error(String msg),
    @required TResult finish(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult ready(),
    TResult error(String msg),
    TResult finish(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_VideoPlayerStatePreInitialized value),
    @required TResult ready(_VideoPlayerStateReady value),
    @required TResult error(_VideoPlayerStateError value),
    @required TResult finish(_VideoPlayerStateFinish value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_VideoPlayerStatePreInitialized value),
    TResult ready(_VideoPlayerStateReady value),
    TResult error(_VideoPlayerStateError value),
    TResult finish(_VideoPlayerStateFinish value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  final VideoPlayerState _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerState) _then;
}

/// @nodoc
abstract class _$VideoPlayerStatePreInitializedCopyWith<$Res> {
  factory _$VideoPlayerStatePreInitializedCopyWith(
          _VideoPlayerStatePreInitialized value,
          $Res Function(_VideoPlayerStatePreInitialized) then) =
      __$VideoPlayerStatePreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoPlayerStatePreInitializedCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStatePreInitializedCopyWith<$Res> {
  __$VideoPlayerStatePreInitializedCopyWithImpl(
      _VideoPlayerStatePreInitialized _value,
      $Res Function(_VideoPlayerStatePreInitialized) _then)
      : super(_value, (v) => _then(v as _VideoPlayerStatePreInitialized));

  @override
  _VideoPlayerStatePreInitialized get _value =>
      super._value as _VideoPlayerStatePreInitialized;
}

/// @nodoc
class _$_VideoPlayerStatePreInitialized
    implements _VideoPlayerStatePreInitialized {
  const _$_VideoPlayerStatePreInitialized();

  @override
  String toString() {
    return 'VideoPlayerState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoPlayerStatePreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult ready(),
    @required TResult error(String msg),
    @required TResult finish(),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult ready(),
    TResult error(String msg),
    TResult finish(),
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
    @required TResult preInitialized(_VideoPlayerStatePreInitialized value),
    @required TResult ready(_VideoPlayerStateReady value),
    @required TResult error(_VideoPlayerStateError value),
    @required TResult finish(_VideoPlayerStateFinish value),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_VideoPlayerStatePreInitialized value),
    TResult ready(_VideoPlayerStateReady value),
    TResult error(_VideoPlayerStateError value),
    TResult finish(_VideoPlayerStateFinish value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStatePreInitialized implements VideoPlayerState {
  const factory _VideoPlayerStatePreInitialized() =
      _$_VideoPlayerStatePreInitialized;
}

/// @nodoc
abstract class _$VideoPlayerStateReadyCopyWith<$Res> {
  factory _$VideoPlayerStateReadyCopyWith(_VideoPlayerStateReady value,
          $Res Function(_VideoPlayerStateReady) then) =
      __$VideoPlayerStateReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoPlayerStateReadyCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateReadyCopyWith<$Res> {
  __$VideoPlayerStateReadyCopyWithImpl(_VideoPlayerStateReady _value,
      $Res Function(_VideoPlayerStateReady) _then)
      : super(_value, (v) => _then(v as _VideoPlayerStateReady));

  @override
  _VideoPlayerStateReady get _value => super._value as _VideoPlayerStateReady;
}

/// @nodoc
class _$_VideoPlayerStateReady implements _VideoPlayerStateReady {
  const _$_VideoPlayerStateReady();

  @override
  String toString() {
    return 'VideoPlayerState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoPlayerStateReady);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult ready(),
    @required TResult error(String msg),
    @required TResult finish(),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult ready(),
    TResult error(String msg),
    TResult finish(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_VideoPlayerStatePreInitialized value),
    @required TResult ready(_VideoPlayerStateReady value),
    @required TResult error(_VideoPlayerStateError value),
    @required TResult finish(_VideoPlayerStateFinish value),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_VideoPlayerStatePreInitialized value),
    TResult ready(_VideoPlayerStateReady value),
    TResult error(_VideoPlayerStateError value),
    TResult finish(_VideoPlayerStateFinish value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStateReady implements VideoPlayerState {
  const factory _VideoPlayerStateReady() = _$_VideoPlayerStateReady;
}

/// @nodoc
abstract class _$VideoPlayerStateErrorCopyWith<$Res> {
  factory _$VideoPlayerStateErrorCopyWith(_VideoPlayerStateError value,
          $Res Function(_VideoPlayerStateError) then) =
      __$VideoPlayerStateErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class __$VideoPlayerStateErrorCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateErrorCopyWith<$Res> {
  __$VideoPlayerStateErrorCopyWithImpl(_VideoPlayerStateError _value,
      $Res Function(_VideoPlayerStateError) _then)
      : super(_value, (v) => _then(v as _VideoPlayerStateError));

  @override
  _VideoPlayerStateError get _value => super._value as _VideoPlayerStateError;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(_VideoPlayerStateError(
      msg == freezed ? _value.msg : msg as String,
    ));
  }
}

/// @nodoc
class _$_VideoPlayerStateError implements _VideoPlayerStateError {
  const _$_VideoPlayerStateError(this.msg) : assert(msg != null);

  @override
  final String msg;

  @override
  String toString() {
    return 'VideoPlayerState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoPlayerStateError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @override
  _$VideoPlayerStateErrorCopyWith<_VideoPlayerStateError> get copyWith =>
      __$VideoPlayerStateErrorCopyWithImpl<_VideoPlayerStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult ready(),
    @required TResult error(String msg),
    @required TResult finish(),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult ready(),
    TResult error(String msg),
    TResult finish(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_VideoPlayerStatePreInitialized value),
    @required TResult ready(_VideoPlayerStateReady value),
    @required TResult error(_VideoPlayerStateError value),
    @required TResult finish(_VideoPlayerStateFinish value),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_VideoPlayerStatePreInitialized value),
    TResult ready(_VideoPlayerStateReady value),
    TResult error(_VideoPlayerStateError value),
    TResult finish(_VideoPlayerStateFinish value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStateError implements VideoPlayerState {
  const factory _VideoPlayerStateError(String msg) = _$_VideoPlayerStateError;

  String get msg;
  _$VideoPlayerStateErrorCopyWith<_VideoPlayerStateError> get copyWith;
}

/// @nodoc
abstract class _$VideoPlayerStateFinishCopyWith<$Res> {
  factory _$VideoPlayerStateFinishCopyWith(_VideoPlayerStateFinish value,
          $Res Function(_VideoPlayerStateFinish) then) =
      __$VideoPlayerStateFinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoPlayerStateFinishCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateFinishCopyWith<$Res> {
  __$VideoPlayerStateFinishCopyWithImpl(_VideoPlayerStateFinish _value,
      $Res Function(_VideoPlayerStateFinish) _then)
      : super(_value, (v) => _then(v as _VideoPlayerStateFinish));

  @override
  _VideoPlayerStateFinish get _value => super._value as _VideoPlayerStateFinish;
}

/// @nodoc
class _$_VideoPlayerStateFinish implements _VideoPlayerStateFinish {
  const _$_VideoPlayerStateFinish();

  @override
  String toString() {
    return 'VideoPlayerState.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoPlayerStateFinish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult ready(),
    @required TResult error(String msg),
    @required TResult finish(),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult ready(),
    TResult error(String msg),
    TResult finish(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_VideoPlayerStatePreInitialized value),
    @required TResult ready(_VideoPlayerStateReady value),
    @required TResult error(_VideoPlayerStateError value),
    @required TResult finish(_VideoPlayerStateFinish value),
  }) {
    assert(preInitialized != null);
    assert(ready != null);
    assert(error != null);
    assert(finish != null);
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_VideoPlayerStatePreInitialized value),
    TResult ready(_VideoPlayerStateReady value),
    TResult error(_VideoPlayerStateError value),
    TResult finish(_VideoPlayerStateFinish value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStateFinish implements VideoPlayerState {
  const factory _VideoPlayerStateFinish() = _$_VideoPlayerStateFinish;
}
