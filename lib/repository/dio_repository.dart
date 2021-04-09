import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/network/result_login.dart';

mixin DioRepository {
  Future<String> getSignedCookie(
      String videoId, VideoType videoType, String auth);

  Future<LoginResult> login2Shirasu(LoginData loginData);

  Future<AlgoliaResponse> searchAlgolia({
    @required CancelToken cancelToken,
    @required String query,
    int length,
  });
}
