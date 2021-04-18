import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/dio_repository_impl.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';

final kOverrideDioTimeout =
    kPrvDioRepository.overrideWithValue(_DioRepositoryTimeOutImpl());

class _DioRepositoryTimeOutImpl with DioRepository {
  @override
  Future<String> getSignedCookie(
          String videoId, VideoType videoType, String auth) =>
      throw DioError(type: DioErrorType.CONNECT_TIMEOUT);

  @override
  Future<LoginResult> login2Shirasu(LoginData loginData) =>
      throw DioError(type: DioErrorType.CONNECT_TIMEOUT);

  @override
  Future<AlgoliaResponse> searchAlgolia({
    @required CancelToken cancelToken,
    @required String query,
    int length,
  }) =>
      throw TimeoutException('');

  @override
  Future<LoginResult> renewToken(
          {String clientId, String refreshToken, String audience}) =>
      throw TimeoutException('');
}
