import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/util/exceptions.dart';

class GraphQlRepositoryUnauthorizedImpl with GraphQlRepository {
  GraphQlRepositoryUnauthorizedImpl(this.detectedByTime);

  final bool detectedByTime;

  @override
  Future<CommentItem> postComment(
          {Duration commentTime, String programId, String text}) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<ChannelData> queryChannelData(String channelId, {String nextToken}) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<Comments> queryComment({
    String programId,
    String nextToken,
    Duration beginTime,
    Duration endTime,
    SortDirection sortDirection,
  }) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<FeatureProgramData> queryFeaturedProgramsList() =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<String> queryHandOutUrl(String programId, String handoutId) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<NewProgramsData> queryNewProgramsList({String nextToken}) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<ProgramDetailData> queryProgramDetail(String itemId) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<ViewerWrapper> queryViewer() =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<WatchHistoriesData> queryWatchHistory({String nextToken, int limit}) =>
      throw UnauthorizedException(detectedByTime);

  @override
  Future<UserWithAttributeData> updateUserWithAttr(
          UpdateUserWithAttrVariable variable) =>
      throw UnauthorizedException(detectedByTime);
}
