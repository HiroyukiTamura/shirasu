// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_user_with_attr_variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UpdateUserWithAttrVariable _$UpdateUserWithAttrVariableFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserWithAttrVariable.fromJson(json);
}

/// @nodoc
class _$UpdateUserWithAttrVariableTearOff {
  const _$UpdateUserWithAttrVariableTearOff();

// ignore: unused_element
  _UpdateUserWithAttrVariable call({@required Input input}) {
    return _UpdateUserWithAttrVariable(
      input: input,
    );
  }

// ignore: unused_element
  UpdateUserWithAttrVariable fromJson(Map<String, Object> json) {
    return UpdateUserWithAttrVariable.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUserWithAttrVariable = _$UpdateUserWithAttrVariableTearOff();

/// @nodoc
mixin _$UpdateUserWithAttrVariable {
  Input get input;

  Map<String, dynamic> toJson();
  $UpdateUserWithAttrVariableCopyWith<UpdateUserWithAttrVariable> get copyWith;
}

/// @nodoc
abstract class $UpdateUserWithAttrVariableCopyWith<$Res> {
  factory $UpdateUserWithAttrVariableCopyWith(UpdateUserWithAttrVariable value,
          $Res Function(UpdateUserWithAttrVariable) then) =
      _$UpdateUserWithAttrVariableCopyWithImpl<$Res>;
  $Res call({Input input});

  $InputCopyWith<$Res> get input;
}

/// @nodoc
class _$UpdateUserWithAttrVariableCopyWithImpl<$Res>
    implements $UpdateUserWithAttrVariableCopyWith<$Res> {
  _$UpdateUserWithAttrVariableCopyWithImpl(this._value, this._then);

  final UpdateUserWithAttrVariable _value;
  // ignore: unused_field
  final $Res Function(UpdateUserWithAttrVariable) _then;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed ? _value.input : input as Input,
    ));
  }

  @override
  $InputCopyWith<$Res> get input {
    if (_value.input == null) {
      return null;
    }
    return $InputCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateUserWithAttrVariableCopyWith<$Res>
    implements $UpdateUserWithAttrVariableCopyWith<$Res> {
  factory _$UpdateUserWithAttrVariableCopyWith(
          _UpdateUserWithAttrVariable value,
          $Res Function(_UpdateUserWithAttrVariable) then) =
      __$UpdateUserWithAttrVariableCopyWithImpl<$Res>;
  @override
  $Res call({Input input});

  @override
  $InputCopyWith<$Res> get input;
}

/// @nodoc
class __$UpdateUserWithAttrVariableCopyWithImpl<$Res>
    extends _$UpdateUserWithAttrVariableCopyWithImpl<$Res>
    implements _$UpdateUserWithAttrVariableCopyWith<$Res> {
  __$UpdateUserWithAttrVariableCopyWithImpl(_UpdateUserWithAttrVariable _value,
      $Res Function(_UpdateUserWithAttrVariable) _then)
      : super(_value, (v) => _then(v as _UpdateUserWithAttrVariable));

  @override
  _UpdateUserWithAttrVariable get _value =>
      super._value as _UpdateUserWithAttrVariable;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_UpdateUserWithAttrVariable(
      input: input == freezed ? _value.input : input as Input,
    ));
  }
}

@JsonSerializable()
@protected

/// @nodoc
class _$_UpdateUserWithAttrVariable implements _UpdateUserWithAttrVariable {
  const _$_UpdateUserWithAttrVariable({@required this.input})
      : assert(input != null);

  factory _$_UpdateUserWithAttrVariable.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateUserWithAttrVariableFromJson(json);

  @override
  final Input input;

  @override
  String toString() {
    return 'UpdateUserWithAttrVariable(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserWithAttrVariable &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @override
  _$UpdateUserWithAttrVariableCopyWith<_UpdateUserWithAttrVariable>
      get copyWith => __$UpdateUserWithAttrVariableCopyWithImpl<
          _UpdateUserWithAttrVariable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateUserWithAttrVariableToJson(this);
  }
}

abstract class _UpdateUserWithAttrVariable
    implements UpdateUserWithAttrVariable {
  const factory _UpdateUserWithAttrVariable({@required Input input}) =
      _$_UpdateUserWithAttrVariable;

  factory _UpdateUserWithAttrVariable.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserWithAttrVariable.fromJson;

  @override
  Input get input;
  @override
  _$UpdateUserWithAttrVariableCopyWith<_UpdateUserWithAttrVariable>
      get copyWith;
}

Input _$InputFromJson(Map<String, dynamic> json) {
  return _Input.fromJson(json);
}

/// @nodoc
class _$InputTearOff {
  const _$InputTearOff();

// ignore: unused_element
  _Input call({@required User user, @required Attr attr}) {
    return _Input(
      user: user,
      attr: attr,
    );
  }

// ignore: unused_element
  Input fromJson(Map<String, Object> json) {
    return Input.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Input = _$InputTearOff();

/// @nodoc
mixin _$Input {
  User get user;
  Attr get attr;

  Map<String, dynamic> toJson();
  $InputCopyWith<Input> get copyWith;
}

/// @nodoc
abstract class $InputCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) =
      _$InputCopyWithImpl<$Res>;
  $Res call({User user, Attr attr});

  $UserCopyWith<$Res> get user;
  $AttrCopyWith<$Res> get attr;
}

/// @nodoc
class _$InputCopyWithImpl<$Res> implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(this._value, this._then);

  final Input _value;
  // ignore: unused_field
  final $Res Function(Input) _then;

  @override
  $Res call({
    Object user = freezed,
    Object attr = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      attr: attr == freezed ? _value.attr : attr as Attr,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $AttrCopyWith<$Res> get attr {
    if (_value.attr == null) {
      return null;
    }
    return $AttrCopyWith<$Res>(_value.attr, (value) {
      return _then(_value.copyWith(attr: value));
    });
  }
}

/// @nodoc
abstract class _$InputCopyWith<$Res> implements $InputCopyWith<$Res> {
  factory _$InputCopyWith(_Input value, $Res Function(_Input) then) =
      __$InputCopyWithImpl<$Res>;
  @override
  $Res call({User user, Attr attr});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $AttrCopyWith<$Res> get attr;
}

/// @nodoc
class __$InputCopyWithImpl<$Res> extends _$InputCopyWithImpl<$Res>
    implements _$InputCopyWith<$Res> {
  __$InputCopyWithImpl(_Input _value, $Res Function(_Input) _then)
      : super(_value, (v) => _then(v as _Input));

  @override
  _Input get _value => super._value as _Input;

  @override
  $Res call({
    Object user = freezed,
    Object attr = freezed,
  }) {
    return _then(_Input(
      user: user == freezed ? _value.user : user as User,
      attr: attr == freezed ? _value.attr : attr as Attr,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Input implements _Input {
  const _$_Input({@required this.user, @required this.attr})
      : assert(user != null),
        assert(attr != null);

  factory _$_Input.fromJson(Map<String, dynamic> json) =>
      _$_$_InputFromJson(json);

  @override
  final User user;
  @override
  final Attr attr;

  @override
  String toString() {
    return 'Input(user: $user, attr: $attr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Input &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.attr, attr) ||
                const DeepCollectionEquality().equals(other.attr, attr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(attr);

  @override
  _$InputCopyWith<_Input> get copyWith =>
      __$InputCopyWithImpl<_Input>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InputToJson(this);
  }
}

abstract class _Input implements Input {
  const factory _Input({@required User user, @required Attr attr}) = _$_Input;

  factory _Input.fromJson(Map<String, dynamic> json) = _$_Input.fromJson;

  @override
  User get user;
  @override
  Attr get attr;
  @override
  _$InputCopyWith<_Input> get copyWith;
}

Attr _$AttrFromJson(Map<String, dynamic> json) {
  return _Attr.fromJson(json);
}

/// @nodoc
class _$AttrTearOff {
  const _$AttrTearOff();

// ignore: unused_element
  _Attr call(
      {@required String id,
      @required DateTime birthDate,
      @required String job,
      @required String country,
      @required int prefecture}) {
    return _Attr(
      id: id,
      birthDate: birthDate,
      job: job,
      country: country,
      prefecture: prefecture,
    );
  }

// ignore: unused_element
  Attr fromJson(Map<String, Object> json) {
    return Attr.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Attr = _$AttrTearOff();

/// @nodoc
mixin _$Attr {
  String get id;
  DateTime get birthDate;
  String get job;
  String get country;
  int get prefecture;

  Map<String, dynamic> toJson();
  $AttrCopyWith<Attr> get copyWith;
}

/// @nodoc
abstract class $AttrCopyWith<$Res> {
  factory $AttrCopyWith(Attr value, $Res Function(Attr) then) =
      _$AttrCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime birthDate,
      String job,
      String country,
      int prefecture});
}

/// @nodoc
class _$AttrCopyWithImpl<$Res> implements $AttrCopyWith<$Res> {
  _$AttrCopyWithImpl(this._value, this._then);

  final Attr _value;
  // ignore: unused_field
  final $Res Function(Attr) _then;

  @override
  $Res call({
    Object id = freezed,
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
    Object prefecture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      country: country == freezed ? _value.country : country as String,
      prefecture: prefecture == freezed ? _value.prefecture : prefecture as int,
    ));
  }
}

/// @nodoc
abstract class _$AttrCopyWith<$Res> implements $AttrCopyWith<$Res> {
  factory _$AttrCopyWith(_Attr value, $Res Function(_Attr) then) =
      __$AttrCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime birthDate,
      String job,
      String country,
      int prefecture});
}

/// @nodoc
class __$AttrCopyWithImpl<$Res> extends _$AttrCopyWithImpl<$Res>
    implements _$AttrCopyWith<$Res> {
  __$AttrCopyWithImpl(_Attr _value, $Res Function(_Attr) _then)
      : super(_value, (v) => _then(v as _Attr));

  @override
  _Attr get _value => super._value as _Attr;

  @override
  $Res call({
    Object id = freezed,
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
    Object prefecture = freezed,
  }) {
    return _then(_Attr(
      id: id == freezed ? _value.id : id as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      country: country == freezed ? _value.country : country as String,
      prefecture: prefecture == freezed ? _value.prefecture : prefecture as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Attr implements _Attr {
  const _$_Attr(
      {@required this.id,
      @required this.birthDate,
      @required this.job,
      @required this.country,
      @required this.prefecture})
      : assert(id != null),
        assert(birthDate != null),
        assert(job != null),
        assert(country != null),
        assert(prefecture != null);

  factory _$_Attr.fromJson(Map<String, dynamic> json) =>
      _$_$_AttrFromJson(json);

  @override
  final String id;
  @override
  final DateTime birthDate;
  @override
  final String job;
  @override
  final String country;
  @override
  final int prefecture;

  @override
  String toString() {
    return 'Attr(id: $id, birthDate: $birthDate, job: $job, country: $country, prefecture: $prefecture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Attr &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.prefecture, prefecture) ||
                const DeepCollectionEquality()
                    .equals(other.prefecture, prefecture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(prefecture);

  @override
  _$AttrCopyWith<_Attr> get copyWith =>
      __$AttrCopyWithImpl<_Attr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AttrToJson(this);
  }
}

abstract class _Attr implements Attr {
  const factory _Attr(
      {@required String id,
      @required DateTime birthDate,
      @required String job,
      @required String country,
      @required int prefecture}) = _$_Attr;

  factory _Attr.fromJson(Map<String, dynamic> json) = _$_Attr.fromJson;

  @override
  String get id;
  @override
  DateTime get birthDate;
  @override
  String get job;
  @override
  String get country;
  @override
  int get prefecture;
  @override
  _$AttrCopyWith<_Attr> get copyWith;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call({@required String id}) {
    return _User(
      id: id,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User({@required this.id}) : assert(id != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'User(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({@required String id}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  _$UserCopyWith<_User> get copyWith;
}
