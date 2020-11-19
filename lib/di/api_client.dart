import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/graghql_query.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/model/detail_program_data.dart' show ProgramDetailData;
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
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
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIxOTkzLTExLTE1VDAwOjAwOjAwLjAwMFoiLCJqb2IiOiJJbmZvcm1hdGlvblRlY2hub2xvZ3kiLCJjb3VudHJ5IjoiSlAiLCJwcmVmZWN0dXJlIjoiMTMiLCJmYW1pbHlOYW1lIjoi55Sw5p2RIiwiZ2l2ZW5OYW1lIjoi5rWp5bm4IiwiZmFtaWx5TmFtZVJlYWRpbmciOiIiLCJnaXZlbk5hbWVSZWFkaW5nIjoiIn0sImh0dHBzOi8vc2hpcmFzdS5pby9jdXN0b21lcklkIjoiY3VzX0lFS0RoM0J0UjlOeG5TIiwiaHR0cHM6Ly9zaGlyYXN1LmlvL2Rpc3RyaWJ1dGVkcyI6W10sImh0dHBzOi8vc2hpcmFzdS5pby90ZW5hbnRzIjpbXSwiZ2l2ZW5fbmFtZSI6Ikhpcm95dWtpIiwiZmFtaWx5X25hbWUiOiJUIiwibmlja25hbWUiOiJoaXJvdGFtdTMiLCJuYW1lIjoiSGlyb3l1a2kgVCIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLXhBUlEwZm9KZENBL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2s2ZTZjUkluNzVSWTV6dVNrb0FJRGRWY1FjSEEvczk2LWMvcGhvdG8uanBnIiwibG9jYWxlIjoiamEiLCJ1cGRhdGVkX2F0IjoiMjAyMC0xMS0xNlQxMDo0OTo1Ni4xMjlaIiwiZW1haWwiOiJoaXJvdGFtdTNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOi8vc2hpcmFzdS5hdXRoMC5jb20vIiwic3ViIjoiZ29vZ2xlLW9hdXRoMnwxMDk0MzEyMjg4NTM2MDM1Nzk2ODQiLCJhdWQiOiJreWpUSjVsUTdSVTdtQXllU21YOG5MWWN4VlJ0QTNuQiIsImlhdCI6MTYwNTc5NjI3MiwiZXhwIjoxNjA1ODMyMjcyfQ.MqgAurw0jrH9siCmQ9Px4o51yx4WWuHpMvM14VfAwBH9F8jlO4OWKFC5obSokrZl3UoXI19BQK03FjEMHDYxGZLH_C7Ll7B_-EBJSATlHovszzKzT9uMtB5i-QscBMJtwScZcGrT3oknGZ9csr-OSi-j-_O8uhW5dx0Nxkv9Mv6D7_Bsx3BvtkUkHCJWhcigOEGHtE2qpdhXakb3LVzNcwi3MOeFyP_DzfKBfJqHumA7ruhek4iVcDGLVxyWBBsTumaK1hFI7VRT_wjmwuEVrM28g87JdUNL2Q3tHTWmaVO4NRPaiZXIGftv-asq-1GD1DiN_g-lubhYdXlvHFh2FA';

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
      variables: variables,
    ));

    if (result.hasException) {
      // todo error handle
      print(result.exception);
      final isTokenExpired = result.exception.graphqlErrors.any((it) => it.message.toLowerCase().contains('token has expired'));
      for (final error in result.exception.graphqlErrors) print(error.message);
    }

    return result;
  }

  Future<FeatureProgramData> queryFeaturedProgramsList() async {
    final dateTime = DateTime.now().toUtc();
    final dateTimeNext = dateTime.add(const Duration(days: 7));
    final result = await _query(GraphqlQuery.QUERY_FEATURED_PROGRAMS, variables: {
      'now': dateTime.toIso8601String(),
      'nowPlus7D': dateTimeNext.toIso8601String(),
    });
    return FeatureProgramData.fromJson(result.data);
  }

  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async {
    final variables = nextToken == null ? null : {'nextToken': nextToken};
    final result = await _query(GraphqlQuery.QUERY_NEW_PROGRAMS, variables: variables);
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

  Future<WatchHistoriesData> queryWatchHistory({String nextToken}) async {
    final variable = nextToken == null
        ? null
        : {
            'nextToken': nextToken,
          };
    final result = await _query(GraphqlQuery.QUERY_WATCH_HISTORY, variables: variable);
    return WatchHistoriesData.fromJson(result.data);
  }

  Future<Viewer> queryViewer() async {
    final result = await _query(GraphqlQuery.QUERY_VIEWER);
    return Viewer.fromJson(result.data);
  }
}
