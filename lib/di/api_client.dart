import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shirasu/model/featured_programs_data.dart';

class ApiClient {
  static const _URL_PROGRAMS =
      'https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql';
  static const _QUERY_PROGRAMS = 'query ListFeaturedPrograms(\$now: String!, \$nowPlus7D: String!) { nowBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {lte: \$now}, broadcastEndAt: {gt: \$now}}, sort: {field: broadcastAt, direction: asc}, limit: 100) { items {  ...DashboardProgram  __typename } __typename } comingBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {gte: \$now, lte: \$nowPlus7D}}, sort: {field: broadcastAt, direction: asc}, limit: 100) { items {  ...DashboardProgram  __typename } __typename } viewerUser { id subscribedPrograms {  ...DashboardProgram  __typename } __typename }}fragment DashboardProgram on Program { broadcastAt channelId id mainTime releasedAt releasedAt tenantId title totalPlayTime viewerPlanType channel { ...DashboardChannel __typename } __typename}fragment DashboardChannel on Channel { id name __typename}';

  static const _DUMMY_AUTH =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIxOTkzLTExLTE1VDAwOjAwOjAwLjAwMFoiLCJqb2IiOiJJbmZvcm1hdGlvblRlY2hub2xvZ3kiLCJjb3VudHJ5IjoiSlAiLCJwcmVmZWN0dXJlIjoiMTMiLCJmYW1pbHlOYW1lIjoi55Sw5p2RIiwiZ2l2ZW5OYW1lIjoi5rWp5bm4IiwiZmFtaWx5TmFtZVJlYWRpbmciOiIiLCJnaXZlbk5hbWVSZWFkaW5nIjoiIn0sImh0dHBzOi8vc2hpcmFzdS5pby9jdXN0b21lcklkIjoiY3VzX0lFS0RoM0J0UjlOeG5TIiwiaHR0cHM6Ly9zaGlyYXN1LmlvL2Rpc3RyaWJ1dGVkcyI6W10sImh0dHBzOi8vc2hpcmFzdS5pby90ZW5hbnRzIjpbXSwiZ2l2ZW5fbmFtZSI6Ikhpcm95dWtpIiwiZmFtaWx5X25hbWUiOiJUIiwibmlja25hbWUiOiJoaXJvdGFtdTMiLCJuYW1lIjoiSGlyb3l1a2kgVCIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLXhBUlEwZm9KZENBL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2s2ZTZjUkluNzVSWTV6dVNrb0FJRGRWY1FjSEEvczk2LWMvcGhvdG8uanBnIiwibG9jYWxlIjoiamEiLCJ1cGRhdGVkX2F0IjoiMjAyMC0xMS0wNFQxMjoxNDowMy40NTRaIiwiZW1haWwiOiJoaXJvdGFtdTNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOi8vc2hpcmFzdS5hdXRoMC5jb20vIiwic3ViIjoiZ29vZ2xlLW9hdXRoMnwxMDk0MzEyMjg4NTM2MDM1Nzk2ODQiLCJhdWQiOiJreWpUSjVsUTdSVTdtQXllU21YOG5MWWN4VlJ0QTNuQiIsImlhdCI6MTYwNDUwMTE0NywiZXhwIjoxNjA0NTM3MTQ3fQ.dYmYd0XLNw-W7iuuCR6Hwi4uRUIxF_NK7D20dykk-_CDQJ47Koj_YhNxSFz26MCOAeT1Dc_eqp_nyGW87EeBXw0Ctgm9y9zVTPCp8WLgMwgFgI_brceoHyjgCredrA_V4CK9hdfimrNbszRpmcD36YxXAMC-dLsLaVKCAeDZSWti-M46zSjYvEENYxz8-j0CvuS7GgDDt2MMF4SvuxQnxWGC-EHkcMLckmvoKF4sVkxZbKkxLVE6zymCOARRFcN49G2zA3j-Oh5gJIayfnC9oWH8fv5Uo7W-QWZQ-HW0684egP2HNmCFj40En0V4gn-UXEa1MTqbYNXbcxvGMZew1w';

  final ValueNotifier<GraphQLClient> _graphQlClient = _createClient();

  static ValueNotifier<GraphQLClient> _createClient() {
    final HttpLink httpLink = HttpLink(
      uri: _URL_PROGRAMS,
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
