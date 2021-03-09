import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:dartx/dartx.dart';

part 'list_subscribed_programs.freezed.dart';

part 'list_subscribed_programs.g.dart';

@freezed
abstract class ListSubscribedPrograms with _$ListSubscribedPrograms {
  const factory ListSubscribedPrograms({
    @required ViewerUser viewerUser,
  }) = _ListSubscribedPrograms;

  factory ListSubscribedPrograms.fromJson(Map<String, dynamic> json) =>
      _$ListSubscribedProgramsFromJson(json);
}

@freezed
abstract class ViewerUser with _$ViewerUser implements BaseUser {
  @Assert('typename == "User"')
  const factory ViewerUser({
    @required ProgramCollection subscribedPrograms,
    @required String id,
    @JsonKey(name: '__typename') @required String typename,
  }) = _ViewerUser;

  factory ViewerUser.fromJson(Map<String, dynamic> json) =>
      _$ViewerUserFromJson(json);
}

@freezed
abstract class ProgramCollection with _$ProgramCollection {
  @Assert('typename == "ProgramCollection"')
  const factory ProgramCollection({
    @required @JsonKey(name: 'items') @protected List<Item> rawItems,
    @required @JsonKey(name: '__typename') String typename,
    String nextToken,
  }) = _ProgramCollection;

  factory ProgramCollection.fromJson(Map<String, dynamic> json) =>
      _$ProgramCollectionFromJson(json);

  const ProgramCollection._();

  UnmodifiableListView<Item> get items => rawItems.toUnmodifiable();
}
