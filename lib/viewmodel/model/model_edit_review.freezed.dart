// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_edit_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ModelEditReviewTearOff {
  const _$ModelEditReviewTearOff();

// ignore: unused_element
  _ModelEditReview call(
      {ReviewModelState state = const ReviewModelState.preInitialized(),
      ProgramDetail programData,
      String text}) {
    return _ModelEditReview(
      state: state,
      programData: programData,
      text: text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelEditReview = _$ModelEditReviewTearOff();

/// @nodoc
mixin _$ModelEditReview {
  ReviewModelState get state;
  ProgramDetail get programData;
  String get text;

  @JsonKey(ignore: true)
  $ModelEditReviewCopyWith<ModelEditReview> get copyWith;
}

/// @nodoc
abstract class $ModelEditReviewCopyWith<$Res> {
  factory $ModelEditReviewCopyWith(
          ModelEditReview value, $Res Function(ModelEditReview) then) =
      _$ModelEditReviewCopyWithImpl<$Res>;
  $Res call({ReviewModelState state, ProgramDetail programData, String text});

  $ReviewModelStateCopyWith<$Res> get state;
  $ProgramDetailCopyWith<$Res> get programData;
}

/// @nodoc
class _$ModelEditReviewCopyWithImpl<$Res>
    implements $ModelEditReviewCopyWith<$Res> {
  _$ModelEditReviewCopyWithImpl(this._value, this._then);

  final ModelEditReview _value;
  // ignore: unused_field
  final $Res Function(ModelEditReview) _then;

  @override
  $Res call({
    Object state = freezed,
    Object programData = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as ReviewModelState,
      programData: programData == freezed
          ? _value.programData
          : programData as ProgramDetail,
      text: text == freezed ? _value.text : text as String,
    ));
  }

  @override
  $ReviewModelStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $ReviewModelStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }

  @override
  $ProgramDetailCopyWith<$Res> get programData {
    if (_value.programData == null) {
      return null;
    }
    return $ProgramDetailCopyWith<$Res>(_value.programData, (value) {
      return _then(_value.copyWith(programData: value));
    });
  }
}

/// @nodoc
abstract class _$ModelEditReviewCopyWith<$Res>
    implements $ModelEditReviewCopyWith<$Res> {
  factory _$ModelEditReviewCopyWith(
          _ModelEditReview value, $Res Function(_ModelEditReview) then) =
      __$ModelEditReviewCopyWithImpl<$Res>;
  @override
  $Res call({ReviewModelState state, ProgramDetail programData, String text});

  @override
  $ReviewModelStateCopyWith<$Res> get state;
  @override
  $ProgramDetailCopyWith<$Res> get programData;
}

/// @nodoc
class __$ModelEditReviewCopyWithImpl<$Res>
    extends _$ModelEditReviewCopyWithImpl<$Res>
    implements _$ModelEditReviewCopyWith<$Res> {
  __$ModelEditReviewCopyWithImpl(
      _ModelEditReview _value, $Res Function(_ModelEditReview) _then)
      : super(_value, (v) => _then(v as _ModelEditReview));

  @override
  _ModelEditReview get _value => super._value as _ModelEditReview;

  @override
  $Res call({
    Object state = freezed,
    Object programData = freezed,
    Object text = freezed,
  }) {
    return _then(_ModelEditReview(
      state: state == freezed ? _value.state : state as ReviewModelState,
      programData: programData == freezed
          ? _value.programData
          : programData as ProgramDetail,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@protected

/// @nodoc
class _$_ModelEditReview extends _ModelEditReview {
  const _$_ModelEditReview(
      {this.state = const ReviewModelState.preInitialized(),
      this.programData,
      this.text})
      : assert(state != null),
        super._();

  @JsonKey(defaultValue: const ReviewModelState.preInitialized())
  @override
  final ReviewModelState state;
  @override
  final ProgramDetail programData;
  @override
  final String text;

  @override
  String toString() {
    return 'ModelEditReview(state: $state, programData: $programData, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelEditReview &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.programData, programData) ||
                const DeepCollectionEquality()
                    .equals(other.programData, programData)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(programData) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$ModelEditReviewCopyWith<_ModelEditReview> get copyWith =>
      __$ModelEditReviewCopyWithImpl<_ModelEditReview>(this, _$identity);
}

abstract class _ModelEditReview extends ModelEditReview {
  const _ModelEditReview._() : super._();
  const factory _ModelEditReview(
      {ReviewModelState state,
      ProgramDetail programData,
      String text}) = _$_ModelEditReview;

  @override
  ReviewModelState get state;
  @override
  ProgramDetail get programData;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$ModelEditReviewCopyWith<_ModelEditReview> get copyWith;
}

/// @nodoc
class _$ReviewModelStateTearOff {
  const _$ReviewModelStateTearOff();

// ignore: unused_element
  _ReviewPreInitialized preInitialized() {
    return const _ReviewPreInitialized();
  }

// ignore: unused_element
  _ReviewInitialized initialized() {
    return const _ReviewInitialized();
  }

// ignore: unused_element
  _ReviewInitializeError initializeError(ErrorMsgCommon errMsg) {
    return _ReviewInitializeError(
      errMsg,
    );
  }

// ignore: unused_element
  _ReviewStateLoading loading() {
    return const _ReviewStateLoading();
  }

// ignore: unused_element
  ReviewStateSuccess success() {
    return const ReviewStateSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $ReviewModelState = _$ReviewModelStateTearOff();

/// @nodoc
mixin _$ReviewModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ReviewModelStateCopyWith<$Res> {
  factory $ReviewModelStateCopyWith(
          ReviewModelState value, $Res Function(ReviewModelState) then) =
      _$ReviewModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewModelStateCopyWithImpl<$Res>
    implements $ReviewModelStateCopyWith<$Res> {
  _$ReviewModelStateCopyWithImpl(this._value, this._then);

  final ReviewModelState _value;
  // ignore: unused_field
  final $Res Function(ReviewModelState) _then;
}

/// @nodoc
abstract class _$ReviewPreInitializedCopyWith<$Res> {
  factory _$ReviewPreInitializedCopyWith(_ReviewPreInitialized value,
          $Res Function(_ReviewPreInitialized) then) =
      __$ReviewPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewPreInitializedCopyWithImpl<$Res>
    extends _$ReviewModelStateCopyWithImpl<$Res>
    implements _$ReviewPreInitializedCopyWith<$Res> {
  __$ReviewPreInitializedCopyWithImpl(
      _ReviewPreInitialized _value, $Res Function(_ReviewPreInitialized) _then)
      : super(_value, (v) => _then(v as _ReviewPreInitialized));

  @override
  _ReviewPreInitialized get _value => super._value as _ReviewPreInitialized;
}

/// @nodoc
class _$_ReviewPreInitialized implements _ReviewPreInitialized {
  const _$_ReviewPreInitialized();

  @override
  String toString() {
    return 'ReviewModelState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
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
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _ReviewPreInitialized implements ReviewModelState {
  const factory _ReviewPreInitialized() = _$_ReviewPreInitialized;
}

/// @nodoc
abstract class _$ReviewInitializedCopyWith<$Res> {
  factory _$ReviewInitializedCopyWith(
          _ReviewInitialized value, $Res Function(_ReviewInitialized) then) =
      __$ReviewInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewInitializedCopyWithImpl<$Res>
    extends _$ReviewModelStateCopyWithImpl<$Res>
    implements _$ReviewInitializedCopyWith<$Res> {
  __$ReviewInitializedCopyWithImpl(
      _ReviewInitialized _value, $Res Function(_ReviewInitialized) _then)
      : super(_value, (v) => _then(v as _ReviewInitialized));

  @override
  _ReviewInitialized get _value => super._value as _ReviewInitialized;
}

/// @nodoc
class _$_ReviewInitialized implements _ReviewInitialized {
  const _$_ReviewInitialized();

  @override
  String toString() {
    return 'ReviewModelState.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
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
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _ReviewInitialized implements ReviewModelState {
  const factory _ReviewInitialized() = _$_ReviewInitialized;
}

/// @nodoc
abstract class _$ReviewInitializeErrorCopyWith<$Res> {
  factory _$ReviewInitializeErrorCopyWith(_ReviewInitializeError value,
          $Res Function(_ReviewInitializeError) then) =
      __$ReviewInitializeErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon errMsg});

  $ErrorMsgCommonCopyWith<$Res> get errMsg;
}

/// @nodoc
class __$ReviewInitializeErrorCopyWithImpl<$Res>
    extends _$ReviewModelStateCopyWithImpl<$Res>
    implements _$ReviewInitializeErrorCopyWith<$Res> {
  __$ReviewInitializeErrorCopyWithImpl(_ReviewInitializeError _value,
      $Res Function(_ReviewInitializeError) _then)
      : super(_value, (v) => _then(v as _ReviewInitializeError));

  @override
  _ReviewInitializeError get _value => super._value as _ReviewInitializeError;

  @override
  $Res call({
    Object errMsg = freezed,
  }) {
    return _then(_ReviewInitializeError(
      errMsg == freezed ? _value.errMsg : errMsg as ErrorMsgCommon,
    ));
  }

  @override
  $ErrorMsgCommonCopyWith<$Res> get errMsg {
    if (_value.errMsg == null) {
      return null;
    }
    return $ErrorMsgCommonCopyWith<$Res>(_value.errMsg, (value) {
      return _then(_value.copyWith(errMsg: value));
    });
  }
}

/// @nodoc
class _$_ReviewInitializeError implements _ReviewInitializeError {
  const _$_ReviewInitializeError(this.errMsg) : assert(errMsg != null);

  @override
  final ErrorMsgCommon errMsg;

  @override
  String toString() {
    return 'ReviewModelState.initializeError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewInitializeError &&
            (identical(other.errMsg, errMsg) ||
                const DeepCollectionEquality().equals(other.errMsg, errMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errMsg);

  @JsonKey(ignore: true)
  @override
  _$ReviewInitializeErrorCopyWith<_ReviewInitializeError> get copyWith =>
      __$ReviewInitializeErrorCopyWithImpl<_ReviewInitializeError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return initializeError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeError != null) {
      return initializeError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return initializeError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeError != null) {
      return initializeError(this);
    }
    return orElse();
  }
}

abstract class _ReviewInitializeError implements ReviewModelState {
  const factory _ReviewInitializeError(ErrorMsgCommon errMsg) =
      _$_ReviewInitializeError;

  ErrorMsgCommon get errMsg;
  @JsonKey(ignore: true)
  _$ReviewInitializeErrorCopyWith<_ReviewInitializeError> get copyWith;
}

/// @nodoc
abstract class _$ReviewStateLoadingCopyWith<$Res> {
  factory _$ReviewStateLoadingCopyWith(
          _ReviewStateLoading value, $Res Function(_ReviewStateLoading) then) =
      __$ReviewStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewStateLoadingCopyWithImpl<$Res>
    extends _$ReviewModelStateCopyWithImpl<$Res>
    implements _$ReviewStateLoadingCopyWith<$Res> {
  __$ReviewStateLoadingCopyWithImpl(
      _ReviewStateLoading _value, $Res Function(_ReviewStateLoading) _then)
      : super(_value, (v) => _then(v as _ReviewStateLoading));

  @override
  _ReviewStateLoading get _value => super._value as _ReviewStateLoading;
}

/// @nodoc
class _$_ReviewStateLoading implements _ReviewStateLoading {
  const _$_ReviewStateLoading();

  @override
  String toString() {
    return 'ReviewModelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
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
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReviewStateLoading implements ReviewModelState {
  const factory _ReviewStateLoading() = _$_ReviewStateLoading;
}

/// @nodoc
abstract class $ReviewStateSuccessCopyWith<$Res> {
  factory $ReviewStateSuccessCopyWith(
          ReviewStateSuccess value, $Res Function(ReviewStateSuccess) then) =
      _$ReviewStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewStateSuccessCopyWithImpl<$Res>
    extends _$ReviewModelStateCopyWithImpl<$Res>
    implements $ReviewStateSuccessCopyWith<$Res> {
  _$ReviewStateSuccessCopyWithImpl(
      ReviewStateSuccess _value, $Res Function(ReviewStateSuccess) _then)
      : super(_value, (v) => _then(v as ReviewStateSuccess));

  @override
  ReviewStateSuccess get _value => super._value as ReviewStateSuccess;
}

/// @nodoc
class _$ReviewStateSuccess implements ReviewStateSuccess {
  const _$ReviewStateSuccess();

  @override
  String toString() {
    return 'ReviewModelState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReviewStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(),
    @required TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(),
    TResult initializeError(ErrorMsgCommon errMsg),
    TResult loading(),
    TResult success(),
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
    @required TResult preInitialized(_ReviewPreInitialized value),
    @required TResult initialized(_ReviewInitialized value),
    @required TResult initializeError(_ReviewInitializeError value),
    @required TResult loading(_ReviewStateLoading value),
    @required TResult success(ReviewStateSuccess value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_ReviewPreInitialized value),
    TResult initialized(_ReviewInitialized value),
    TResult initializeError(_ReviewInitializeError value),
    TResult loading(_ReviewStateLoading value),
    TResult success(ReviewStateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReviewStateSuccess implements ReviewModelState {
  const factory ReviewStateSuccess() = _$ReviewStateSuccess;
}

/// @nodoc
class _$ReviewUiStateTearOff {
  const _$ReviewUiStateTearOff();

// ignore: unused_element
  _UiPreInitialized preInitialized() {
    return const _UiPreInitialized();
  }

// ignore: unused_element
  _UiInitialized initialized(ProgramDetail programData) {
    return _UiInitialized(
      programData,
    );
  }

// ignore: unused_element
  _UiInitializeError initializeError(ErrorMsgCommon errMsg) {
    return _UiInitializeError(
      errMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReviewUiState = _$ReviewUiStateTearOff();

/// @nodoc
mixin _$ReviewUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(ProgramDetail programData),
    @required TResult initializeError(ErrorMsgCommon errMsg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(ProgramDetail programData),
    TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_UiPreInitialized value),
    @required TResult initialized(_UiInitialized value),
    @required TResult initializeError(_UiInitializeError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_UiPreInitialized value),
    TResult initialized(_UiInitialized value),
    TResult initializeError(_UiInitializeError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ReviewUiStateCopyWith<$Res> {
  factory $ReviewUiStateCopyWith(
          ReviewUiState value, $Res Function(ReviewUiState) then) =
      _$ReviewUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewUiStateCopyWithImpl<$Res>
    implements $ReviewUiStateCopyWith<$Res> {
  _$ReviewUiStateCopyWithImpl(this._value, this._then);

  final ReviewUiState _value;
  // ignore: unused_field
  final $Res Function(ReviewUiState) _then;
}

/// @nodoc
abstract class _$UiPreInitializedCopyWith<$Res> {
  factory _$UiPreInitializedCopyWith(
          _UiPreInitialized value, $Res Function(_UiPreInitialized) then) =
      __$UiPreInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UiPreInitializedCopyWithImpl<$Res>
    extends _$ReviewUiStateCopyWithImpl<$Res>
    implements _$UiPreInitializedCopyWith<$Res> {
  __$UiPreInitializedCopyWithImpl(
      _UiPreInitialized _value, $Res Function(_UiPreInitialized) _then)
      : super(_value, (v) => _then(v as _UiPreInitialized));

  @override
  _UiPreInitialized get _value => super._value as _UiPreInitialized;
}

/// @nodoc
class _$_UiPreInitialized implements _UiPreInitialized {
  const _$_UiPreInitialized();

  @override
  String toString() {
    return 'ReviewUiState.preInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UiPreInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(ProgramDetail programData),
    @required TResult initializeError(ErrorMsgCommon errMsg),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return preInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(ProgramDetail programData),
    TResult initializeError(ErrorMsgCommon errMsg),
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
    @required TResult preInitialized(_UiPreInitialized value),
    @required TResult initialized(_UiInitialized value),
    @required TResult initializeError(_UiInitializeError value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return preInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_UiPreInitialized value),
    TResult initialized(_UiInitialized value),
    TResult initializeError(_UiInitializeError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (preInitialized != null) {
      return preInitialized(this);
    }
    return orElse();
  }
}

abstract class _UiPreInitialized implements ReviewUiState {
  const factory _UiPreInitialized() = _$_UiPreInitialized;
}

/// @nodoc
abstract class _$UiInitializedCopyWith<$Res> {
  factory _$UiInitializedCopyWith(
          _UiInitialized value, $Res Function(_UiInitialized) then) =
      __$UiInitializedCopyWithImpl<$Res>;
  $Res call({ProgramDetail programData});

  $ProgramDetailCopyWith<$Res> get programData;
}

/// @nodoc
class __$UiInitializedCopyWithImpl<$Res>
    extends _$ReviewUiStateCopyWithImpl<$Res>
    implements _$UiInitializedCopyWith<$Res> {
  __$UiInitializedCopyWithImpl(
      _UiInitialized _value, $Res Function(_UiInitialized) _then)
      : super(_value, (v) => _then(v as _UiInitialized));

  @override
  _UiInitialized get _value => super._value as _UiInitialized;

  @override
  $Res call({
    Object programData = freezed,
  }) {
    return _then(_UiInitialized(
      programData == freezed
          ? _value.programData
          : programData as ProgramDetail,
    ));
  }

  @override
  $ProgramDetailCopyWith<$Res> get programData {
    if (_value.programData == null) {
      return null;
    }
    return $ProgramDetailCopyWith<$Res>(_value.programData, (value) {
      return _then(_value.copyWith(programData: value));
    });
  }
}

/// @nodoc
class _$_UiInitialized implements _UiInitialized {
  const _$_UiInitialized(this.programData) : assert(programData != null);

  @override
  final ProgramDetail programData;

  @override
  String toString() {
    return 'ReviewUiState.initialized(programData: $programData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UiInitialized &&
            (identical(other.programData, programData) ||
                const DeepCollectionEquality()
                    .equals(other.programData, programData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(programData);

  @JsonKey(ignore: true)
  @override
  _$UiInitializedCopyWith<_UiInitialized> get copyWith =>
      __$UiInitializedCopyWithImpl<_UiInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(ProgramDetail programData),
    @required TResult initializeError(ErrorMsgCommon errMsg),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return initialized(programData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(ProgramDetail programData),
    TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(programData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_UiPreInitialized value),
    @required TResult initialized(_UiInitialized value),
    @required TResult initializeError(_UiInitializeError value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_UiPreInitialized value),
    TResult initialized(_UiInitialized value),
    TResult initializeError(_UiInitializeError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _UiInitialized implements ReviewUiState {
  const factory _UiInitialized(ProgramDetail programData) = _$_UiInitialized;

  ProgramDetail get programData;
  @JsonKey(ignore: true)
  _$UiInitializedCopyWith<_UiInitialized> get copyWith;
}

/// @nodoc
abstract class _$UiInitializeErrorCopyWith<$Res> {
  factory _$UiInitializeErrorCopyWith(
          _UiInitializeError value, $Res Function(_UiInitializeError) then) =
      __$UiInitializeErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon errMsg});

  $ErrorMsgCommonCopyWith<$Res> get errMsg;
}

/// @nodoc
class __$UiInitializeErrorCopyWithImpl<$Res>
    extends _$ReviewUiStateCopyWithImpl<$Res>
    implements _$UiInitializeErrorCopyWith<$Res> {
  __$UiInitializeErrorCopyWithImpl(
      _UiInitializeError _value, $Res Function(_UiInitializeError) _then)
      : super(_value, (v) => _then(v as _UiInitializeError));

  @override
  _UiInitializeError get _value => super._value as _UiInitializeError;

  @override
  $Res call({
    Object errMsg = freezed,
  }) {
    return _then(_UiInitializeError(
      errMsg == freezed ? _value.errMsg : errMsg as ErrorMsgCommon,
    ));
  }

  @override
  $ErrorMsgCommonCopyWith<$Res> get errMsg {
    if (_value.errMsg == null) {
      return null;
    }
    return $ErrorMsgCommonCopyWith<$Res>(_value.errMsg, (value) {
      return _then(_value.copyWith(errMsg: value));
    });
  }
}

/// @nodoc
class _$_UiInitializeError implements _UiInitializeError {
  const _$_UiInitializeError(this.errMsg) : assert(errMsg != null);

  @override
  final ErrorMsgCommon errMsg;

  @override
  String toString() {
    return 'ReviewUiState.initializeError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UiInitializeError &&
            (identical(other.errMsg, errMsg) ||
                const DeepCollectionEquality().equals(other.errMsg, errMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errMsg);

  @JsonKey(ignore: true)
  @override
  _$UiInitializeErrorCopyWith<_UiInitializeError> get copyWith =>
      __$UiInitializeErrorCopyWithImpl<_UiInitializeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult preInitialized(),
    @required TResult initialized(ProgramDetail programData),
    @required TResult initializeError(ErrorMsgCommon errMsg),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return initializeError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult preInitialized(),
    TResult initialized(ProgramDetail programData),
    TResult initializeError(ErrorMsgCommon errMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeError != null) {
      return initializeError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult preInitialized(_UiPreInitialized value),
    @required TResult initialized(_UiInitialized value),
    @required TResult initializeError(_UiInitializeError value),
  }) {
    assert(preInitialized != null);
    assert(initialized != null);
    assert(initializeError != null);
    return initializeError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult preInitialized(_UiPreInitialized value),
    TResult initialized(_UiInitialized value),
    TResult initializeError(_UiInitializeError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeError != null) {
      return initializeError(this);
    }
    return orElse();
  }
}

abstract class _UiInitializeError implements ReviewUiState {
  const factory _UiInitializeError(ErrorMsgCommon errMsg) =
      _$_UiInitializeError;

  ErrorMsgCommon get errMsg;
  @JsonKey(ignore: true)
  _$UiInitializeErrorCopyWith<_UiInitializeError> get copyWith;
}
