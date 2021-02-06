import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shirasu/client/auth_wrapper_client.dart';
import 'package:shirasu/client/graghql_query.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart'
    show ProgramDetailData;
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/posted_comment.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:dartx/dartx.dart';
import 'package:http/http.dart' as http;

import '../util.dart';

/// todo handle timeout
/// todo operation name?
@immutable
class ApiClient {
  ApiClient._();

  static final ApiClient instance = ApiClient._();

  final GraphQLClient _graphQlClient = _createClient(http.Client());

  static Future<void> openHiveStore() async => HiveStore.open();

  /// todo no need client
  static GraphQLClient _createClient(http.Client client) {
    final httpLink = HttpLink(
      UrlUtil.URL_GRAPHQL,
      defaultHeaders: {
        'x-amz-user-agent': 'aws-amplify/2.0.2-apollothree',
      },
      // httpClient: client,
    );

    final authLink = AuthLink(
      getToken: () async =>
          AuthClientInterceptor.instance.refreshAuthTokenIfNeeded(),
    );

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies.safe(
          FetchPolicy.networkOnly,
          ErrorPolicy.none,
          CacheRereadPolicy.ignoreAll,
        ),
        watchQuery: Policies.safe(
          FetchPolicy.networkOnly,
          ErrorPolicy.none,
          CacheRereadPolicy.ignoreAll,
        ),
      ),
    );
  }

  Future<QueryResult> _query(
    String query, {
    Map<String, dynamic> variables,
    String operationName,
  }) async {
    final result = await _graphQlClient.query(QueryOptions(
      document: gql(query),
      variables: variables ?? {},
      operationName: operationName,
    ));

    _logResultError(result);

    return result;
  }

  Future<QueryResult> _mutate(
    String query, {
    Map<String, dynamic> variables,
    String operationName,
  }) async {
    final result = await _graphQlClient.mutate(MutationOptions(
      document: gql(query),
      variables: variables ?? {},
      operationName: operationName,
    ));

    _logResultError(result);

    return result;
  }

  void _logResultError(QueryResult result) {
    if (result.hasException) {
      print(result.exception);

      for (final error in result.exception.graphqlErrors) print(error.message);

      final linkException = result.exception.linkException;
      debugPrint(linkException.toString());

      if (linkException is ServerException) {
        final statusCode = linkException.parsedResponse.context
            .entry<HttpLinkResponseContext>()
            ?.statusCode;
        debugPrint(statusCode.toString());

        linkException.parsedResponse.errors
            .forEach((it) => debugPrint(it.toString()));
      }

      if (linkException is HttpLinkServerException) {
        debugPrint(linkException.response.statusCode.toString());
        if (linkException.response.statusCode.between(400, 499))
          throw const UnauthorizedException(false);
      }

      final statusCode =
          result.context.entry<HttpLinkResponseContext>()?.statusCode;
      debugPrint(statusCode.toString());

      if (result.exception.linkException.originalException is UnauthorizedException)
        throw result.exception.linkException.originalException;
    }
  }

  Future<FeatureProgramData> queryFeaturedProgramsList() async {
    final dateTime = DateTime.now().toUtc();
    final dateTimeNext = dateTime + 7.days;
    final result =
        await _query(GraphqlQuery.QUERY_FEATURED_PROGRAMS, variables: {
      'now': dateTime.toIso8601String(),
      'nowPlus7D': dateTimeNext.toIso8601String(),
    });
    return FeatureProgramData.fromJson(result.data);
  }

  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async {
    final variables = nextToken == null ? null : {'nextToken': nextToken};
    final result =
        await _query(GraphqlQuery.QUERY_NEW_PROGRAMS, variables: variables);
    return NewProgramsData.fromJson(result.data);
  }

  Future<ProgramDetailData> queryProgramDetail(String itemId) async {
    final result = await _query(GraphqlQuery.QUERY_DETAIL_PROGRAMS, variables: {
      'id': itemId,
    });
    return ProgramDetailData.fromJson(result.data);
  }

  Future<ChannelData> queryChannelData(String channelId,
      {String nextToken}) async {
    final variables = {
      'id': channelId,
      if (nextToken != null) 'nextToken': nextToken
    };
    final result =
        await _query(GraphqlQuery.QUERY_CHANNEL, variables: variables);
    return ChannelData.fromJson(result.data);
  }

  Future<WatchHistoriesData> queryWatchHistory(
      {String nextToken, int limit}) async {
    final variable = nextToken == null
        ? null
        : {
            'nextToken': nextToken,
          };
    final query = GraphqlQuery.genQueryForWatchHistory(limit: limit);
    final result = await _query(query, variables: variable);
    return WatchHistoriesData.fromJson(result.data);
  }

  Future<Viewer> queryViewer() async {
    final result = await _query(GraphqlQuery.QUERY_VIEWER);
    return Viewer.fromJson(result.data);
  }

  Future<UserWithAttributeData> updateUserWithAttr(
      UpdateUserWithAttrVariable variable) async {
    final result = await _mutate(
      GraphqlQuery.QUERY_UPDATE_USER_WITH_ATTRIBUTE,
      variables: variable.toJson(),
    );
    return UserWithAttributeData.fromJson(result.data);
  }

  Future<String> queryHandOutUrl(String programId, String handoutId) async {
    final result = await _mutate(
      GraphqlQuery.QUERY_HAND_OUT_URL,
      variables: {
        'key': 'private/programs/$programId/handouts/$handoutId',
        'operation': 'getObject',
      },
    );
    return result.data['getSignedUrl'] as String;
  }

  Future<Comments> queryComment({
    @required String programId,
    String nextToken,
    @required Duration beginTime,
    @required Duration endTime,
    @required SortDirection sortDirection,
  }) async {
    Map<String, String> variables = {
      'programId': programId,
      'beginTime': beginTime.inMilliseconds.toString(),
      'endTime': endTime.inMilliseconds.toString(),
      'sortDirection': sortDirection.value,
    };
    if (nextToken != null) variables['nextToken'] = nextToken;

    final result =
        await _query(GraphqlQuery.QUERY_COMMENTS, variables: variables);
    return ListCommentsByProgram.fromJson(result.data).comments;
  }

  Future<CommentItem> postComment({
    @required Duration commentTime,
    @required String programId,
    @required String text,
  }) async {
    Util.require(!commentTime.isNegative);
    final variables = {
      'input': {
        'commentTime': commentTime.inMilliseconds,
        'programId': programId,
        'text': text,
      }
    };

    final result = await _mutate(
      GraphqlQuery.QUERY_POST_COMMENT,
      variables: variables,
      operationName: 'PostComment',
    );
    return PostedComment.fromJson(result.data).comment;
  }
}
