import 'package:freezed_annotation/freezed_annotation.dart';

part 'lr.freezed.dart';

@freezed
abstract class Lr with _$Lr {
  const factory Lr.left() = _Left;
  const factory Lr.right() = _Right;
}