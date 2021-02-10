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
import 'package:dartx/dartx.dart';

class GraphQlRepositoryTimeoutImpl with GraphQlRepository {

  static const DELAY = Duration(seconds: 15);

  Future<T> _delayForever<T>() async => Future.delayed(DELAY);

  @override
  Future<CommentItem> postComment({
    Duration commentTime,
    String programId,
    String text,
  }) =>
      _delayForever<CommentItem>();

  @override
  Future<ChannelData> queryChannelData(String channelId, {String nextToken}) =>
      _delayForever<ChannelData>();

  @override
  Future<Comments> queryComment({
    String programId,
    String nextToken,
    Duration beginTime,
    Duration endTime,
    SortDirection sortDirection,
  }) =>
      _delayForever<Comments>();

  @override
  Future<FeatureProgramData> queryFeaturedProgramsList() =>
      _delayForever<FeatureProgramData>();

  @override
  Future<String> queryHandOutUrl(String programId, String handoutId) =>
      _delayForever<String>();

  @override
  Future<NewProgramsData> queryNewProgramsList({String nextToken}) =>
      _delayForever<NewProgramsData>();

  @override
  Future<ProgramDetailData> queryProgramDetail(String itemId) =>
      _delayForever<ProgramDetailData>();

  @override
  Future<ViewerWrapper> queryViewer() => _delayForever<ViewerWrapper>();

  @override
  Future<WatchHistoriesData> queryWatchHistory({
    String nextToken,
    int limit,
  }) =>
      _delayForever<WatchHistoriesData>();

  @override
  Future<UserWithAttributeData> updateUserWithAttr(
          UpdateUserWithAttrVariable variable) =>
      _delayForever<UserWithAttributeData>();
}
