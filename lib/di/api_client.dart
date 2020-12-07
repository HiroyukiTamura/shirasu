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
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIyMDIwLTEyLTA2VDE2OjIzOjAyLjcyNTEwMloiLCJqb2IiOiJBY2FkZW1pYSIsImNvdW50cnkiOiJKUCIsInByZWZlY3R1cmUiOiIxNCIsImZhbWlseU5hbWUiOiLnlLDmnZEiLCJnaXZlbk5hbWUiOiLmtanlubgiLCJmYW1pbHlOYW1lUmVhZGluZyI6IiIsImdpdmVuTmFtZVJlYWRpbmciOiIifSwiaHR0cHM6Ly9zaGlyYXN1LmlvL2N1c3RvbWVySWQiOiJjdXNfSUVLRGgzQnRSOU54blMiLCJodHRwczovL3NoaXJhc3UuaW8vZGlzdHJpYnV0ZWRzIjpbXSwiaHR0cHM6Ly9zaGlyYXN1LmlvL3RlbmFudHMiOltdLCJnaXZlbl9uYW1lIjoiSGlyb3l1a2kiLCJmYW1pbHlfbmFtZSI6IlQiLCJuaWNrbmFtZSI6Imhpcm90YW11MyIsIm5hbWUiOiJIaXJveXVraSBUIiwicGljdHVyZSI6Imh0dHBzOi8vbGg2Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8teEFSUTBmb0pkQ0EvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQU1adXVjazZlNmNSSW43NVJZNXp1U2tvQUlEZFZjUWNIQS9zOTYtYy9waG90by5qcGciLCJsb2NhbGUiOiJqYSIsInVwZGF0ZWRfYXQiOiIyMDIwLTEyLTA2VDE2OjIzOjI0LjU4N1oiLCJlbWFpbCI6Imhpcm90YW11M0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6Ly9zaGlyYXN1LmF1dGgwLmNvbS8iLCJzdWIiOiJnb29nbGUtb2F1dGgyfDEwOTQzMTIyODg1MzYwMzU3OTY4NCIsImF1ZCI6Imt5alRKNWxRN1JVN21BeWVTbVg4bkxZY3hWUnRBM25CIiwiaWF0IjoxNjA3MzIyMzMzLCJleHAiOjE2MDczNTgzMzN9.Qf0Kb4gFPvE1zBJB4L0yg-R2MA7jrJKVpSnKr0JgQgIL1u2zycZ3NpAR2Ldq918ma4Chd_Y7tJoXnfRtgzj50vIgJytkivfIU_zmPWyNvS4AozvFJHzdYJTHHhQI-T1ZW7Ygnvrq2Jat5awLEcCNFRkxXu1ydkzR1s82pSR0iHcqrLLkwpfk-D6Wm2GZ1EToDoJAXQFsOgu1MMGglhI0gOvW2ANA39ZkYj36a6zrdr9axpj8DI0lR-12P83-1xXHEvAGjKtfhvYz_5pB2pnGabta0BhUWFni0j3d0oUYQsgsZcXnvsVs8kDG_hUBZZdhOd1cv0K3zCVMbuQaNpHwDQ';

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
    final result = await _mutate(
      GraphqlQuery.QUERY_UPDATE_USER_WITH_ATTRIBUTE,
      variables: variable.toJson(),
    );
    return UserWithAttributeData.fromJson(result.data);
  }
}
