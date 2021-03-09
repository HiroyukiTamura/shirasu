import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';

mixin GraphQlRepository {

  static const TIMEOUT = Duration(seconds: 10);

  Future<ListSubscribedPrograms> querySubscribedProgramsList();

  Future<FeatureProgramData> queryFeaturedProgramsList();

  Future<NewProgramsData> queryNewProgramsList({String nextToken});

  Future<ProgramDetailData> queryProgramDetail(String itemId);

  Future<ChannelData> queryChannelData(String channelId,
      {String nextToken});

  Future<WatchHistoriesData> queryWatchHistory(
      {String nextToken, int limit});

  Future<ViewerWrapper> queryViewer();

  Future<UserWithAttributeData> updateUserWithAttr(
      UpdateUserWithAttrVariable variable);

  Future<String> queryHandOutUrl(String programId, String handoutId);

  Future<Comments> queryComment({
    @required String programId,
    @required Duration beginTime,
    @required Duration endTime,
    @required SortDirection sortDirection,
    String nextToken,
  });

  Future<CommentItem> postComment({
    @required Duration commentTime,
    @required String programId,
    @required String text,
  });
}