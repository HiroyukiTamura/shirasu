import 'package:flutter/foundation.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/model/graphql/remove_review_data.dart';
import 'package:shirasu/repository/graphql_repository.dart';
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
import 'package:shirasu/model/graphql/review.dart';

abstract class GraphqlAllin implements GraphQlRepository {
  const GraphqlAllin();

  @protected
  Future<T> process<T>();

  @override
  Future<CommentItem> postComment({
    Duration commentTime,
    String programId,
    String text,
  }) async =>
      process<CommentItem>();

  @override
  Future<ChannelData> queryChannelData(
    String channelId, {
    String nextToken,
  }) async =>
      process<ChannelData>();

  @override
  Future<Comments> queryComment({
    String programId,
    String nextToken,
    Duration beginTime,
    Duration endTime,
    SortDirection sortDirection,
  }) async =>
      process<Comments>();

  @override
  Future<FeatureProgramData> queryFeaturedProgramsList() async =>
      process<FeatureProgramData>();

  @override
  Future<String> queryHandOutUrl(String programId, String handoutId) async =>
      process<String>();

  @override
  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async =>
      process<NewProgramsData>();

  @override
  Future<ProgramDetailData> queryProgramDetail(String itemId) async =>
      process<ProgramDetailData>();

  @override
  Future<ViewerWrapper> queryViewer() async => process<ViewerWrapper>();

  @override
  Future<WatchHistoriesData> queryWatchHistory({
    String nextToken,
    int limit,
  }) async =>
      process<WatchHistoriesData>();

  @override
  Future<UserWithAttributeData> updateUserWithAttr(
          UpdateUserWithAttrVariable variable) async =>
      process<UserWithAttributeData>();

  @override
  Future<ListSubscribedPrograms> querySubscribedProgramsList() async =>
      process<ListSubscribedPrograms>();

  @override
  Future<ReviewData> postReview({
    @required String programId,
    @required String text,
  }) async =>
      process<ReviewData>();

  @override
  Future<RemoveReviewData> deleteReview({
    @required String reviewId,
  }) async => process<RemoveReviewData>();
}
