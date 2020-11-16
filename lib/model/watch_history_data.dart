import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/viewer.dart';

part 'watch_history_data.freezed.dart';
part 'watch_history_data.g.dart';

@freezed
abstract class WatchHistoriesData with _$WatchHistoriesData {
  const factory WatchHistoriesData(
      {@required ViewerUser viewerUser,}) = _WatchHistoriesData;

  factory WatchHistoriesData.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoriesDataFromJson(json);
}

@freezed
abstract class ViewerUserSimple with _$ViewerUserSimple {

  @Implements(BaseUser)
  const factory ViewerUserSimple({
    @required WatchHistories watchHistories,
    @required @JsonKey(name: '__typename') @Assert(
        'typename == "User"') String typename,
  }) = _ViewerUserSimple;

  factory ViewerUserSimple.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserSimpleFromJson(json);
}
