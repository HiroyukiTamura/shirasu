// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return _Reviews.fromJson(json);
}

/// @nodoc
class _$ReviewsTearOff {
  const _$ReviewsTearOff();

// ignore: unused_element
  _Reviews call(
      {@required @protected @JsonKey(name: 'items') List<ReviewsItem> rawItems,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Reviews(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  Reviews fromJson(Map<String, Object> json) {
    return Reviews.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Reviews = _$ReviewsTearOff();

/// @nodoc
mixin _$Reviews {
  @protected
  @JsonKey(name: 'items')
  List<ReviewsItem> get rawItems;
  String get nextToken; // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReviewsCopyWith<Reviews> get copyWith;
}

/// @nodoc
abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res>;
  $Res call(
      {@protected @JsonKey(name: 'items') List<ReviewsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ReviewsCopyWithImpl<$Res> implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  final Reviews _value;
  // ignore: unused_field
  final $Res Function(Reviews) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems:
          rawItems == freezed ? _value.rawItems : rawItems as List<ReviewsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ReviewsCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$ReviewsCopyWith(_Reviews value, $Res Function(_Reviews) then) =
      __$ReviewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@protected @JsonKey(name: 'items') List<ReviewsItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ReviewsCopyWithImpl<$Res> extends _$ReviewsCopyWithImpl<$Res>
    implements _$ReviewsCopyWith<$Res> {
  __$ReviewsCopyWithImpl(_Reviews _value, $Res Function(_Reviews) _then)
      : super(_value, (v) => _then(v as _Reviews));

  @override
  _Reviews get _value => super._value as _Reviews;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Reviews(
      rawItems:
          rawItems == freezed ? _value.rawItems : rawItems as List<ReviewsItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Reviews extends _Reviews {
  const _$_Reviews(
      {@required @protected @JsonKey(name: 'items') this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ReviewConnection"),
        super._();

  factory _$_Reviews.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsFromJson(json);

  @override
  @protected
  @JsonKey(name: 'items')
  final List<ReviewsItem> rawItems;
  @override
  final String nextToken;
  @override // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Reviews(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reviews &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ReviewsCopyWith<_Reviews> get copyWith =>
      __$ReviewsCopyWithImpl<_Reviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsToJson(this);
  }
}

abstract class _Reviews extends Reviews {
  const _Reviews._() : super._();
  const factory _Reviews(
      {@required @protected @JsonKey(name: 'items') List<ReviewsItem> rawItems,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) = _$_Reviews;

  factory _Reviews.fromJson(Map<String, dynamic> json) = _$_Reviews.fromJson;

  @override
  @protected
  @JsonKey(name: 'items')
  List<ReviewsItem> get rawItems;
  @override
  String get nextToken;
  @override // ignore: always_put_required_named_parameters_first
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ReviewsCopyWith<_Reviews> get copyWith;
}

ReviewsItem _$ReviewsItemFromJson(Map<String, dynamic> json) {
  return _ReviewsItem.fromJson(json);
}

/// @nodoc
class _$ReviewsItemTearOff {
  const _$ReviewsItemTearOff();

// ignore: unused_element
  _ReviewsItem call(
      {@required String id,
      @required String body,
      @required DateTime createdAt,
      @required Reviewer user,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ReviewsItem(
      id: id,
      body: body,
      createdAt: createdAt,
      user: user,
      typename: typename,
    );
  }

// ignore: unused_element
  ReviewsItem fromJson(Map<String, Object> json) {
    return ReviewsItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReviewsItem = _$ReviewsItemTearOff();

/// @nodoc
mixin _$ReviewsItem {
  String get id;
  String get body;
  DateTime get createdAt;
  Reviewer get user;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReviewsItemCopyWith<ReviewsItem> get copyWith;
}

/// @nodoc
abstract class $ReviewsItemCopyWith<$Res> {
  factory $ReviewsItemCopyWith(
          ReviewsItem value, $Res Function(ReviewsItem) then) =
      _$ReviewsItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      Reviewer user,
      @JsonKey(name: '__typename') String typename});

  $ReviewerCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewsItemCopyWithImpl<$Res> implements $ReviewsItemCopyWith<$Res> {
  _$ReviewsItemCopyWithImpl(this._value, this._then);

  final ReviewsItem _value;
  // ignore: unused_field
  final $Res Function(ReviewsItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object createdAt = freezed,
    Object user = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      user: user == freezed ? _value.user : user as Reviewer,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $ReviewerCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $ReviewerCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewsItemCopyWith<$Res>
    implements $ReviewsItemCopyWith<$Res> {
  factory _$ReviewsItemCopyWith(
          _ReviewsItem value, $Res Function(_ReviewsItem) then) =
      __$ReviewsItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      Reviewer user,
      @JsonKey(name: '__typename') String typename});

  @override
  $ReviewerCopyWith<$Res> get user;
}

/// @nodoc
class __$ReviewsItemCopyWithImpl<$Res> extends _$ReviewsItemCopyWithImpl<$Res>
    implements _$ReviewsItemCopyWith<$Res> {
  __$ReviewsItemCopyWithImpl(
      _ReviewsItem _value, $Res Function(_ReviewsItem) _then)
      : super(_value, (v) => _then(v as _ReviewsItem));

  @override
  _ReviewsItem get _value => super._value as _ReviewsItem;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object createdAt = freezed,
    Object user = freezed,
    Object typename = freezed,
  }) {
    return _then(_ReviewsItem(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      user: user == freezed ? _value.user : user as Reviewer,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReviewsItem implements _ReviewsItem {
  const _$_ReviewsItem(
      {@required this.id,
      @required this.body,
      @required this.createdAt,
      @required this.user,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(body != null),
        assert(createdAt != null),
        assert(user != null),
        assert(typename != null),
        assert(typename == "Review");

  factory _$_ReviewsItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsItemFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final DateTime createdAt;
  @override
  final Reviewer user;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ReviewsItem(id: $id, body: $body, createdAt: $createdAt, user: $user, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ReviewsItemCopyWith<_ReviewsItem> get copyWith =>
      __$ReviewsItemCopyWithImpl<_ReviewsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsItemToJson(this);
  }
}

abstract class _ReviewsItem implements ReviewsItem {
  const factory _ReviewsItem(
      {@required String id,
      @required String body,
      @required DateTime createdAt,
      @required Reviewer user,
      @required @JsonKey(name: '__typename') String typename}) = _$_ReviewsItem;

  factory _ReviewsItem.fromJson(Map<String, dynamic> json) =
      _$_ReviewsItem.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  DateTime get createdAt;
  @override
  Reviewer get user;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ReviewsItemCopyWith<_ReviewsItem> get copyWith;
}

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
class _$ReviewerTearOff {
  const _$ReviewerTearOff();

// ignore: unused_element
  _Reviewer call(
      {@required String id,
      @required String name,
      @required String icon,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Reviewer(
      id: id,
      name: name,
      icon: icon,
      typename: typename,
    );
  }

// ignore: unused_element
  Reviewer fromJson(Map<String, Object> json) {
    return Reviewer.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Reviewer = _$ReviewerTearOff();

/// @nodoc
mixin _$Reviewer {
  String get id;
  String get name;
  String get icon;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ReviewerCopyWith<Reviewer> get copyWith;
}

/// @nodoc
abstract class $ReviewerCopyWith<$Res> {
  factory $ReviewerCopyWith(Reviewer value, $Res Function(Reviewer) then) =
      _$ReviewerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String icon,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ReviewerCopyWithImpl<$Res> implements $ReviewerCopyWith<$Res> {
  _$ReviewerCopyWithImpl(this._value, this._then);

  final Reviewer _value;
  // ignore: unused_field
  final $Res Function(Reviewer) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ReviewerCopyWith<$Res> implements $ReviewerCopyWith<$Res> {
  factory _$ReviewerCopyWith(_Reviewer value, $Res Function(_Reviewer) then) =
      __$ReviewerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String icon,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ReviewerCopyWithImpl<$Res> extends _$ReviewerCopyWithImpl<$Res>
    implements _$ReviewerCopyWith<$Res> {
  __$ReviewerCopyWithImpl(_Reviewer _value, $Res Function(_Reviewer) _then)
      : super(_value, (v) => _then(v as _Reviewer));

  @override
  _Reviewer get _value => super._value as _Reviewer;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_Reviewer(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Reviewer implements _Reviewer {
  const _$_Reviewer(
      {@required this.id,
      @required this.name,
      @required this.icon,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(icon != null),
        assert(typename != null),
        assert(typename == "User");

  factory _$_Reviewer.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Reviewer(id: $id, name: $name, icon: $icon, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reviewer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
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
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ReviewerCopyWith<_Reviewer> get copyWith =>
      __$ReviewerCopyWithImpl<_Reviewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewerToJson(this);
  }
}

abstract class _Reviewer implements Reviewer {
  const factory _Reviewer(
      {@required String id,
      @required String name,
      @required String icon,
      @required @JsonKey(name: '__typename') String typename}) = _$_Reviewer;

  factory _Reviewer.fromJson(Map<String, dynamic> json) = _$_Reviewer.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ReviewerCopyWith<_Reviewer> get copyWith;
}

MyReview _$MyReviewFromJson(Map<String, dynamic> json) {
  return _MyReview.fromJson(json);
}

/// @nodoc
class _$MyReviewTearOff {
  const _$MyReviewTearOff();

// ignore: unused_element
  _MyReview call(
      {@required String id,
      @required String body,
      @required DateTime createdAt,
      @required Reviewer user,
      @required @JsonKey(name: 'state') @protected String rawState,
      @required @JsonKey(name: '__typename') String typename}) {
    return _MyReview(
      id: id,
      body: body,
      createdAt: createdAt,
      user: user,
      rawState: rawState,
      typename: typename,
    );
  }

// ignore: unused_element
  MyReview fromJson(Map<String, Object> json) {
    return MyReview.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MyReview = _$MyReviewTearOff();

/// @nodoc
mixin _$MyReview {
  String get id;
  String get body;
  DateTime get createdAt;
  Reviewer get user;
  @JsonKey(name: 'state')
  @protected
  String get rawState;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MyReviewCopyWith<MyReview> get copyWith;
}

/// @nodoc
abstract class $MyReviewCopyWith<$Res> {
  factory $MyReviewCopyWith(MyReview value, $Res Function(MyReview) then) =
      _$MyReviewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      Reviewer user,
      @JsonKey(name: 'state') @protected String rawState,
      @JsonKey(name: '__typename') String typename});

  $ReviewerCopyWith<$Res> get user;
}

/// @nodoc
class _$MyReviewCopyWithImpl<$Res> implements $MyReviewCopyWith<$Res> {
  _$MyReviewCopyWithImpl(this._value, this._then);

  final MyReview _value;
  // ignore: unused_field
  final $Res Function(MyReview) _then;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object createdAt = freezed,
    Object user = freezed,
    Object rawState = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      user: user == freezed ? _value.user : user as Reviewer,
      rawState: rawState == freezed ? _value.rawState : rawState as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $ReviewerCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $ReviewerCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MyReviewCopyWith<$Res> implements $MyReviewCopyWith<$Res> {
  factory _$MyReviewCopyWith(_MyReview value, $Res Function(_MyReview) then) =
      __$MyReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      Reviewer user,
      @JsonKey(name: 'state') @protected String rawState,
      @JsonKey(name: '__typename') String typename});

  @override
  $ReviewerCopyWith<$Res> get user;
}

/// @nodoc
class __$MyReviewCopyWithImpl<$Res> extends _$MyReviewCopyWithImpl<$Res>
    implements _$MyReviewCopyWith<$Res> {
  __$MyReviewCopyWithImpl(_MyReview _value, $Res Function(_MyReview) _then)
      : super(_value, (v) => _then(v as _MyReview));

  @override
  _MyReview get _value => super._value as _MyReview;

  @override
  $Res call({
    Object id = freezed,
    Object body = freezed,
    Object createdAt = freezed,
    Object user = freezed,
    Object rawState = freezed,
    Object typename = freezed,
  }) {
    return _then(_MyReview(
      id: id == freezed ? _value.id : id as String,
      body: body == freezed ? _value.body : body as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      user: user == freezed ? _value.user : user as Reviewer,
      rawState: rawState == freezed ? _value.rawState : rawState as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MyReview extends _MyReview {
  const _$_MyReview(
      {@required this.id,
      @required this.body,
      @required this.createdAt,
      @required this.user,
      @required @JsonKey(name: 'state') @protected this.rawState,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(body != null),
        assert(createdAt != null),
        assert(user != null),
        assert(rawState != null),
        assert(typename != null),
        super._();

  factory _$_MyReview.fromJson(Map<String, dynamic> json) =>
      _$_$_MyReviewFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final DateTime createdAt;
  @override
  final Reviewer user;
  @override
  @JsonKey(name: 'state')
  @protected
  final String rawState;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'MyReview(id: $id, body: $body, createdAt: $createdAt, user: $user, rawState: $rawState, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyReview &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.rawState, rawState) ||
                const DeepCollectionEquality()
                    .equals(other.rawState, rawState)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(rawState) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$MyReviewCopyWith<_MyReview> get copyWith =>
      __$MyReviewCopyWithImpl<_MyReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyReviewToJson(this);
  }
}

abstract class _MyReview extends MyReview {
  const _MyReview._() : super._();
  const factory _MyReview(
      {@required String id,
      @required String body,
      @required DateTime createdAt,
      @required Reviewer user,
      @required @JsonKey(name: 'state') @protected String rawState,
      @required @JsonKey(name: '__typename') String typename}) = _$_MyReview;

  factory _MyReview.fromJson(Map<String, dynamic> json) = _$_MyReview.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  DateTime get createdAt;
  @override
  Reviewer get user;
  @override
  @JsonKey(name: 'state')
  @protected
  String get rawState;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$MyReviewCopyWith<_MyReview> get copyWith;
}
