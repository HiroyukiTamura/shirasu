import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/graghql_query.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/model/detail_program_data.dart' show ProgramDetailData;
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/model/watch_history_data.dart';

/// todo handle timeout
/// todo can be singleton
@immutable
class ApiClient {
  ApiClient(Client client) : _graphQlClient = _createClient(client);

  static const _URL_PROGRAMS =
      'https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql';

  static const DUMMY_AUTH =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIxOTkzLTExLTE1VDAwOjAwOjAwLjAwMFoiLCJqb2IiOiJJbmZvcm1hdGlvblRlY2hub2xvZ3kiLCJjb3VudHJ5IjoiSlAiLCJwcmVmZWN0dXJlIjoiMTMiLCJmYW1pbHlOYW1lIjoi55Sw5p2RIiwiZ2l2ZW5OYW1lIjoi5rWp5bm4IiwiZmFtaWx5TmFtZVJlYWRpbmciOiIiLCJnaXZlbk5hbWVSZWFkaW5nIjoiIn0sImh0dHBzOi8vc2hpcmFzdS5pby9jdXN0b21lcklkIjoiY3VzX0lON1o1WDZUY01OWFYzIiwiaHR0cHM6Ly9zaGlyYXN1LmlvL2Rpc3RyaWJ1dGVkcyI6W10sImh0dHBzOi8vc2hpcmFzdS5pby90ZW5hbnRzIjpbXSwibmlja25hbWUiOiJoaXJveXVrdGFtdXJhIiwibmFtZSI6Imhpcm95dWt0YW11cmFAZ21haWwuY29tIiwicGljdHVyZSI6Imh0dHBzOi8vcy5ncmF2YXRhci5jb20vYXZhdGFyLzg4OWZlZTk5YjNiNTQyMjg0YTZjNzNkZmE1ZjJlN2ZlP3M9NDgwJnI9cGcmZD1odHRwcyUzQSUyRiUyRmNkbi5hdXRoMC5jb20lMkZhdmF0YXJzJTJGaGkucG5nIiwidXBkYXRlZF9hdCI6IjIwMjAtMTItMDVUMTM6Mjc6MTEuMjk5WiIsImVtYWlsIjoiaGlyb3l1a3RhbXVyYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9zaGlyYXN1LmF1dGgwLmNvbS8iLCJzdWIiOiJhdXRoMHw1ZmFjMjBjMGJmNDZiMjAwNmUxNDM2MzMiLCJhdWQiOiJreWpUSjVsUTdSVTdtQXllU21YOG5MWWN4VlJ0QTNuQiIsImlhdCI6MTYwNzIyOTc4OCwiZXhwIjoxNjA3MjY1Nzg4fQ.E_5hHwJzmzOEuLiZwl2vIancB6JMZQHzpc7qYtOmWZIPM5-WBAw0Hb79ixfZNpNXnsyTgqbUnoKeXmEZI9gMKIgbq2v5lecGm9rmPfLVIyMjUy0a01mUTMqYcjq27CUshP5x1w__bqyersLQp6nfQDrv73EXJwKIVHQWMFiRLZDUkBttIZ8jAHa4gOy7kdH8fbCpXcJ7GcEqs6kDWCPUYdg8O9pZu5P1olIQyryyhsE-xt6tNT3AJaH7jD0Irh5TfJfZ5bGYk1MwiWu2SySXZkVp8OvT5hmli_PuS3cdkl0EBKkwaS0QQMn2EmKboLXG5gktD-o1Y76WRUWCC7f2qw';

  final GraphQLClient _graphQlClient;

  static Future<void> openHiveStore() async => HiveStore.open();

  /// todo no need client
  static GraphQLClient _createClient(Client client) {
    final HttpLink httpLink = HttpLink(
      _URL_PROGRAMS,
      defaultHeaders: {
        'x-amz-user-agent': 'aws-amplify/2.0.2-apollothree',
      },
      // httpClient: LoggerHttpClient(client)
    );

    final authLink = AuthLink(
      getToken: () async => DUMMY_AUTH,
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

  Future<ChannelData> queryChannelData(String channelId) async {
    final result = await _query(GraphqlQuery.QUERY_CHANNEL, variables: {
      'id': channelId,
    });
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
    final result = await _query(
      GraphqlQuery.QUERY_UPDATE_USER_WITH_ATTRIBUTE,
      variables: variable.toJson(),
    );
    return UserWithAttributeData.fromJson(result.data);
  }
}
