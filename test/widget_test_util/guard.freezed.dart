// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'guard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GuardTearOff {
  const _$GuardTearOff();

// ignore: unused_element
  _Success<T> success<T>(T data) {
    return _Success<T>(
      data,
    );
  }

// ignore: unused_element
  _Error<T> error<T>(dynamic e) {
    return _Error<T>(
      e,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Guard = _$GuardTearOff();

/// @nodoc
mixin _$Guard<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data),
    @required TResult error(dynamic e),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data),
    TResult error(dynamic e),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GuardCopyWith<T, $Res> {
  factory $GuardCopyWith(Guard<T> value, $Res Function(Guard<T>) then) =
      _$GuardCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$GuardCopyWithImpl<T, $Res> implements $GuardCopyWith<T, $Res> {
  _$GuardCopyWithImpl(this._value, this._then);

  final Guard<T> _value;
  // ignore: unused_field
  final $Res Function(Guard<T>) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res> extends _$GuardCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_Success<T>(
      data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$_Success<T> extends _Success<T> {
  const _$_Success(this.data)
      : assert(data != null),
        super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Guard<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data),
    @required TResult error(dynamic e),
  }) {
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data),
    TResult error(dynamic e),
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
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> extends Guard<T> {
  const _Success._() : super._();
  const factory _Success(T data) = _$_Success<T>;

  T get data;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res> extends _$GuardCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(_Error<T>(
      e == freezed ? _value.e : e as dynamic,
    ));
  }
}

/// @nodoc
class _$_Error<T> extends _Error<T> {
  const _$_Error(this.e)
      : assert(e != null),
        super._();

  @override
  final dynamic e;

  @override
  String toString() {
    return 'Guard<$T>.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(T data),
    @required TResult error(dynamic e),
  }) {
    assert(success != null);
    assert(error != null);
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(T data),
    TResult error(dynamic e),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> extends Guard<T> {
  const _Error._() : super._();
  const factory _Error(dynamic e) = _$_Error<T>;

  dynamic get e;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith;
}
