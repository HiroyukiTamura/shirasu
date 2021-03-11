// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_subscribing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SubscribingProgramStateTearOff {
  const _$SubscribingProgramStateTearOff();

// ignore: unused_element
  _SubscribingProgramStateInitial initial() {
    return const _SubscribingProgramStateInitial();
  }

// ignore: unused_element
  _SubscribingProgramStateResultEmpty resultEmpty() {
    return const _SubscribingProgramStateResultEmpty();
  }

// ignore: unused_element
  _SubscribingProgramStateSuccess success(
      ListSubscribedPrograms listSubscribedPrograms) {
    return _SubscribingProgramStateSuccess(
      listSubscribedPrograms,
    );
  }

// ignore: unused_element
  _SubscribingProgramStateError error(ErrorMsgCommon errorMsg) {
    return _SubscribingProgramStateError(
      errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubscribingProgramState = _$SubscribingProgramStateTearOff();

/// @nodoc
mixin _$SubscribingProgramState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(ListSubscribedPrograms listSubscribedPrograms),
    @required TResult error(ErrorMsgCommon errorMsg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(ListSubscribedPrograms listSubscribedPrograms),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SubscribingProgramStateInitial value),
    @required TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    @required TResult success(_SubscribingProgramStateSuccess value),
    @required TResult error(_SubscribingProgramStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_SubscribingProgramStateInitial value),
    TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    TResult success(_SubscribingProgramStateSuccess value),
    TResult error(_SubscribingProgramStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SubscribingProgramStateCopyWith<$Res> {
  factory $SubscribingProgramStateCopyWith(SubscribingProgramState value,
          $Res Function(SubscribingProgramState) then) =
      _$SubscribingProgramStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscribingProgramStateCopyWithImpl<$Res>
    implements $SubscribingProgramStateCopyWith<$Res> {
  _$SubscribingProgramStateCopyWithImpl(this._value, this._then);

  final SubscribingProgramState _value;
  // ignore: unused_field
  final $Res Function(SubscribingProgramState) _then;
}

/// @nodoc
abstract class _$SubscribingProgramStateInitialCopyWith<$Res> {
  factory _$SubscribingProgramStateInitialCopyWith(
          _SubscribingProgramStateInitial value,
          $Res Function(_SubscribingProgramStateInitial) then) =
      __$SubscribingProgramStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribingProgramStateInitialCopyWithImpl<$Res>
    extends _$SubscribingProgramStateCopyWithImpl<$Res>
    implements _$SubscribingProgramStateInitialCopyWith<$Res> {
  __$SubscribingProgramStateInitialCopyWithImpl(
      _SubscribingProgramStateInitial _value,
      $Res Function(_SubscribingProgramStateInitial) _then)
      : super(_value, (v) => _then(v as _SubscribingProgramStateInitial));

  @override
  _SubscribingProgramStateInitial get _value =>
      super._value as _SubscribingProgramStateInitial;
}

/// @nodoc
class _$_SubscribingProgramStateInitial
    implements _SubscribingProgramStateInitial {
  const _$_SubscribingProgramStateInitial();

  @override
  String toString() {
    return 'SubscribingProgramState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubscribingProgramStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    @required TResult initial(_SubscribingProgramStateInitial value),
    @required TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    @required TResult success(_SubscribingProgramStateSuccess value),
    @required TResult error(_SubscribingProgramStateError value),
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
    TResult initial(_SubscribingProgramStateInitial value),
    TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    TResult success(_SubscribingProgramStateSuccess value),
    TResult error(_SubscribingProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SubscribingProgramStateInitial
    implements SubscribingProgramState {
  const factory _SubscribingProgramStateInitial() =
      _$_SubscribingProgramStateInitial;
}

/// @nodoc
abstract class _$SubscribingProgramStateResultEmptyCopyWith<$Res> {
  factory _$SubscribingProgramStateResultEmptyCopyWith(
          _SubscribingProgramStateResultEmpty value,
          $Res Function(_SubscribingProgramStateResultEmpty) then) =
      __$SubscribingProgramStateResultEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribingProgramStateResultEmptyCopyWithImpl<$Res>
    extends _$SubscribingProgramStateCopyWithImpl<$Res>
    implements _$SubscribingProgramStateResultEmptyCopyWith<$Res> {
  __$SubscribingProgramStateResultEmptyCopyWithImpl(
      _SubscribingProgramStateResultEmpty _value,
      $Res Function(_SubscribingProgramStateResultEmpty) _then)
      : super(_value, (v) => _then(v as _SubscribingProgramStateResultEmpty));

  @override
  _SubscribingProgramStateResultEmpty get _value =>
      super._value as _SubscribingProgramStateResultEmpty;
}

/// @nodoc
class _$_SubscribingProgramStateResultEmpty
    implements _SubscribingProgramStateResultEmpty {
  const _$_SubscribingProgramStateResultEmpty();

  @override
  String toString() {
    return 'SubscribingProgramState.resultEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribingProgramStateResultEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    @required TResult initial(_SubscribingProgramStateInitial value),
    @required TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    @required TResult success(_SubscribingProgramStateSuccess value),
    @required TResult error(_SubscribingProgramStateError value),
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
    TResult initial(_SubscribingProgramStateInitial value),
    TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    TResult success(_SubscribingProgramStateSuccess value),
    TResult error(_SubscribingProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultEmpty != null) {
      return resultEmpty(this);
    }
    return orElse();
  }
}

abstract class _SubscribingProgramStateResultEmpty
    implements SubscribingProgramState {
  const factory _SubscribingProgramStateResultEmpty() =
      _$_SubscribingProgramStateResultEmpty;
}

/// @nodoc
abstract class _$SubscribingProgramStateSuccessCopyWith<$Res> {
  factory _$SubscribingProgramStateSuccessCopyWith(
          _SubscribingProgramStateSuccess value,
          $Res Function(_SubscribingProgramStateSuccess) then) =
      __$SubscribingProgramStateSuccessCopyWithImpl<$Res>;
  $Res call({ListSubscribedPrograms listSubscribedPrograms});

  $ListSubscribedProgramsCopyWith<$Res> get listSubscribedPrograms;
}

/// @nodoc
class __$SubscribingProgramStateSuccessCopyWithImpl<$Res>
    extends _$SubscribingProgramStateCopyWithImpl<$Res>
    implements _$SubscribingProgramStateSuccessCopyWith<$Res> {
  __$SubscribingProgramStateSuccessCopyWithImpl(
      _SubscribingProgramStateSuccess _value,
      $Res Function(_SubscribingProgramStateSuccess) _then)
      : super(_value, (v) => _then(v as _SubscribingProgramStateSuccess));

  @override
  _SubscribingProgramStateSuccess get _value =>
      super._value as _SubscribingProgramStateSuccess;

  @override
  $Res call({
    Object listSubscribedPrograms = freezed,
  }) {
    return _then(_SubscribingProgramStateSuccess(
      listSubscribedPrograms == freezed
          ? _value.listSubscribedPrograms
          : listSubscribedPrograms as ListSubscribedPrograms,
    ));
  }

  @override
  $ListSubscribedProgramsCopyWith<$Res> get listSubscribedPrograms {
    if (_value.listSubscribedPrograms == null) {
      return null;
    }
    return $ListSubscribedProgramsCopyWith<$Res>(_value.listSubscribedPrograms,
        (value) {
      return _then(_value.copyWith(listSubscribedPrograms: value));
    });
  }
}

/// @nodoc
class _$_SubscribingProgramStateSuccess
    implements _SubscribingProgramStateSuccess {
  const _$_SubscribingProgramStateSuccess(this.listSubscribedPrograms)
      : assert(listSubscribedPrograms != null);

  @override
  final ListSubscribedPrograms listSubscribedPrograms;

  @override
  String toString() {
    return 'SubscribingProgramState.success(listSubscribedPrograms: $listSubscribedPrograms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribingProgramStateSuccess &&
            (identical(other.listSubscribedPrograms, listSubscribedPrograms) ||
                const DeepCollectionEquality().equals(
                    other.listSubscribedPrograms, listSubscribedPrograms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listSubscribedPrograms);

  @JsonKey(ignore: true)
  @override
  _$SubscribingProgramStateSuccessCopyWith<_SubscribingProgramStateSuccess>
      get copyWith => __$SubscribingProgramStateSuccessCopyWithImpl<
          _SubscribingProgramStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(ListSubscribedPrograms listSubscribedPrograms),
    @required TResult error(ErrorMsgCommon errorMsg),
  }) {
    assert(initial != null);
    assert(resultEmpty != null);
    assert(success != null);
    assert(error != null);
    return success(listSubscribedPrograms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult resultEmpty(),
    TResult success(ListSubscribedPrograms listSubscribedPrograms),
    TResult error(ErrorMsgCommon errorMsg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(listSubscribedPrograms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SubscribingProgramStateInitial value),
    @required TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    @required TResult success(_SubscribingProgramStateSuccess value),
    @required TResult error(_SubscribingProgramStateError value),
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
    TResult initial(_SubscribingProgramStateInitial value),
    TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    TResult success(_SubscribingProgramStateSuccess value),
    TResult error(_SubscribingProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SubscribingProgramStateSuccess
    implements SubscribingProgramState {
  const factory _SubscribingProgramStateSuccess(
          ListSubscribedPrograms listSubscribedPrograms) =
      _$_SubscribingProgramStateSuccess;

  ListSubscribedPrograms get listSubscribedPrograms;
  @JsonKey(ignore: true)
  _$SubscribingProgramStateSuccessCopyWith<_SubscribingProgramStateSuccess>
      get copyWith;
}

/// @nodoc
abstract class _$SubscribingProgramStateErrorCopyWith<$Res> {
  factory _$SubscribingProgramStateErrorCopyWith(
          _SubscribingProgramStateError value,
          $Res Function(_SubscribingProgramStateError) then) =
      __$SubscribingProgramStateErrorCopyWithImpl<$Res>;
  $Res call({ErrorMsgCommon errorMsg});

  $ErrorMsgCommonCopyWith<$Res> get errorMsg;
}

/// @nodoc
class __$SubscribingProgramStateErrorCopyWithImpl<$Res>
    extends _$SubscribingProgramStateCopyWithImpl<$Res>
    implements _$SubscribingProgramStateErrorCopyWith<$Res> {
  __$SubscribingProgramStateErrorCopyWithImpl(
      _SubscribingProgramStateError _value,
      $Res Function(_SubscribingProgramStateError) _then)
      : super(_value, (v) => _then(v as _SubscribingProgramStateError));

  @override
  _SubscribingProgramStateError get _value =>
      super._value as _SubscribingProgramStateError;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_SubscribingProgramStateError(
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
class _$_SubscribingProgramStateError implements _SubscribingProgramStateError {
  const _$_SubscribingProgramStateError(this.errorMsg)
      : assert(errorMsg != null);

  @override
  final ErrorMsgCommon errorMsg;

  @override
  String toString() {
    return 'SubscribingProgramState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribingProgramStateError &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @JsonKey(ignore: true)
  @override
  _$SubscribingProgramStateErrorCopyWith<_SubscribingProgramStateError>
      get copyWith => __$SubscribingProgramStateErrorCopyWithImpl<
          _SubscribingProgramStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult resultEmpty(),
    @required TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    TResult success(ListSubscribedPrograms listSubscribedPrograms),
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
    @required TResult initial(_SubscribingProgramStateInitial value),
    @required TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    @required TResult success(_SubscribingProgramStateSuccess value),
    @required TResult error(_SubscribingProgramStateError value),
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
    TResult initial(_SubscribingProgramStateInitial value),
    TResult resultEmpty(_SubscribingProgramStateResultEmpty value),
    TResult success(_SubscribingProgramStateSuccess value),
    TResult error(_SubscribingProgramStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SubscribingProgramStateError
    implements SubscribingProgramState {
  const factory _SubscribingProgramStateError(ErrorMsgCommon errorMsg) =
      _$_SubscribingProgramStateError;

  ErrorMsgCommon get errorMsg;
  @JsonKey(ignore: true)
  _$SubscribingProgramStateErrorCopyWith<_SubscribingProgramStateError>
      get copyWith;
}
