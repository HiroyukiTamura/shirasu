// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_subscribing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeatureProgramStateTearOff {
  const _$FeatureProgramStateTearOff();

// ignore: unused_element
  _FeatureProgramStateInitial initial() {
    return const _FeatureProgramStateInitial();
  }

// ignore: unused_element
  _FeatureProgramStateResultEmpty resultEmpty() {
    return const _FeatureProgramStateResultEmpty();
  }

// ignore: unused_element
  _FeatureProgramStateSuccess success(FeatureProgramData featureProgramData) {
    return _FeatureProgramStateSuccess(
      featureProgramData,
    );
  }

// ignore: unused_element
  _FeatureProgramStateError error(ErrorMsgCommon errorMsg) {
    return _FeatureProgramStateError(
      errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeatureProgramState = _$FeatureProgramStateTearOff();

/// @nodoc
mixin _$FeatureProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramData featureProgramData),
    @required TResult error(ErrorMsgCommon errorMsg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(FeatureProgramData featureProgramData),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_FeatureProgramStateInitial value),
    @required TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    @required TResult success(_FeatureProgramStateSuccess value),
    @required TResult error(_FeatureProgramStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_FeatureProgramStateInitial value),
    TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    TResult success(_FeatureProgramStateSuccess value),
    TResult error(_FeatureProgramStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FeatureProgramStateCopyWith<$Res> {
  factory $FeatureProgramStateCopyWith(
          FeatureProgramState value, $Res Function(FeatureProgramState) then) =
      _$FeatureProgramStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeatureProgramStateCopyWithImpl<$Res>
    implements $FeatureProgramStateCopyWith<$Res> {
  _$FeatureProgramStateCopyWithImpl(this._value, this._then);

  final FeatureProgramState _value;
  // ignore: unused_field
  final $Res Function(FeatureProgramState) _then;
}

/// @nodoc
abstract class _$FeatureProgramStateInitialCopyWith<$Res> {
  factory _$FeatureProgramStateInitialCopyWith(
          _FeatureProgramStateInitial value,
          $Res Function(_FeatureProgramStateInitial) then) =
      __$FeatureProgramStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeatureProgramStateInitialCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements _$FeatureProgramStateInitialCopyWith<$Res> {
  __$FeatureProgramStateInitialCopyWithImpl(_FeatureProgramStateInitial _value,
      $Res Function(_FeatureProgramStateInitial) _then)
      : super(_value, (v) => _then(v as _FeatureProgramStateInitial));

  @override
  _FeatureProgramStateInitial get _value =>
      super._value as _FeatureProgramStateInitial;
}

/// @nodoc
class _$_FeatureProgramStateInitial implements _FeatureProgramStateInitial {
  const _$_FeatureProgramStateInitial();

  @override
  String toString() {
    return 'FeatureProgramState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeatureProgramStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramData featureProgramData),
    @required TResult error(ErrorMsgCommon errorMsg),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(FeatureProgramData featureProgramData),
    TResult error(ErrorMsgCommon errorMsg),
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
    @required TResult initial(_FeatureProgramStateInitial value),
    @required TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    @required TResult success(_FeatureProgramStateSuccess value),
    @required TResult error(_FeatureProgramStateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_FeatureProgramStateInitial value),
    TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    TResult success(_FeatureProgramStateSuccess value),
    TResult error(_FeatureProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FeatureProgramStateInitial implements FeatureProgramState {
  const factory _FeatureProgramStateInitial() = _$_FeatureProgramStateInitial;
}

/// @nodoc
abstract class _$FeatureProgramStateResultEmptyCopyWith<$Res> {
  factory _$FeatureProgramStateResultEmptyCopyWith(
          _FeatureProgramStateResultEmpty value,
          $Res Function(_FeatureProgramStateResultEmpty) then) =
      __$FeatureProgramStateResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeatureProgramStateResultEmptyCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements _$FeatureProgramStateResultEmptyCopyWith<$Res> {
  __$FeatureProgramStateResultEmptyCopyWithImpl(
      _FeatureProgramStateResultEmpty _value,
      $Res Function(_FeatureProgramStateResultEmpty) _then)
      : super(_value, (v) => _then(v as _FeatureProgramStateResultEmpty));

  @override
  _FeatureProgramStateResultEmpty get _value =>
      super._value as _FeatureProgramStateResultEmpty;
}

/// @nodoc
class _$_FeatureProgramStateResultEmpty
    implements _FeatureProgramStateResultEmpty {
  const _$_FeatureProgramStateResultEmpty();

  @override
  String toString() {
    return 'FeatureProgramState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeatureProgramStateResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramData featureProgramData),
    @required TResult error(ErrorMsgCommon errorMsg),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(FeatureProgramData featureProgramData),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_FeatureProgramStateInitial value),
    @required TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    @required TResult success(_FeatureProgramStateSuccess value),
    @required TResult error(_FeatureProgramStateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return resultEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_FeatureProgramStateInitial value),
    TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    TResult success(_FeatureProgramStateSuccess value),
    TResult error(_FeatureProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class _FeatureProgramStateResultEmpty implements FeatureProgramState {
  const factory _FeatureProgramStateResultEmpty() =
      _$_FeatureProgramStateResultEmpty;
}

/// @nodoc
abstract class _$FeatureProgramStateSuccessCopyWith<$Res> {
  factory _$FeatureProgramStateSuccessCopyWith(
          _FeatureProgramStateSuccess value,
          $Res Function(_FeatureProgramStateSuccess) then) =
      __$FeatureProgramStateSuccessCopyWithImpl<$Res>;
  $Res call({FeatureProgramData featureProgramData});

  $FeatureProgramDataCopyWith<$Res> get featureProgramData;
}

/// @nodoc
class __$FeatureProgramStateSuccessCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements _$FeatureProgramStateSuccessCopyWith<$Res> {
  __$FeatureProgramStateSuccessCopyWithImpl(_FeatureProgramStateSuccess _value,
      $Res Function(_FeatureProgramStateSuccess) _then)
      : super(_value, (v) => _then(v as _FeatureProgramStateSuccess));

  @override
  _FeatureProgramStateSuccess get _value =>
      super._value as _FeatureProgramStateSuccess;

  @override
  $Res call({
    Object featureProgramData = freezed,
  }) {
    return _then(_FeatureProgramStateSuccess(
      featureProgramData == freezed
          ? _value.featureProgramData
          : featureProgramData as FeatureProgramData,
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
class _$_FeatureProgramStateSuccess implements _FeatureProgramStateSuccess {
  const _$_FeatureProgramStateSuccess(this.featureProgramData)
      : assert(featureProgramData != null);

  @override
  final FeatureProgramData featureProgramData;

  @override
  String toString() {
    return 'FeatureProgramState.success(featureProgramData: $featureProgramData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeatureProgramStateSuccess &&
            (identical(other.featureProgramData, featureProgramData) ||
                const DeepCollectionEquality()
                    .equals(other.featureProgramData, featureProgramData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(featureProgramData);

  @JsonKey(ignore: true)
  @override
  _$FeatureProgramStateSuccessCopyWith<_FeatureProgramStateSuccess>
      get copyWith => __$FeatureProgramStateSuccessCopyWithImpl<
          _FeatureProgramStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramData featureProgramData),
    @required TResult error(ErrorMsgCommon errorMsg),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(featureProgramData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(FeatureProgramData featureProgramData),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(featureProgramData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_FeatureProgramStateInitial value),
    @required TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    @required TResult success(_FeatureProgramStateSuccess value),
    @required TResult error(_FeatureProgramStateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_FeatureProgramStateInitial value),
    TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    TResult success(_FeatureProgramStateSuccess value),
    TResult error(_FeatureProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FeatureProgramStateSuccess implements FeatureProgramState {
  const factory _FeatureProgramStateSuccess(
      FeatureProgramData featureProgramData) = _$_FeatureProgramStateSuccess;

  FeatureProgramData get featureProgramData;
  @JsonKey(ignore: true)
  _$FeatureProgramStateSuccessCopyWith<_FeatureProgramStateSuccess>
      get copyWith;
}

/// @nodoc
abstract class _$FeatureProgramStateErrorCopyWith<$Res> {
  factory _$FeatureProgramStateErrorCopyWith(_FeatureProgramStateError value,
          $Res Function(_FeatureProgramStateError) then) =
      __$FeatureProgramStateErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon errorMsg});

  $ErrorMsgCommonCopyWith<$Res> get errorMsg;
}

/// @nodoc
class __$FeatureProgramStateErrorCopyWithImpl<$Res>
    extends _$FeatureProgramStateCopyWithImpl<$Res>
    implements _$FeatureProgramStateErrorCopyWith<$Res> {
  __$FeatureProgramStateErrorCopyWithImpl(_FeatureProgramStateError _value,
      $Res Function(_FeatureProgramStateError) _then)
      : super(_value, (v) => _then(v as _FeatureProgramStateError));

  @override
  _FeatureProgramStateError get _value =>
      super._value as _FeatureProgramStateError;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_FeatureProgramStateError(
      errorMsg == freezed ? _value.errorMsg : errorMsg as ErrorMsgCommon,
    ));
  }

  @override
  $ErrorMsgCommonCopyWith<$Res> get errorMsg {
    if (_value.errorMsg == null) {
      return null;
    }
    return $ErrorMsgCommonCopyWith<$Res>(_value.errorMsg, (value) {
      return _then(_value.copyWith(errorMsg: value));
    });
  }
}

/// @nodoc
class _$_FeatureProgramStateError implements _FeatureProgramStateError {
  const _$_FeatureProgramStateError(this.errorMsg) : assert(errorMsg != null);

  @override
  final ErrorMsgCommon errorMsg;

  @override
  String toString() {
    return 'FeatureProgramState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeatureProgramStateError &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @JsonKey(ignore: true)
  @override
  _$FeatureProgramStateErrorCopyWith<_FeatureProgramStateError> get copyWith =>
      __$FeatureProgramStateErrorCopyWithImpl<_FeatureProgramStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(FeatureProgramData featureProgramData),
    @required TResult error(ErrorMsgCommon errorMsg),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(FeatureProgramData featureProgramData),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_FeatureProgramStateInitial value),
    @required TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    @required TResult success(_FeatureProgramStateSuccess value),
    @required TResult error(_FeatureProgramStateError value),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_FeatureProgramStateInitial value),
    TResult resultEmpty(_FeatureProgramStateResultEmpty value),
    TResult success(_FeatureProgramStateSuccess value),
    TResult error(_FeatureProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FeatureProgramStateError implements FeatureProgramState {
  const factory _FeatureProgramStateError(ErrorMsgCommon errorMsg) =
      _$_FeatureProgramStateError;

  ErrorMsgCommon get errorMsg;
  @JsonKey(ignore: true)
  _$FeatureProgramStateErrorCopyWith<_FeatureProgramStateError> get copyWith;
}
