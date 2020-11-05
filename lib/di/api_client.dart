import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/logger_http_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';

class ApiClient {

  ApiClient(Client client) : _graphQlClient = _createClient(client);

  static const _URL_PROGRAMS =
      'https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql';
  static const _QUERY_PROGRAMS = 'query ListFeaturedPrograms(\$now: String!, \$nowPlus7D: String!) {  nowBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {lte: \$now}, broadcastEndAt: {gt: \$now}}, sort: {field: broadcastAt, direction: asc}, limit: 100) {    items {      ...DashboardProgram      __typename    }    __typename  }  comingBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {gte: \$now, lte: \$nowPlus7D}}, sort: {field: broadcastAt, direction: asc}, limit: 100) {    items {      ...DashboardProgram      __typename    }    __typename  }  viewerUser {    id    subscribedPrograms {      ...DashboardProgram      __typename    }    __typename  }}fragment DashboardProgram on Program {  broadcastAt  channelId  id  mainTime  releasedAt  releasedAt  tenantId  title  totalPlayTime  viewerPlanType  channel {    ...DashboardChannel    __typename  }  __typename}fragment DashboardChannel on Channel {  id  name  __typename}';

  static const _DUMMY_AUTH =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIxOTkzLTExLTE1VDAwOjAwOjAwLjAwMFoiLCJqb2IiOiJJbmZvcm1hdGlvblRlY2hub2xvZ3kiLCJjb3VudHJ5IjoiSlAiLCJwcmVmZWN0dXJlIjoiMTMiLCJmYW1pbHlOYW1lIjoi55Sw5p2RIiwiZ2l2ZW5OYW1lIjoi5rWp5bm4IiwiZmFtaWx5TmFtZVJlYWRpbmciOiIiLCJnaXZlbk5hbWVSZWFkaW5nIjoiIn0sImh0dHBzOi8vc2hpcmFzdS5pby9jdXN0b21lcklkIjoiY3VzX0lFS0RoM0J0UjlOeG5TIiwiaHR0cHM6Ly9zaGlyYXN1LmlvL2Rpc3RyaWJ1dGVkcyI6W10sImh0dHBzOi8vc2hpcmFzdS5pby90ZW5hbnRzIjpbXSwiZ2l2ZW5fbmFtZSI6Ikhpcm95dWtpIiwiZmFtaWx5X25hbWUiOiJUIiwibmlja25hbWUiOiJoaXJvdGFtdTMiLCJuYW1lIjoiSGlyb3l1a2kgVCIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLXhBUlEwZm9KZENBL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2s2ZTZjUkluNzVSWTV6dVNrb0FJRGRWY1FjSEEvczk2LWMvcGhvdG8uanBnIiwibG9jYWxlIjoiamEiLCJ1cGRhdGVkX2F0IjoiMjAyMC0xMS0wNFQxMjoxNDowMy40NTRaIiwiZW1haWwiOiJoaXJvdGFtdTNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOi8vc2hpcmFzdS5hdXRoMC5jb20vIiwic3ViIjoiZ29vZ2xlLW9hdXRoMnwxMDk0MzEyMjg4NTM2MDM1Nzk2ODQiLCJhdWQiOiJreWpUSjVsUTdSVTdtQXllU21YOG5MWWN4VlJ0QTNuQiIsImlhdCI6MTYwNDU1NDM3MywiZXhwIjoxNjA0NTkwMzczfQ.W4jbQQGBJZNTcKSUKI83LFw1w4POE28x0xJOpqfB-ltPJMRRd4NQGfQy1w-ZrWmN00M_xcrmyeweKo6n09dStmdtvSipeUHGGX9SN9IP4kKSdTuEFXBtc9hYW1lmZ6pk0n92bO-XMLL204GvnzW9NBf6b-haGDzlL1R-vQbxemXiIkvebMt-JX_3PD9LwKl4bPpQgLT01AD7EUjFw_jmT9koJS2nm3nYsJvTBrC1VNmcr8N8iVZcUosW8-XQZtNNhU6o0AJnMraPDnN6BSj-ArYg9tmo6amOa2JORczfIBoorFvxjk2yDeCPZ5uz1HR2lInh5bFLRMOLLa0eN7J15Q';

  final ValueNotifier<GraphQLClient> _graphQlClient;

  static ValueNotifier<GraphQLClient> _createClient(Client client) {
    final HttpLink httpLink = HttpLink(
      uri: _URL_PROGRAMS,
      httpClient: LoggerHttpClient(client)
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => _DUMMY_AUTH,
    );

    final link = authLink.concat(httpLink);

    return ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
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
      ),
    );
  }

  Future<QueryResult> _query(
      String query, {
        Map<String, dynamic> variables,
      }) async {
    final result = await _graphQlClient.value.query(QueryOptions(
      documentNode: gql(query),
      variables: variables,
    ));

    if (result.exception != null) {
      // エラー処理
      print(result.exception);
      for (final error in result.exception.graphqlErrors)
        print(error.message);
    }

    return result;
  }


  Future<FeatureProgramData> queryFeaturedProgramsList() async {
    final dateTime = DateTime.now();
    final dateTimeNext = dateTime.add(const Duration(days: 7));
    final result = await _query(_QUERY_PROGRAMS, variables: {
      'now': dateTime.toIso8601String(),
      'nowPlus7D': dateTimeNext.toIso8601String(),
    });
    return FeatureProgramData.fromJson(result.data as Map<String, dynamic>);
  }
}
