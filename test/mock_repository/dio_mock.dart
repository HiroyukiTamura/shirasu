import 'package:dio/src/cancel_token.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/dio_repository.dart';

import '../widget_test_util/json_client.dart';

class DioRepositoryMock with DioRepository {
  DioRepositoryMock(this.specResp);

  final AlgoliaResponse specResp;

  @override
  Future<String> getSignedCookie(
      String videoId, VideoType videoType, String auth) {
    throw UnimplementedError();
  }

  @override
  Future<LoginResult> login2Shirasu(LoginData loginData) {
    throw UnimplementedError();
  }

  @override
  Future<AlgoliaResponse> searchAlgolia(
          {CancelToken cancelToken, String query, int length}) async =>
      specResp;

  @override
  Future<LoginResult> renewToken({
    String clientId,
    String refreshToken,
    String audience,
  }) async =>
      JsonClient.instance.mLoginResult;
}
