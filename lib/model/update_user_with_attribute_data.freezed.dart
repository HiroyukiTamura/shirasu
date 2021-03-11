// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_user_with_attribute_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserWithAttributeData _$UserWithAttributeDataFromJson(
    Map<String, dynamic> json) {
  return _UserWithAttributeData.fromJson(json);
}

/// @nodoc
class _$UserWithAttributeDataTearOff {
  const _$UserWithAttributeDataTearOff();

// ignore: unused_element
  _UserWithAttributeData call(
      {@required UserWithAttribute updateUserWithAttribute}) {
    return _UserWithAttributeData(
      updateUserWithAttribute: updateUserWithAttribute,
    );
  }

// ignore: unused_element
  UserWithAttributeData fromJson(Map<String, Object> json) {
    return UserWithAttributeData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserWithAttributeData = _$UserWithAttributeDataTearOff();

/// @nodoc
mixin _$UserWithAttributeData {
  UserWithAttribute get updateUserWithAttribute;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserWithAttributeDataCopyWith<UserWithAttributeData> get copyWith;
}

/// @nodoc
abstract class $UserWithAttributeDataCopyWith<$Res> {
  factory $UserWithAttributeDataCopyWith(UserWithAttributeData value,
          $Res Function(UserWithAttributeData) then) =
      _$UserWithAttributeDataCopyWithImpl<$Res>;
  $Res call({UserWithAttribute updateUserWithAttribute});

  $UserWithAttributeCopyWith<$Res> get updateUserWithAttribute;
}

/// @nodoc
class _$UserWithAttributeDataCopyWithImpl<$Res>
    implements $UserWithAttributeDataCopyWith<$Res> {
  _$UserWithAttributeDataCopyWithImpl(this._value, this._then);

  final UserWithAttributeData _value;
  // ignore: unused_field
  final $Res Function(UserWithAttributeData) _then;

  @override
  $Res call({
    Object updateUserWithAttribute = freezed,
  }) {
    return _then(_value.copyWith(
      updateUserWithAttribute: updateUserWithAttribute == freezed
          ? _value.updateUserWithAttribute
          : updateUserWithAttribute as UserWithAttribute,
    ));
  }

  @override
  $UserWithAttributeCopyWith<$Res> get updateUserWithAttribute {
    if (_value.updateUserWithAttribute == null) {
      return null;
    }
    return $UserWithAttributeCopyWith<$Res>(_value.updateUserWithAttribute,
        (value) {
      return _then(_value.copyWith(updateUserWithAttribute: value));
    });
  }
}

/// @nodoc
abstract class _$UserWithAttributeDataCopyWith<$Res>
    implements $UserWithAttributeDataCopyWith<$Res> {
  factory _$UserWithAttributeDataCopyWith(_UserWithAttributeData value,
          $Res Function(_UserWithAttributeData) then) =
      __$UserWithAttributeDataCopyWithImpl<$Res>;
  @override
  $Res call({UserWithAttribute updateUserWithAttribute});

  @override
  $UserWithAttributeCopyWith<$Res> get updateUserWithAttribute;
}

/// @nodoc
class __$UserWithAttributeDataCopyWithImpl<$Res>
    extends _$UserWithAttributeDataCopyWithImpl<$Res>
    implements _$UserWithAttributeDataCopyWith<$Res> {
  __$UserWithAttributeDataCopyWithImpl(_UserWithAttributeData _value,
      $Res Function(_UserWithAttributeData) _then)
      : super(_value, (v) => _then(v as _UserWithAttributeData));

  @override
  _UserWithAttributeData get _value => super._value as _UserWithAttributeData;

  @override
  $Res call({
    Object updateUserWithAttribute = freezed,
  }) {
    return _then(_UserWithAttributeData(
      updateUserWithAttribute: updateUserWithAttribute == freezed
          ? _value.updateUserWithAttribute
          : updateUserWithAttribute as UserWithAttribute,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserWithAttributeData implements _UserWithAttributeData {
  const _$_UserWithAttributeData({@required this.updateUserWithAttribute})
      : assert(updateUserWithAttribute != null);

  factory _$_UserWithAttributeData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserWithAttributeDataFromJson(json);

  @override
  final UserWithAttribute updateUserWithAttribute;

  @override
  String toString() {
    return 'UserWithAttributeData(updateUserWithAttribute: $updateUserWithAttribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserWithAttributeData &&
            (identical(
                    other.updateUserWithAttribute, updateUserWithAttribute) ||
                const DeepCollectionEquality().equals(
                    other.updateUserWithAttribute, updateUserWithAttribute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateUserWithAttribute);

  @JsonKey(ignore: true)
  @override
  _$UserWithAttributeDataCopyWith<_UserWithAttributeData> get copyWith =>
      __$UserWithAttributeDataCopyWithImpl<_UserWithAttributeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserWithAttributeDataToJson(this);
  }
}

abstract class _UserWithAttributeData implements UserWithAttributeData {
  const factory _UserWithAttributeData(
          {@required UserWithAttribute updateUserWithAttribute}) =
      _$_UserWithAttributeData;

  factory _UserWithAttributeData.fromJson(Map<String, dynamic> json) =
      _$_UserWithAttributeData.fromJson;

  @override
  UserWithAttribute get updateUserWithAttribute;
  @override
  @JsonKey(ignore: true)
  _$UserWithAttributeDataCopyWith<_UserWithAttributeData> get copyWith;
}

UserWithAttribute _$UserWithAttributeFromJson(Map<String, dynamic> json) {
  return _UserWithAttribute.fromJson(json);
}

/// @nodoc
class _$UserWithAttributeTearOff {
  const _$UserWithAttributeTearOff();

// ignore: unused_element
  _UserWithAttribute call(
      {@required UserStatic user,
      @required UserAttribute attr,
      @required @JsonKey(name: '__typename') String typename}) {
    return _UserWithAttribute(
      user: user,
      attr: attr,
      typename: typename,
    );
  }

// ignore: unused_element
  UserWithAttribute fromJson(Map<String, Object> json) {
    return UserWithAttribute.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserWithAttribute = _$UserWithAttributeTearOff();

/// @nodoc
mixin _$UserWithAttribute {
  UserStatic get user;
  UserAttribute get attr;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserWithAttributeCopyWith<UserWithAttribute> get copyWith;
}

/// @nodoc
abstract class $UserWithAttributeCopyWith<$Res> {
  factory $UserWithAttributeCopyWith(
          UserWithAttribute value, $Res Function(UserWithAttribute) then) =
      _$UserWithAttributeCopyWithImpl<$Res>;
  $Res call(
      {UserStatic user,
      UserAttribute attr,
      @JsonKey(name: '__typename') String typename});

  $UserStaticCopyWith<$Res> get user;
  $UserAttributeCopyWith<$Res> get attr;
}

/// @nodoc
class _$UserWithAttributeCopyWithImpl<$Res>
    implements $UserWithAttributeCopyWith<$Res> {
  _$UserWithAttributeCopyWithImpl(this._value, this._then);

  final UserWithAttribute _value;
  // ignore: unused_field
  final $Res Function(UserWithAttribute) _then;

  @override
  $Res call({
    Object user = freezed,
    Object attr = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserStatic,
      attr: attr == freezed ? _value.attr : attr as UserAttribute,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $UserStaticCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserStaticCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserAttributeCopyWith<$Res> get attr {
    if (_value.attr == null) {
      return null;
    }
    return $UserAttributeCopyWith<$Res>(_value.attr, (value) {
      return _then(_value.copyWith(attr: value));
    });
  }
}

/// @nodoc
abstract class _$UserWithAttributeCopyWith<$Res>
    implements $UserWithAttributeCopyWith<$Res> {
  factory _$UserWithAttributeCopyWith(
          _UserWithAttribute value, $Res Function(_UserWithAttribute) then) =
      __$UserWithAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserStatic user,
      UserAttribute attr,
      @JsonKey(name: '__typename') String typename});

  @override
  $UserStaticCopyWith<$Res> get user;
  @override
  $UserAttributeCopyWith<$Res> get attr;
}

/// @nodoc
class __$UserWithAttributeCopyWithImpl<$Res>
    extends _$UserWithAttributeCopyWithImpl<$Res>
    implements _$UserWithAttributeCopyWith<$Res> {
  __$UserWithAttributeCopyWithImpl(
      _UserWithAttribute _value, $Res Function(_UserWithAttribute) _then)
      : super(_value, (v) => _then(v as _UserWithAttribute));

  @override
  _UserWithAttribute get _value => super._value as _UserWithAttribute;

  @override
  $Res call({
    Object user = freezed,
    Object attr = freezed,
    Object typename = freezed,
  }) {
    return _then(_UserWithAttribute(
      user: user == freezed ? _value.user : user as UserStatic,
      attr: attr == freezed ? _value.attr : attr as UserAttribute,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserWithAttribute implements _UserWithAttribute {
  const _$_UserWithAttribute(
      {@required this.user,
      @required this.attr,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(user != null),
        assert(attr != null),
        assert(typename != null),
        assert(typename == "UserWithAttribute");

  factory _$_UserWithAttribute.fromJson(Map<String, dynamic> json) =>
      _$_$_UserWithAttributeFromJson(json);

  @override
  final UserStatic user;
  @override
  final UserAttribute attr;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'UserWithAttribute(user: $user, attr: $attr, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserWithAttribute &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.attr, attr) ||
                const DeepCollectionEquality().equals(other.attr, attr)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(attr) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$UserWithAttributeCopyWith<_UserWithAttribute> get copyWith =>
      __$UserWithAttributeCopyWithImpl<_UserWithAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserWithAttributeToJson(this);
  }
}

abstract class _UserWithAttribute implements UserWithAttribute {
  const factory _UserWithAttribute(
          {@required UserStatic user,
          @required UserAttribute attr,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_UserWithAttribute;

  factory _UserWithAttribute.fromJson(Map<String, dynamic> json) =
      _$_UserWithAttribute.fromJson;

  @override
  UserStatic get user;
  @override
  UserAttribute get attr;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$UserWithAttributeCopyWith<_UserWithAttribute> get copyWith;
}

UserAttribute _$UserAttributeFromJson(Map<String, dynamic> json) {
  return _UserAttribute.fromJson(json);
}

/// @nodoc
class _$UserAttributeTearOff {
  const _$UserAttributeTearOff();

// ignore: unused_element
  _UserAttribute call(
      {@required String id,
      @required String email,
      @required DateTime birthDate,
      @required String job,
      @required String country,
      @required int prefecture,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _UserAttribute(
      id: id,
      email: email,
      birthDate: birthDate,
      job: job,
      country: country,
      prefecture: prefecture,
      createdAt: createdAt,
      updatedAt: updatedAt,
      typename: typename,
    );
  }

// ignore: unused_element
  UserAttribute fromJson(Map<String, Object> json) {
    return UserAttribute.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserAttribute = _$UserAttributeTearOff();

/// @nodoc
mixin _$UserAttribute {
  String get id;
  String get email;
  DateTime get birthDate;
  String get job;
  String get country;
  int get prefecture;
  DateTime get createdAt;
  DateTime get updatedAt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserAttributeCopyWith<UserAttribute> get copyWith;
}

/// @nodoc
abstract class $UserAttributeCopyWith<$Res> {
  factory $UserAttributeCopyWith(
          UserAttribute value, $Res Function(UserAttribute) then) =
      _$UserAttributeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      DateTime birthDate,
      String job,
      String country,
      int prefecture,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$UserAttributeCopyWithImpl<$Res>
    implements $UserAttributeCopyWith<$Res> {
  _$UserAttributeCopyWithImpl(this._value, this._then);

  final UserAttribute _value;
  // ignore: unused_field
  final $Res Function(UserAttribute) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
    Object prefecture = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      country: country == freezed ? _value.country : country as String,
      prefecture: prefecture == freezed ? _value.prefecture : prefecture as int,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAttributeCopyWith<$Res>
    implements $UserAttributeCopyWith<$Res> {
  factory _$UserAttributeCopyWith(
          _UserAttribute value, $Res Function(_UserAttribute) then) =
      __$UserAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      DateTime birthDate,
      String job,
      String country,
      int prefecture,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$UserAttributeCopyWithImpl<$Res>
    extends _$UserAttributeCopyWithImpl<$Res>
    implements _$UserAttributeCopyWith<$Res> {
  __$UserAttributeCopyWithImpl(
      _UserAttribute _value, $Res Function(_UserAttribute) _then)
      : super(_value, (v) => _then(v as _UserAttribute));

  @override
  _UserAttribute get _value => super._value as _UserAttribute;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
    Object prefecture = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_UserAttribute(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      country: country == freezed ? _value.country : country as String,
      prefecture: prefecture == freezed ? _value.prefecture : prefecture as int,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserAttribute implements _UserAttribute {
  const _$_UserAttribute(
      {@required this.id,
      @required this.email,
      @required this.birthDate,
      @required this.job,
      @required this.country,
      @required this.prefecture,
      @required this.createdAt,
      @required this.updatedAt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(email != null),
        assert(birthDate != null),
        assert(job != null),
        assert(country != null),
        assert(prefecture != null),
        assert(createdAt != null),
        assert(updatedAt != null),
        assert(typename != null),
        assert(typename == "UserAttribute");

  factory _$_UserAttribute.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAttributeFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final DateTime birthDate;
  @override
  final String job;
  @override
  final String country;
  @override
  final int prefecture;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'UserAttribute(id: $id, email: $email, birthDate: $birthDate, job: $job, country: $country, prefecture: $prefecture, createdAt: $createdAt, updatedAt: $updatedAt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAttribute &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
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
                    .equals(other.prefecture, prefecture)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(prefecture) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$UserAttributeCopyWith<_UserAttribute> get copyWith =>
      __$UserAttributeCopyWithImpl<_UserAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAttributeToJson(this);
  }
}

abstract class _UserAttribute implements UserAttribute {
  const factory _UserAttribute(
          {@required String id,
          @required String email,
          @required DateTime birthDate,
          @required String job,
          @required String country,
          @required int prefecture,
          @required DateTime createdAt,
          @required DateTime updatedAt,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_UserAttribute;

  factory _UserAttribute.fromJson(Map<String, dynamic> json) =
      _$_UserAttribute.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  DateTime get birthDate;
  @override
  String get job;
  @override
  String get country;
  @override
  int get prefecture;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$UserAttributeCopyWith<_UserAttribute> get copyWith;
}

UserStatic _$UserStaticFromJson(Map<String, dynamic> json) {
  return _UserStatic.fromJson(json);
}

/// @nodoc
class _$UserStaticTearOff {
  const _$UserStaticTearOff();

// ignore: unused_element
  _UserStatic call(
      {@required String id,
      @required String name,
      String icon,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required @JsonKey(name: 'roles') @protected List<String> rawRoles,
      @required @JsonKey(name: '__typename') String typename}) {
    return _UserStatic(
      id: id,
      name: name,
      icon: icon,
      createdAt: createdAt,
      updatedAt: updatedAt,
      rawRoles: rawRoles,
      typename: typename,
    );
  }

// ignore: unused_element
  UserStatic fromJson(Map<String, Object> json) {
    return UserStatic.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserStatic = _$UserStaticTearOff();

/// @nodoc
mixin _$UserStatic {
  String get id;
  String get name;
  String get icon;
  DateTime get createdAt;
  DateTime get updatedAt;
  @JsonKey(name: 'roles')
  @protected
  List<String> get rawRoles; // @required Comments tenants, not implemented yet
// @required Comments comments, not implemented yet
// @required Comments reviews, not implemented yet
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserStaticCopyWith<UserStatic> get copyWith;
}

/// @nodoc
abstract class $UserStaticCopyWith<$Res> {
  factory $UserStaticCopyWith(
          UserStatic value, $Res Function(UserStatic) then) =
      _$UserStaticCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String icon,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'roles') @protected List<String> rawRoles,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$UserStaticCopyWithImpl<$Res> implements $UserStaticCopyWith<$Res> {
  _$UserStaticCopyWithImpl(this._value, this._then);

  final UserStatic _value;
  // ignore: unused_field
  final $Res Function(UserStatic) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object rawRoles = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      rawRoles:
          rawRoles == freezed ? _value.rawRoles : rawRoles as List<String>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$UserStaticCopyWith<$Res> implements $UserStaticCopyWith<$Res> {
  factory _$UserStaticCopyWith(
          _UserStatic value, $Res Function(_UserStatic) then) =
      __$UserStaticCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String icon,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: 'roles') @protected List<String> rawRoles,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$UserStaticCopyWithImpl<$Res> extends _$UserStaticCopyWithImpl<$Res>
    implements _$UserStaticCopyWith<$Res> {
  __$UserStaticCopyWithImpl(
      _UserStatic _value, $Res Function(_UserStatic) _then)
      : super(_value, (v) => _then(v as _UserStatic));

  @override
  _UserStatic get _value => super._value as _UserStatic;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object rawRoles = freezed,
    Object typename = freezed,
  }) {
    return _then(_UserStatic(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      rawRoles:
          rawRoles == freezed ? _value.rawRoles : rawRoles as List<String>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserStatic extends _UserStatic {
  const _$_UserStatic(
      {@required this.id,
      @required this.name,
      this.icon,
      @required this.createdAt,
      @required this.updatedAt,
      @required @JsonKey(name: 'roles') @protected this.rawRoles,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(createdAt != null),
        assert(updatedAt != null),
        assert(rawRoles != null),
        assert(typename != null),
        assert(typename == "User"),
        super._();

  factory _$_UserStatic.fromJson(Map<String, dynamic> json) =>
      _$_$_UserStaticFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'roles')
  @protected
  final List<String> rawRoles;
  @override // @required Comments tenants, not implemented yet
// @required Comments comments, not implemented yet
// @required Comments reviews, not implemented yet
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'UserStatic(id: $id, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt, rawRoles: $rawRoles, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserStatic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.rawRoles, rawRoles) ||
                const DeepCollectionEquality()
                    .equals(other.rawRoles, rawRoles)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(rawRoles) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$UserStaticCopyWith<_UserStatic> get copyWith =>
      __$UserStaticCopyWithImpl<_UserStatic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserStaticToJson(this);
  }
}

abstract class _UserStatic extends UserStatic {
  const _UserStatic._() : super._();
  const factory _UserStatic(
      {@required String id,
      @required String name,
      String icon,
      @required DateTime createdAt,
      @required DateTime updatedAt,
      @required @JsonKey(name: 'roles') @protected List<String> rawRoles,
      @required @JsonKey(name: '__typename') String typename}) = _$_UserStatic;

  factory _UserStatic.fromJson(Map<String, dynamic> json) =
      _$_UserStatic.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'roles')
  @protected
  List<String> get rawRoles;
  @override // @required Comments tenants, not implemented yet
// @required Comments comments, not implemented yet
// @required Comments reviews, not implemented yet
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$UserStaticCopyWith<_UserStatic> get copyWith;
}
