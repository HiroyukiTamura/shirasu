import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/graghql_query.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart'
    show ProgramDetailData;
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/sort_direction.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

/// todo handle timeout
@immutable
class ApiClient {
  ApiClient._() : _graphQlClient = _createClient(Client());

  factory ApiClient.instance() => _instance ??= ApiClient._();

  static ApiClient _instance;

  final GraphQLClient _graphQlClient;

  static Future<void> openHiveStore() async => HiveStore.open();

  /// todo no need client
  static GraphQLClient _createClient(Client client) {
    final httpLink = HttpLink(
      UrlUtil.URL_GRAPHQL,
      defaultHeaders: {
        'x-amz-user-agent': 'aws-amplify/2.0.2-apollothree',
      },
      // httpClient: LoggerHttpClient(client)
    );

    final authLink = AuthLink(
      getToken: () async => HiveAuthClient.instance().authData.body.idToken,
    );

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies.safe(
          FetchPolicy.networkOnly,
          ErrorPolicy.none,
        ),
        watchQuery: Policies.safe(
          FetchPolicy.networkOnly,
          ErrorPolicy.none,
        ),
      ),
    );
  }

  Future<QueryResult> _query(
    String query, {
    Map<String, dynamic> variables,
  }) async {
    final result = await _graphQlClient.query(QueryOptions(
      document: gql(query),
      variables: variables ?? {},
    ));

    if (result.hasException) {
      // todo error handle
      print(result.exception);
      final isTokenExpired = result.exception.graphqlErrors
          .any((it) => it.message.toLowerCase().contains('token has expired'));
      for (final error in result.exception.graphqlErrors) print(error.message);
    }

    return result;
  }

  Future<QueryResult> _mutate(
    String query, {
    Map<String, dynamic> variables,
  }) async {
    final result = await _graphQlClient.mutate(MutationOptions(
      document: gql(query),
      variables: variables ?? {},
    ));

    if (result.hasException) {
      // todo error handle
      print(result.exception);
      final isTokenExpired = result.exception.graphqlErrors
          .any((it) => it.message.toLowerCase().contains('token has expired'));
      for (final error in result.exception.graphqlErrors) print(error.message);
    }

    return result;
  }

  Future<FeatureProgramData> queryFeaturedProgramsList() async {
    final dateTime = DateTime.now().toUtc();
    final dateTimeNext = dateTime.add(const Duration(days: 7));
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
}
