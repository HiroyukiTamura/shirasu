// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model_edit_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ModelEditReviewTearOff {
  const _$ModelEditReviewTearOff();

// ignore: unused_element
  _ModelEditReview call({String text}) {
    return _ModelEditReview(
      text: text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ModelEditReview = _$ModelEditReviewTearOff();

/// @nodoc
mixin _$ModelEditReview {
  String get text;

  @JsonKey(ignore: true)
  $ModelEditReviewCopyWith<ModelEditReview> get copyWith;
}

/// @nodoc
abstract class $ModelEditReviewCopyWith<$Res> {
  factory $ModelEditReviewCopyWith(
          ModelEditReview value, $Res Function(ModelEditReview) then) =
      _$ModelEditReviewCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$ModelEditReviewCopyWithImpl<$Res>
    implements $ModelEditReviewCopyWith<$Res> {
  _$ModelEditReviewCopyWithImpl(this._value, this._then);

  final ModelEditReview _value;
  // ignore: unused_field
  final $Res Function(ModelEditReview) _then;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$ModelEditReviewCopyWith<$Res>
    implements $ModelEditReviewCopyWith<$Res> {
  factory _$ModelEditReviewCopyWith(
          _ModelEditReview value, $Res Function(_ModelEditReview) then) =
      __$ModelEditReviewCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$ModelEditReviewCopyWithImpl<$Res>
    extends _$ModelEditReviewCopyWithImpl<$Res>
    implements _$ModelEditReviewCopyWith<$Res> {
  __$ModelEditReviewCopyWithImpl(
      _ModelEditReview _value, $Res Function(_ModelEditReview) _then)
      : super(_value, (v) => _then(v as _ModelEditReview));

  @override
  _ModelEditReview get _value => super._value as _ModelEditReview;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_ModelEditReview(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_ModelEditReview extends _ModelEditReview {
  const _$_ModelEditReview({this.text}) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'ModelEditReview(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelEditReview &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$ModelEditReviewCopyWith<_ModelEditReview> get copyWith =>
      __$ModelEditReviewCopyWithImpl<_ModelEditReview>(this, _$identity);
}

abstract class _ModelEditReview extends ModelEditReview {
  const _ModelEditReview._() : super._();
  const factory _ModelEditReview({String text}) = _$_ModelEditReview;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$ModelEditReviewCopyWith<_ModelEditReview> get copyWith;
}
