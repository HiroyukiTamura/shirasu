// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'plan_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlanTypeTearOff {
  const _$PlanTypeTearOff();

// ignore: unused_element
  _OneTime oneTime() {
    return const _OneTime();
  }

// ignore: unused_element
  _Subscription subscription() {
    return const _Subscription();
  }
}

/// @nodoc
// ignore: unused_element
const $PlanType = _$PlanTypeTearOff();

/// @nodoc
mixin _$PlanType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult oneTime(),
    @required TResult subscription(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult oneTime(),
    TResult subscription(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult oneTime(_OneTime value),
    @required TResult subscription(_Subscription value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult oneTime(_OneTime value),
    TResult subscription(_Subscription value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlanTypeCopyWith<$Res> {
  factory $PlanTypeCopyWith(PlanType value, $Res Function(PlanType) then) =
      _$PlanTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlanTypeCopyWithImpl<$Res> implements $PlanTypeCopyWith<$Res> {
  _$PlanTypeCopyWithImpl(this._value, this._then);

  final PlanType _value;
  // ignore: unused_field
  final $Res Function(PlanType) _then;
}

/// @nodoc
abstract class _$OneTimeCopyWith<$Res> {
  factory _$OneTimeCopyWith(_OneTime value, $Res Function(_OneTime) then) =
      __$OneTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$OneTimeCopyWithImpl<$Res> extends _$PlanTypeCopyWithImpl<$Res>
    implements _$OneTimeCopyWith<$Res> {
  __$OneTimeCopyWithImpl(_OneTime _value, $Res Function(_OneTime) _then)
      : super(_value, (v) => _then(v as _OneTime));

  @override
  _OneTime get _value => super._value as _OneTime;
}

/// @nodoc
class _$_OneTime implements _OneTime {
  const _$_OneTime();

  @override
  String toString() {
    return 'PlanType.oneTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OneTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult oneTime(),
    @required TResult subscription(),
  }) {
    assert(oneTime != null);
    assert(subscription != null);
    return oneTime();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult oneTime(),
    TResult subscription(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (oneTime != null) {
      return oneTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult oneTime(_OneTime value),
    @required TResult subscription(_Subscription value),
  }) {
    assert(oneTime != null);
    assert(subscription != null);
    return oneTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult oneTime(_OneTime value),
    TResult subscription(_Subscription value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (oneTime != null) {
      return oneTime(this);
    }
    return orElse();
  }
}

abstract class _OneTime implements PlanType {
  const factory _OneTime() = _$_OneTime;
}

/// @nodoc
abstract class _$SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$PlanTypeCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;
}

/// @nodoc
class _$_Subscription implements _Subscription {
  const _$_Subscription();

  @override
  String toString() {
    return 'PlanType.subscription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Subscription);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult oneTime(),
    @required TResult subscription(),
  }) {
    assert(oneTime != null);
    assert(subscription != null);
    return subscription();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult oneTime(),
    TResult subscription(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subscription != null) {
      return subscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult oneTime(_OneTime value),
    @required TResult subscription(_Subscription value),
  }) {
    assert(oneTime != null);
    assert(subscription != null);
    return subscription(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult oneTime(_OneTime value),
    TResult subscription(_Subscription value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subscription != null) {
      return subscription(this);
    }
    return orElse();
  }
}

abstract class _Subscription implements PlanType {
  const factory _Subscription() = _$_Subscription;
}
