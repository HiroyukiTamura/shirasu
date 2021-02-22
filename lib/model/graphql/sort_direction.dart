import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_direction.freezed.dart';

@freezed
abstract class SortDirection with _$SortDirection {
  const factory SortDirection.asc() = _Asc;

  const factory SortDirection.desc() = _Desc;

  const SortDirection._();

  String get value => when(asc: () => 'ASC', desc: () => 'DESC');
}
