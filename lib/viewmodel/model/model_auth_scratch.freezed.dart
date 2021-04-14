// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_auth_scratch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ModelAuthScratchTearOff {
  const _$ModelAuthScratchTearOff();

// ignore: unused_element
  _ModelAuthScratch call(
      {@required LoginState loginState,
      @required bool obscurePw,
      String errLabelEmail,
      String errLabelPw}) {
    return _ModelAuthScratch(
      loginState: loginState,
      obscurePw: obscurePw,
      errLabelEmail: errLabelEmail,
      errLabelPw: errLabelPw,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelAuthScratch = _$ModelAuthScratchTearOff();

/// @nodoc
mixin _$ModelAuthScratch {
  LoginState get loginState;
  bool get obscurePw;
  String get errLabelEmail;
  String get errLabelPw;

  @JsonKey(ignore: true)
  $ModelAuthScratchCopyWith<ModelAuthScratch> get copyWith;
}

/// @nodoc
abstract class $ModelAuthScratchCopyWith<$Res> {
  factory $ModelAuthScratchCopyWith(
          ModelAuthScratch value, $Res Function(ModelAuthScratch) then) =
      _$ModelAuthScratchCopyWithImpl<$Res>;
  $Res call(
      {LoginState loginState,
      bool obscurePw,
      String errLabelEmail,
      String errLabelPw});

  $LoginStateCopyWith<$Res> get loginState;
}

/// @nodoc
class _$ModelAuthScratchCopyWithImpl<$Res>
    implements $ModelAuthScratchCopyWith<$Res> {
  _$ModelAuthScratchCopyWithImpl(this._value, this._then);

  final ModelAuthScratch _value;
  // ignore: unused_field
  final $Res Function(ModelAuthScratch) _then;

  @override
  $Res call({
    Object loginState = freezed,
    Object obscurePw = freezed,
    Object errLabelEmail = freezed,
    Object errLabelPw = freezed,
  }) {
    return _then(_value.copyWith(
      loginState:
          loginState == freezed ? _value.loginState : loginState as LoginState,
      obscurePw: obscurePw == freezed ? _value.obscurePw : obscurePw as bool,
      errLabelEmail: errLabelEmail == freezed
          ? _value.errLabelEmail
          : errLabelEmail as String,
      errLabelPw:
          errLabelPw == freezed ? _value.errLabelPw : errLabelPw as String,
    ));
  }

  @override
  $LoginStateCopyWith<$Res> get loginState {
    if (_value.loginState == null) {
      return null;
    }
    return $LoginStateCopyWith<$Res>(_value.loginState, (value) {
      return _then(_value.copyWith(loginState: value));
    });
  }
}

/// @nodoc
abstract class _$ModelAuthScratchCopyWith<$Res>
    implements $ModelAuthScratchCopyWith<$Res> {
  factory _$ModelAuthScratchCopyWith(
          _ModelAuthScratch value, $Res Function(_ModelAuthScratch) then) =
      __$ModelAuthScratchCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoginState loginState,
      bool obscurePw,
      String errLabelEmail,
      String errLabelPw});

  @override
  $LoginStateCopyWith<$Res> get loginState;
}

/// @nodoc
class __$ModelAuthScratchCopyWithImpl<$Res>
    extends _$ModelAuthScratchCopyWithImpl<$Res>
    implements _$ModelAuthScratchCopyWith<$Res> {
  __$ModelAuthScratchCopyWithImpl(
      _ModelAuthScratch _value, $Res Function(_ModelAuthScratch) _then)
      : super(_value, (v) => _then(v as _ModelAuthScratch));

  @override
  _ModelAuthScratch get _value => super._value as _ModelAuthScratch;

  @override
  $Res call({
    Object loginState = freezed,
    Object obscurePw = freezed,
    Object errLabelEmail = freezed,
    Object errLabelPw = freezed,
  }) {
    return _then(_ModelAuthScratch(
      loginState:
          loginState == freezed ? _value.loginState : loginState as LoginState,
      obscurePw: obscurePw == freezed ? _value.obscurePw : obscurePw as bool,
      errLabelEmail: errLabelEmail == freezed
          ? _value.errLabelEmail
          : errLabelEmail as String,
      errLabelPw:
          errLabelPw == freezed ? _value.errLabelPw : errLabelPw as String,
    ));
  }
}

@protected

/// @nodoc
class _$_ModelAuthScratch implements _ModelAuthScratch {
  const _$_ModelAuthScratch(
      {@required this.loginState,
      @required this.obscurePw,
      this.errLabelEmail,
      this.errLabelPw})
      : assert(loginState != null),
        assert(obscurePw != null);

  @override
  final LoginState loginState;
  @override
  final bool obscurePw;
  @override
  final String errLabelEmail;
  @override
  final String errLabelPw;

  @override
  String toString() {
    return 'ModelAuthScratch(loginState: $loginState, obscurePw: $obscurePw, errLabelEmail: $errLabelEmail, errLabelPw: $errLabelPw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelAuthScratch &&
            (identical(other.loginState, loginState) ||
                const DeepCollectionEquality()
                    .equals(other.loginState, loginState)) &&
            (identical(other.obscurePw, obscurePw) ||
                const DeepCollectionEquality()
                    .equals(other.obscurePw, obscurePw)) &&
            (identical(other.errLabelEmail, errLabelEmail) ||
                const DeepCollectionEquality()
                    .equals(other.errLabelEmail, errLabelEmail)) &&
            (identical(other.errLabelPw, errLabelPw) ||
                const DeepCollectionEquality()
                    .equals(other.errLabelPw, errLabelPw)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loginState) ^
      const DeepCollectionEquality().hash(obscurePw) ^
      const DeepCollectionEquality().hash(errLabelEmail) ^
      const DeepCollectionEquality().hash(errLabelPw);

  @JsonKey(ignore: true)
  @override
  _$ModelAuthScratchCopyWith<_ModelAuthScratch> get copyWith =>
      __$ModelAuthScratchCopyWithImpl<_ModelAuthScratch>(this, _$identity);
}

abstract class _ModelAuthScratch implements ModelAuthScratch {
  const factory _ModelAuthScratch(
      {@required LoginState loginState,
      @required bool obscurePw,
      String errLabelEmail,
      String errLabelPw}) = _$_ModelAuthScratch;

  @override
  LoginState get loginState;
  @override
  bool get obscurePw;
  @override
  String get errLabelEmail;
  @override
  String get errLabelPw;
  @override
  @JsonKey(ignore: true)
  _$ModelAuthScratchCopyWith<_ModelAuthScratch> get copyWith;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _Idle idle() {
    return const _Idle();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success() {
    return const _Success();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult success(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult success(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(_Idle value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(_Idle value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc
class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'LoginState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult success(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(_Idle value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(_Idle value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements LoginState {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
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
    @required TResult idle(_Idle value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(_Idle value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult success(),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
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
    @required TResult idle(_Idle value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(_Idle value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$_Success;
}
