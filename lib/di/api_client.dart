import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/model/detail_program_data.dart' show ProgramDetailData;
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/model/watch_history_data.dart';

/// todo can be singleton
@immutable
class ApiClient {
  ApiClient(Client client) : _graphQlClient = _createClient(client);

  static const _URL_PROGRAMS =
      'https://itvvnowbibekdj7la2nlxgkuva.appsync-api.ap-northeast-1.amazonaws.com/graphql';
  static const _QUERY_FEATURED_PROGRAMS =
      'query ListFeaturedPrograms(\$now: String!, \$nowPlus7D: String!) {  nowBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {lte: \$now}, broadcastEndAt: {gt: \$now}}, sort: {field: broadcastAt, direction: asc}, limit: 100) {    items {      ...DashboardProgram      __typename    }    __typename  }  comingBroadcastings: searchPrograms(filter: {release: {eq: true}, broadcastAt: {gte: \$now, lte: \$nowPlus7D}}, sort: {field: broadcastAt, direction: asc}, limit: 100) {    items {      ...DashboardProgram      __typename    }    __typename  }  viewerUser {    id    subscribedPrograms {      ...DashboardProgram      __typename    }    __typename  }}fragment DashboardProgram on Program {  broadcastAt  channelId  id  mainTime  releasedAt  releasedAt  tenantId  title  totalPlayTime  viewerPlanType  channel {    ...DashboardChannel    __typename  }  __typename}fragment DashboardChannel on Channel {  id  name  __typename}';
  static const _QUERY_NEW_PROGRAMS =
      'query ListNewPrograms(\$nextToken: String) {  newPrograms: searchPrograms(filter: {release: {eq: true}}, sort: {field: createdAt, direction: desc}, limit: 12, nextToken: \$nextToken) {    items {      ...DashboardProgram      __typename    }    nextToken    __typename  }}fragment DashboardProgram on Program {  broadcastAt  channelId  id  mainTime  releasedAt  releasedAt  tenantId  title  totalPlayTime  viewerPlanType  channel {    ...DashboardChannel    __typename  }  __typename}fragment DashboardChannel on Channel {  id  name  __typename}';

  static const _QUERY_DETAIL_PROGRAMS =
      'query GetProgram(\$id: ID!) {  viewer {    name    icon    __typename  }  program: getProgram(id: \$id) {    ...UserPageProgramData    extensions {      ...UserPageLiveExtensionData      __typename    }    channel {      ...UserPageChannelData      __typename    }    handouts(sortDirection: DESC) {      items {        ...UserPageHandoutData        __typename      }      nextToken      __typename    }    videos {      items {        ...UserPageVideoData        __typename      }      nextToken      __typename    }    onetimePlans {      ...UserPageOneTimePlanData      __typename    }    __typename  }}fragment UserPageProgramData on Program {  id  channelId  tenantId  adminComment  adminCommentDisappearAt  broadcastAt  detail  mainTime  previewTime  release  tags  title  totalPlayTime  viewerPlanType  isExtensionChargedToSubscribers  archivedAt  releaseState  shouldArchive  extensions {    ...UserPageLiveExtensionData    __typename  }  __typename}fragment UserPageLiveExtensionData on LiveExtension {  id  extensionTime  oneTimePlanId  oneTimePlan {    ...UserPageOneTimePlanData    __typename  }  __typename}fragment UserPageOneTimePlanData on OneTimePlan {  id  parentPlanType  parentPlanId  productType  productId  name  amount  currency  isPurchasable  viewerPurchasedPlan {    isActive    __typename  }  __typename}fragment UserPageChannelData on Channel {  id  tenantId  name  icon  textOnPurchaseScreen  __typename}fragment UserPageHandoutData on Handout {  id  programId  extensionId  name  createdAt  __typename}fragment UserPageVideoData on Video {  id  videoType  mediaStatus  liveUrl  archiveUrl  __typename}';

  static const _QUERY_CHANNEL = 'query GetChannel(\$id: ID!) {  channel: getChannel(id: \$id) {    ...UserChannelPageChannelData    subscriptionPlan {      ...UserChannelPageSubscriptionPlanData      viewerPurchasedPlan {        isActive        __typename      }      __typename    }    programs(filter: {release: {eq: true}}, sortDirection: DESC, limit: 12) {      items {        ...UserChannelPageProgramData        __typename      }      nextToken      __typename    }    announcements(sortDirection: DESC, filter: {isOpen: {eq: true}}, limit: 5) {      items {        ...TenantChannelAnnouncementsChannelAnnouncementData        __typename      }      nextToken      __typename    }    __typename  }}fragment UserChannelPageChannelData on Channel {  id  name  icon  twitterUrl  facebookUrl  textOnPurchaseScreen  detail  __typename}fragment UserChannelPageSubscriptionPlanData on SubscriptionPlan {  id  amount  currency  isPurchasable  __typename}fragment UserChannelPageProgramData on Program {  id  tenantId  channelId  title  broadcastAt  totalPlayTime  viewerPlanType  __typename}fragment TenantChannelAnnouncementsChannelAnnouncementData on ChannelAnnouncement {  id  isOpen  isSubscriberOnly  title  text  publishedAt  createdAt  updatedAt  __typename}';

  static const _QUERY_WATCH_HISTORY = 'query GetViewer(\$nextToken: String) {  viewerUser: viewerUser {    watchHistories(limit: 5, sortDirection: DESC, nextToken: \$nextToken) {      items {        ...WatchingHistoryPageWatchHistoryData        __typename      }      nextToken      __typename    }    __typename  }}fragment WatchingHistoryPageWatchHistoryData on WatchHistory {  id  lastViewedAt  program {    id    tenantId    channelId    title    detail    broadcastAt    __typename  }  __typename}';

  static const _QUERY_VIEWER = 'query GetViewer {  viewer {    paymentMethods {      ...UserAccountPaymentMethod      __typename    }    authConnections    __typename  }  viewerUser: viewerUser {    ...UserAccountPageUserData    invoiceHistory {      items {        ...UserAccountInvoiceData        __typename      }      nextToken      __typename    }    watchHistories(limit: 3, sortDirection: DESC) {      items {        ...UserAccountPageWatchHistoryData        __typename      }      __typename    }    subscribedChannels {      ...UserAccountSubscribedChannelData      __typename    }    __typename  }}fragment UserAccountPaymentMethod on PaymentMethod {  id  brand  last4  expirationDate  __typename}fragment UserAccountPageUserData on User {  id  name  icon  __typename}fragment UserAccountInvoiceData on Invoice {  id  total  currency  label  createdAt  planType  status  __typename}fragment UserAccountPageWatchHistoryData on WatchHistory {  id  lastViewedAt  program {    id    tenantId    channelId    title    detail    broadcastAt    __typename  }  __typename}fragment UserAccountSubscribedChannelData on SubscribedChannel {  subscribedAt  currentPeriodEndAt  channel {    id    name    icon    __typename  }  isActive  latestInvoiceId  latestInvoice {    id    description    createdAt    planType    status    hostedInvoiceUrl    nextPaymentAttempt    __typename  }  __typename}';

  static const DUMMY_AUTH =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlFUWkJNMEZDUkRZek1UVTJOME13UWpBMlJFVXdSa0V5TVRJeU1VSkdOelUxTXpnNU1ETTFRUSJ9.eyJodHRwczovL3NoaXJhc3UuaW8vcm9sZXMiOlsidXNlciJdLCJodHRwczovL3NoaXJhc3UuaW8vdXNlckF0dHJpYnV0ZSI6eyJiaXJ0aERhdGUiOiIxOTkzLTExLTE1VDAwOjAwOjAwLjAwMFoiLCJqb2IiOiJJbmZvcm1hdGlvblRlY2hub2xvZ3kiLCJjb3VudHJ5IjoiSlAiLCJwcmVmZWN0dXJlIjoiMTMiLCJmYW1pbHlOYW1lIjoi55Sw5p2RIiwiZ2l2ZW5OYW1lIjoi5rWp5bm4IiwiZmFtaWx5TmFtZVJlYWRpbmciOiIiLCJnaXZlbk5hbWVSZWFkaW5nIjoiIn0sImh0dHBzOi8vc2hpcmFzdS5pby9jdXN0b21lcklkIjoiY3VzX0lFS0RoM0J0UjlOeG5TIiwiaHR0cHM6Ly9zaGlyYXN1LmlvL2Rpc3RyaWJ1dGVkcyI6W10sImh0dHBzOi8vc2hpcmFzdS5pby90ZW5hbnRzIjpbXSwiZ2l2ZW5fbmFtZSI6Ikhpcm95dWtpIiwiZmFtaWx5X25hbWUiOiJUIiwibmlja25hbWUiOiJoaXJvdGFtdTMiLCJuYW1lIjoiSGlyb3l1a2kgVCIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLXhBUlEwZm9KZENBL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2s2ZTZjUkluNzVSWTV6dVNrb0FJRGRWY1FjSEEvczk2LWMvcGhvdG8uanBnIiwibG9jYWxlIjoiamEiLCJ1cGRhdGVkX2F0IjoiMjAyMC0xMS0xNlQxMDo0OTo1Ni4xMjlaIiwiZW1haWwiOiJoaXJvdGFtdTNAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOi8vc2hpcmFzdS5hdXRoMC5jb20vIiwic3ViIjoiZ29vZ2xlLW9hdXRoMnwxMDk0MzEyMjg4NTM2MDM1Nzk2ODQiLCJhdWQiOiJreWpUSjVsUTdSVTdtQXllU21YOG5MWWN4VlJ0QTNuQiIsImlhdCI6MTYwNTY3NTI1NSwiZXhwIjoxNjA1NzExMjU1fQ.tGJzPGEUYs8kOv_6sH65bZ0dDo3JDWxWIkAnSB_gAQMrBNtfsBo7DrbLDmZ8uEoWakaOGxwvNtM5Ac2q9YuzwIhra2fi68lW7MTwOYfRRK2-mzwmshM6C2z4wrEERcKd7Bxa4WHBJVXZIp2ipiJaJhr7bjyIQYAumFAh_ke5hJl5ow9Z7hOuWP9fPQzWKiwGtJTS_RcaN6umJCi_T3nOZ0e59RlN693ayLmnPWgAjhzrg-frfGt1Ch0p7Fn2QTU6wNrPS8wsPqQvdS4iakzzgiWUyU2VKoHxv7RYzlYAaB3Z8QA3hIodb7e2sf4Xce3R8QVwltcNxoaQqTuFShiLTQ';

  final GraphQLClient _graphQlClient;

  static GraphQLClient _createClient(Client client) {
    final HttpLink httpLink = HttpLink(uri: _URL_PROGRAMS, headers: {
      'x-amz-user-agent': 'aws-amplify/2.0.2-apollothree',
    }
        // httpClient: LoggerHttpClient(client)
        );

    final AuthLink authLink = AuthLink(
      getToken: () async => DUMMY_AUTH,
    );

    final link = authLink.concat(httpLink);

    return GraphQLClient(
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
    );
  }

  Future<QueryResult> _query(
    String query, {
    Map<String, dynamic> variables,
  }) async {
    final result = await _graphQlClient.query(QueryOptions(
      documentNode: gql(query),
      variables: variables,
    ));

    if (result.exception != null) {
      // エラー処理
      print(result.exception);
      for (final error in result.exception.graphqlErrors) print(error.message);
    }

    return result;
  }

  Future<FeatureProgramData> queryFeaturedProgramsList() async {
    final dateTime = DateTime.now().toUtc();
    final dateTimeNext = dateTime.add(const Duration(days: 7));
    final result = await _query(_QUERY_FEATURED_PROGRAMS, variables: {
      'now': dateTime.toIso8601String(),
      'nowPlus7D': dateTimeNext.toIso8601String(),
    });
    return FeatureProgramData.fromJson(result.data as Map<String, dynamic>);
  }

  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async {
    final variables = nextToken == null ? null : {'nextToken': nextToken};
    final result = await _query(_QUERY_NEW_PROGRAMS, variables: variables);
    return NewProgramsData.fromJson(result.data as Map<String, dynamic>);
  }

  Future<ProgramDetailData> queryProgramDetail(String itemId) async {
    final result = await _query(_QUERY_DETAIL_PROGRAMS, variables: {
      'id': itemId,
    });
    return ProgramDetailData.fromJson(result.data as Map<String, dynamic>);
  }

  Future<ChannelData> queryChannelData(String channelId) async {
    final result = await _query(_QUERY_CHANNEL, variables: {
      'id': channelId,
    });
    return ChannelData.fromJson(result.data as Map<String, dynamic>);
  }

  Future<WatchHistoriesData> queryWatchHistory({String nextToken}) async {
    final variable = nextToken == null ? null : {
      'nextToken': nextToken,
    };
    final result = await _query(_QUERY_WATCH_HISTORY, variables: variable);
    return WatchHistoriesData.fromJson(result.data as Map<String, dynamic>);
  }

  Future<Viewer> queryViewer() async {
    final result = await _query(_QUERY_VIEWER);
    return Viewer.fromJson(result.data as Map<String, dynamic>);
  }

  static String getThumbnailUrl(String itemId) {
    return 'https://shirasu-storage-product.s3.amazonaws.com/public/programs/$itemId/thumbnail';
  }

  static String getChannelLogoUrl(String channelId) {
    return 'https://shirasu-storage-product.s3.amazonaws.com/public/channels/$channelId/icon';
  }

  static String getChannelHeaderUrl(String channelId) {
    return 'https://shirasu-storage-product.s3.amazonaws.com/public/channels/$channelId/header';
  }
}
