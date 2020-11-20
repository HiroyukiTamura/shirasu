// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
class _$CountryDataTearOff {
  const _$CountryDataTearOff();

// ignore: unused_element
  _CountryData call(
      {@required String locale, @required Map<String, String> countries}) {
    return _CountryData(
      locale: locale,
      countries: countries,
    );
  }

// ignore: unused_element
  CountryData fromJson(Map<String, Object> json) {
    return CountryData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryData = _$CountryDataTearOff();

/// @nodoc
mixin _$CountryData {
  String get locale;
  Map<String, String> get countries;

  Map<String, dynamic> toJson();
  $CountryDataCopyWith<CountryData> get copyWith;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
          CountryData value, $Res Function(CountryData) then) =
      _$CountryDataCopyWithImpl<$Res>;
  $Res call({String locale, Map<String, String> countries});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res> implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  final CountryData _value;
  // ignore: unused_field
  final $Res Function(CountryData) _then;

  @override
  $Res call({
    Object locale = freezed,
    Object countries = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed ? _value.locale : locale as String,
      countries: countries == freezed
          ? _value.countries
          : countries as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$CountryDataCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$CountryDataCopyWith(
          _CountryData value, $Res Function(_CountryData) then) =
      __$CountryDataCopyWithImpl<$Res>;
  @override
  $Res call({String locale, Map<String, String> countries});
}

/// @nodoc
class __$CountryDataCopyWithImpl<$Res> extends _$CountryDataCopyWithImpl<$Res>
    implements _$CountryDataCopyWith<$Res> {
  __$CountryDataCopyWithImpl(
      _CountryData _value, $Res Function(_CountryData) _then)
      : super(_value, (v) => _then(v as _CountryData));

  @override
  _CountryData get _value => super._value as _CountryData;

  @override
  $Res call({
    Object locale = freezed,
    Object countries = freezed,
  }) {
    return _then(_CountryData(
      locale: locale == freezed ? _value.locale : locale as String,
      countries: countries == freezed
          ? _value.countries
          : countries as Map<String, String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryData implements _CountryData {
  const _$_CountryData({@required this.locale, @required this.countries})
      : assert(locale != null),
        assert(countries != null);

  factory _$_CountryData.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryDataFromJson(json);

  @override
  final String locale;
  @override
  final Map<String, String> countries;

  @override
  String toString() {
    return 'CountryData(locale: $locale, countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryData &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(countries);

  @override
  _$CountryDataCopyWith<_CountryData> get copyWith =>
      __$CountryDataCopyWithImpl<_CountryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryDataToJson(this);
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData(
      {@required String locale,
      @required Map<String, String> countries}) = _$_CountryData;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$_CountryData.fromJson;

  @override
  String get locale;
  @override
  Map<String, String> get countries;
  @override
  _$CountryDataCopyWith<_CountryData> get copyWith;
}
