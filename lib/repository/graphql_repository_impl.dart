import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/model/graphql/remove_review_data.dart';
import 'package:shirasu/model/graphql/review.dart';
import 'package:shirasu/repository/graghql_query.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
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
import 'package:dartx/dartx.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/repository/logger_repository.dart';
import 'package:shirasu/extension.dart';

final kPrvGraphqlRepository = Provider.autoDispose<GraphQlRepository>(
    (ref) => GraphQlRepositoryImpl.instance(ref.read));

/// todo operation name?
class GraphQlRepositoryImpl with GraphQlRepository {
  GraphQlRepositoryImpl._(this._reader) {
    _graphQlClient = _createClient();
  }

  factory GraphQlRepositoryImpl.instance(Reader reader) =>
      GraphQlRepositoryImpl._(reader);

  GraphQLClient _graphQlClient;

  final Reader _reader;

  LoggerRepository get _logger => _reader(kPrvLogger);

  HiveAuthRepository get _hiveAuthRepository => _reader(kPrvHiveAuthRepository);

  static Future<void> openHiveStore() async => HiveStore.open();

  GraphQLClient _createClient() {
    final link = Link.from([
      AuthLink(
        getToken: () => _hiveAuthRepository.authData?.body?.idToken,
      ),
      HttpLink(
        UrlUtil.URL_GRAPHQL,
        defaultHeaders: {
          'x-amz-user-agent': 'aws-amplify/2.0.2-apollothree',
        },
      )
    ]);

    final policy = Policies.safe(
      FetchPolicy.networkOnly,
      ErrorPolicy.none,
      CacheRereadPolicy.ignoreAll,
    );

    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
      defaultPolicies: DefaultPolicies(
        query: policy,
        mutate: policy,
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

    _handleError(result);

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

    _handleError(result);

    return result;
  }

  void _handleError(QueryResult result) {
    if (result.hasException) {
      _logger.d(result.exception.toString());

      for (final error in result.exception.graphqlErrors)
        _logger.d(error.message);

      final linkException = result.exception.linkException;
      _logger.d(linkException.toString());

      if (linkException is ServerException) {
        final isTokenExpired = linkException.parsedResponse.errors.any((error) => error.message.toLowerCase()
              .startsWith('token has expired'));
        if (isTokenExpired)
          throw const UnauthorizedException(true);
      } else if (linkException is HttpLinkServerException) {
        _logger.d('statueCode: ${linkException.response.statusCode}');
        if (linkException.response.statusCode.between(400, 499))
          throw const UnauthorizedException(false);
      }

      final statusCode =
          result.context.entry<HttpLinkResponseContext>()?.statusCode;
      _logger.d('statueCode: $statusCode');

      final originalException = linkException?.originalException;
      if (originalException is UnauthorizedException) {
        throw result.exception.linkException.originalException;
      } else if (originalException is DioError) {
        if (originalException.isTimeoutErr)
          throw TimeoutException(originalException.message);
        else if (originalException.response.statusCode == 403) {
          _logger.d(originalException.response.data.toString());
          throw const UnauthorizedException(false);
        }
      }
    }
  }

  @override
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

  @override
  Future<NewProgramsData> queryNewProgramsList({String nextToken}) async {
    final variables = nextToken == null ? null : {'nextToken': nextToken};
    final result =
        await _query(GraphqlQuery.QUERY_NEW_PROGRAMS, variables: variables);
    return NewProgramsData.fromJson(result.data);
  }

  @override
  Future<ProgramDetailData> queryProgramDetail(String itemId) async {
    final result = await _query(GraphqlQuery.QUERY_DETAIL_PROGRAMS, variables: {
      'id': itemId,
    });
    return ProgramDetailData.fromJson(result.data);
  }

  @override
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

  @override
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

  @override
  Future<ViewerWrapper> queryViewer() async {
    final result = await _query(GraphqlQuery.QUERY_VIEWER);
    return ViewerWrapper.fromJson(result.data);
  }

  @override
  Future<UserWithAttributeData> updateUserWithAttr(
      UpdateUserWithAttrVariable variable) async {
    final result = await _mutate(
      GraphqlQuery.MUTATE_UPDATE_USER_WITH_ATTRIBUTE,
      variables: variable.toJson(),
    );
    return UserWithAttributeData.fromJson(result.data);
  }

  @override
  Future<String> queryHandOutUrl(String programId, String handoutId) async {
    final result = await _mutate(
      GraphqlQuery.MUTATE_HAND_OUT_URL,
      variables: {
        'key': 'private/programs/$programId/handouts/$handoutId',
        'operation': 'getObject',
      },
    );
    return result.data['getSignedUrl'] as String;
  }

  @override
  Future<Comments> queryComment({
    @required String programId,
    @required Duration beginTime,
    @required Duration endTime,
    @required SortDirection sortDirection,
    String nextToken,
  }) async {
    final beginTimeFixed = beginTime.isNegative ? Duration.zero : beginTime;
    final endTimeFixed = beginTime.isNegative ? Duration.zero : endTime;
    final variables = <String, String>{
      'programId': programId,
      'beginTime': beginTimeFixed.inMilliseconds.toString(),
      'endTime': endTimeFixed.inMilliseconds.toString(),
      'sortDirection': sortDirection.value,
    };
    if (nextToken != null) variables['nextToken'] = nextToken;

    final result =
        await _query(GraphqlQuery.QUERY_COMMENTS, variables: variables);
    return ListCommentsByProgram.fromJson(result.data).comments;
  }

  @override
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
      GraphqlQuery.MUTATE_POST_COMMENT,
      variables: variables,
      operationName: 'PostComment',
    );
    return PostedComment.fromJson(result.data).comment;
  }

  @override
  Future<ListSubscribedPrograms> querySubscribedProgramsList() async {
    final result = await _query(
      GraphqlQuery.QUERY_SUBSCRIPTION_PROGRAM,
      operationName: 'ListSubscribedPrograms',
    );
    return ListSubscribedPrograms.fromJson(result.data);
  }

  @override
  Future<ReviewData> postReview({String programId, String text}) async {
    final result = await _mutate(
      GraphqlQuery.MUTATE_POST_REVIEW,
      variables: {
        'programId': programId,
        'body': text,
      },
    );
    return ReviewData.fromJson(result.data);
  }

  @override
  Future<RemoveReviewData> deleteReview({@required String reviewId}) async {
    final result = await _mutate(
      GraphqlQuery.MUTATE_REMOVE_REVIEW,
      variables: {
        'reviewId': reviewId,
      },
    );
    return RemoveReviewData.fromJson(result.data);
  }
}
