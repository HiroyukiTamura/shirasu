// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HiveSearchHistoryTearOff {
  const _$HiveSearchHistoryTearOff();

// ignore: unused_element
  _HiveSearchHistory call(
      {@required
      @protected
      @HiveField(130)
          List<HiveSearchHistoryItem> itemList}) {
    return _HiveSearchHistory(
      itemList: itemList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveSearchHistory = _$HiveSearchHistoryTearOff();

/// @nodoc
mixin _$HiveSearchHistory {
  @protected
  @HiveField(130)
  List<HiveSearchHistoryItem> get itemList;

  @JsonKey(ignore: true)
  $HiveSearchHistoryCopyWith<HiveSearchHistory> get copyWith;
}

/// @nodoc
abstract class $HiveSearchHistoryCopyWith<$Res> {
  factory $HiveSearchHistoryCopyWith(
          HiveSearchHistory value, $Res Function(HiveSearchHistory) then) =
      _$HiveSearchHistoryCopyWithImpl<$Res>;
  $Res call({@protected @HiveField(130) List<HiveSearchHistoryItem> itemList});
}

/// @nodoc
class _$HiveSearchHistoryCopyWithImpl<$Res>
    implements $HiveSearchHistoryCopyWith<$Res> {
  _$HiveSearchHistoryCopyWithImpl(this._value, this._then);

  final HiveSearchHistory _value;
  // ignore: unused_field
  final $Res Function(HiveSearchHistory) _then;

  @override
  $Res call({
    Object itemList = freezed,
  }) {
    return _then(_value.copyWith(
      itemList: itemList == freezed
          ? _value.itemList
          : itemList as List<HiveSearchHistoryItem>,
    ));
  }
}

/// @nodoc
abstract class _$HiveSearchHistoryCopyWith<$Res>
    implements $HiveSearchHistoryCopyWith<$Res> {
  factory _$HiveSearchHistoryCopyWith(
          _HiveSearchHistory value, $Res Function(_HiveSearchHistory) then) =
      __$HiveSearchHistoryCopyWithImpl<$Res>;
  @override
  $Res call({@protected @HiveField(130) List<HiveSearchHistoryItem> itemList});
}

/// @nodoc
class __$HiveSearchHistoryCopyWithImpl<$Res>
    extends _$HiveSearchHistoryCopyWithImpl<$Res>
    implements _$HiveSearchHistoryCopyWith<$Res> {
  __$HiveSearchHistoryCopyWithImpl(
      _HiveSearchHistory _value, $Res Function(_HiveSearchHistory) _then)
      : super(_value, (v) => _then(v as _HiveSearchHistory));

  @override
  _HiveSearchHistory get _value => super._value as _HiveSearchHistory;

  @override
  $Res call({
    Object itemList = freezed,
  }) {
    return _then(_HiveSearchHistory(
      itemList: itemList == freezed
          ? _value.itemList
          : itemList as List<HiveSearchHistoryItem>,
    ));
  }
}

@protected
@HiveType(typeId: 13)

/// @nodoc
class _$_HiveSearchHistory extends _HiveSearchHistory {
  const _$_HiveSearchHistory(
      {@required @protected @HiveField(130) this.itemList})
      : assert(itemList != null),
        super._();

  @override
  @protected
  @HiveField(130)
  final List<HiveSearchHistoryItem> itemList;

  @override
  String toString() {
    return 'HiveSearchHistory(itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveSearchHistory &&
            (identical(other.itemList, itemList) ||
                const DeepCollectionEquality()
                    .equals(other.itemList, itemList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemList);

  @JsonKey(ignore: true)
  @override
  _$HiveSearchHistoryCopyWith<_HiveSearchHistory> get copyWith =>
      __$HiveSearchHistoryCopyWithImpl<_HiveSearchHistory>(this, _$identity);
}

abstract class _HiveSearchHistory extends HiveSearchHistory {
  const _HiveSearchHistory._() : super._();
  const factory _HiveSearchHistory(
      {@required
      @protected
      @HiveField(130)
          List<HiveSearchHistoryItem> itemList}) = _$_HiveSearchHistory;

  @override
  @protected
  @HiveField(130)
  List<HiveSearchHistoryItem> get itemList;
  @override
  @JsonKey(ignore: true)
  _$HiveSearchHistoryCopyWith<_HiveSearchHistory> get copyWith;
}

/// @nodoc
class _$HiveSearchHistoryItemTearOff {
  const _$HiveSearchHistoryItemTearOff();

// ignore: unused_element
  _HiveSearchHistoryItem call(
      {@required @HiveField(140) String text,
      @required @HiveField(141) DateTime searchedAt}) {
    return _HiveSearchHistoryItem(
      text: text,
      searchedAt: searchedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveSearchHistoryItem = _$HiveSearchHistoryItemTearOff();

/// @nodoc
mixin _$HiveSearchHistoryItem {
  @HiveField(140)
  String get text;
  @HiveField(141)
  DateTime get searchedAt;

  @JsonKey(ignore: true)
  $HiveSearchHistoryItemCopyWith<HiveSearchHistoryItem> get copyWith;
}

/// @nodoc
abstract class $HiveSearchHistoryItemCopyWith<$Res> {
  factory $HiveSearchHistoryItemCopyWith(HiveSearchHistoryItem value,
          $Res Function(HiveSearchHistoryItem) then) =
      _$HiveSearchHistoryItemCopyWithImpl<$Res>;
  $Res call({@HiveField(140) String text, @HiveField(141) DateTime searchedAt});
}

/// @nodoc
class _$HiveSearchHistoryItemCopyWithImpl<$Res>
    implements $HiveSearchHistoryItemCopyWith<$Res> {
  _$HiveSearchHistoryItemCopyWithImpl(this._value, this._then);

  final HiveSearchHistoryItem _value;
  // ignore: unused_field
  final $Res Function(HiveSearchHistoryItem) _then;

  @override
  $Res call({
    Object text = freezed,
    Object searchedAt = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      searchedAt:
          searchedAt == freezed ? _value.searchedAt : searchedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$HiveSearchHistoryItemCopyWith<$Res>
    implements $HiveSearchHistoryItemCopyWith<$Res> {
  factory _$HiveSearchHistoryItemCopyWith(_HiveSearchHistoryItem value,
          $Res Function(_HiveSearchHistoryItem) then) =
      __$HiveSearchHistoryItemCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(140) String text, @HiveField(141) DateTime searchedAt});
}

/// @nodoc
class __$HiveSearchHistoryItemCopyWithImpl<$Res>
    extends _$HiveSearchHistoryItemCopyWithImpl<$Res>
    implements _$HiveSearchHistoryItemCopyWith<$Res> {
  __$HiveSearchHistoryItemCopyWithImpl(_HiveSearchHistoryItem _value,
      $Res Function(_HiveSearchHistoryItem) _then)
      : super(_value, (v) => _then(v as _HiveSearchHistoryItem));

  @override
  _HiveSearchHistoryItem get _value => super._value as _HiveSearchHistoryItem;

  @override
  $Res call({
    Object text = freezed,
    Object searchedAt = freezed,
  }) {
    return _then(_HiveSearchHistoryItem(
      text: text == freezed ? _value.text : text as String,
      searchedAt:
          searchedAt == freezed ? _value.searchedAt : searchedAt as DateTime,
    ));
  }
}

@protected
@HiveType(typeId: 14)

/// @nodoc
class _$_HiveSearchHistoryItem implements _HiveSearchHistoryItem {
  const _$_HiveSearchHistoryItem(
      {@required @HiveField(140) this.text,
      @required @HiveField(141) this.searchedAt})
      : assert(text != null),
        assert(searchedAt != null);

  @override
  @HiveField(140)
  final String text;
  @override
  @HiveField(141)
  final DateTime searchedAt;

  @override
  String toString() {
    return 'HiveSearchHistoryItem(text: $text, searchedAt: $searchedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveSearchHistoryItem &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.searchedAt, searchedAt) ||
                const DeepCollectionEquality()
                    .equals(other.searchedAt, searchedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(searchedAt);

  @JsonKey(ignore: true)
  @override
  _$HiveSearchHistoryItemCopyWith<_HiveSearchHistoryItem> get copyWith =>
      __$HiveSearchHistoryItemCopyWithImpl<_HiveSearchHistoryItem>(
          this, _$identity);
}

abstract class _HiveSearchHistoryItem implements HiveSearchHistoryItem {
  const factory _HiveSearchHistoryItem(
          {@required @HiveField(140) String text,
          @required @HiveField(141) DateTime searchedAt}) =
      _$_HiveSearchHistoryItem;

  @override
  @HiveField(140)
  String get text;
  @override
  @HiveField(141)
  DateTime get searchedAt;
  @override
  @JsonKey(ignore: true)
  _$HiveSearchHistoryItemCopyWith<_HiveSearchHistoryItem> get copyWith;
}
