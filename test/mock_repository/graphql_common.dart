import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/model/graphql/remove_review_data.dart';
import 'package:shirasu/model/graphql/review.dart';
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

class GraphQlRepositoryCommonImpl with GraphQlRepository {

  GraphQlRepositoryCommonImpl({
    this.commentItem,
    this.channelData,
    this.comments,
    this.featureProgramData,
    this.newProgramsData,
    this.programDetailData,
    this.viewerWrapper,
    this.watchHistoriesData,
    this.userWithAttributeData,
    this.listSubscribedPrograms,
    this.reviewData,
    this.removeReviewData,
  });

  static const HANDOUT_URL = 'HANDOUT_URL';

  final CommentItem commentItem;
  final ChannelData channelData;
  final Comments comments;
  final FeatureProgramData featureProgramData;
  final NewProgramsData newProgramsData;
  final ProgramDetailData programDetailData;
  final ViewerWrapper viewerWrapper;
  final WatchHistoriesData watchHistoriesData;
  final UserWithAttributeData userWithAttributeData;
  final ListSubscribedPrograms listSubscribedPrograms;
  final ReviewData reviewData;
  final RemoveReviewData removeReviewData;

  @override
  Future<CommentItem> postComment({
    Duration commentTime,
    String programId,
    String text,
  }) async =>
      commentItem;

  @override
  Future<ChannelData> queryChannelData(String channelId,
          {String nextToken}) async =>
      channelData;

  @override
  Future<Comments> queryComment({
    String programId,
    String nextToken,
    Duration beginTime,
    Duration endTime,
    SortDirection sortDirection,
  }) async =>
      comments;

  @override
  Future<FeatureProgramData> queryFeaturedProgramsList() async =>
      featureProgramData;

  @override
  Future<String> queryHandOutUrl(String programId, String handoutId) async =>
      HANDOUT_URL;

  @override
  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async =>
      newProgramsData;

  @override
  Future<ProgramDetailData> queryProgramDetail(String itemId) async =>
      programDetailData;

  @override
  Future<ViewerWrapper> queryViewer() async => viewerWrapper;

  @override
  Future<WatchHistoriesData> queryWatchHistory(
          {String nextToken, int limit}) async =>
      watchHistoriesData;

  @override
  Future<UserWithAttributeData> updateUserWithAttr(
          UpdateUserWithAttrVariable variable) async =>
      userWithAttributeData;

  @override
  Future<ListSubscribedPrograms> querySubscribedProgramsList() async => listSubscribedPrograms;

  @override
  Future<ReviewData> postReview({@required String programId, @required String text}) async => reviewData;

  @override
  Future<RemoveReviewData> deleteReview({@required String reviewId}) async => removeReviewData;
}
