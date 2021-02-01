import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/extension.dart';

part 'prefecture_data.freezed.dart';

part 'prefecture_data.g.dart';

@freezed
abstract class PrefectureData implements _$PrefectureData {
  const factory PrefectureData({
    @required @JsonKey(name: 'prefecture') @protected List<Prefecture> rawPrefecture,
  }) = _PrefectureData;

  factory PrefectureData.fromJson(Map<String, dynamic> json) =>
      _$PrefectureDataFromJson(json);

  const PrefectureData._();

  UnmodifiableListView<Prefecture> get prefecture => rawPrefecture.toUnmodifiable();
}

@freezed
abstract class Prefecture implements _$Prefecture {
  const factory Prefecture({
    @required @JsonKey(name: 'code') @protected int codeInt,
    @required String name,
  }) = _Prefecture;

  const Prefecture._();

  factory Prefecture.fromJson(Map<String, dynamic> json) =>
      _$PrefectureFromJson(json);

  String get code => codeInt.toString();
}
