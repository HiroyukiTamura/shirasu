import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefecture_data.freezed.dart';
part 'prefecture_data.g.dart';

@freezed
abstract class PrefectureData with _$PrefectureData {
  const factory PrefectureData({
    @required List<Prefecture> prefecture,
  }) = _PrefectureData;

  factory PrefectureData.fromJson(Map<String, dynamic> json) =>
      _$PrefectureDataFromJson(json);


}

@freezed
abstract class Prefecture implements _$Prefecture {

  const factory Prefecture({
    @required @JsonKey(name: 'code') int codeInt,
    @required String name,
  }) = _Prefecture;

  const Prefecture._();

  factory Prefecture.fromJson(Map<String, dynamic> json) =>
      _$PrefectureFromJson(json);

  String get code => codeInt.toString();
}
