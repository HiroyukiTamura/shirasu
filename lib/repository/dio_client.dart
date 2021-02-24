import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'package:shirasu/model/signed_cookie_result.dart';

import 'auth_client_interceptor.dart';
import 'dio_repository.dart';

final kPrvDioRepository =
    Provider.autoDispose<DioRepository>((ref) => DioRepositoryImpl._(ref.read));

class DioRepositoryImpl with DioRepository {
  DioRepositoryImpl._(this._reader);

  final Dio _dio = Dio();

  final Reader _reader;

  AuthClientInterceptor get _authClientInterceptor =>
      _reader(kPrvAuthClientInterceptor);

  @override
  Future<String> getSignedCookie(
      String videoId, VideoType videoType, String auth) async {
    await _authClientInterceptor.refreshAuthTokenIfNeeded();

    final response = await _dio.get<Map<String, dynamic>>(
      UrlUtil.URL_SIGNED_COOKIE,
      queryParameters: {
        'videoId': videoId,
        'type': videoType.when(
          archived: () => 'archive',
          live: () => 'live',
        )
      },
      options: Options(
        headers: {
          'Authorization': auth,
        },
      ),
    );

    final success = SignedCookieResult.fromJson(response.data).ok;
    if (!success) throw Exception('getSignedCookie failed : ${response.data}');

    return response.headers[HttpHeaders.setCookieHeader].map((it) {
      final cookie = Cookie.fromSetCookieValue(it);
      return '${cookie.name}=${cookie.value}';
    }).join('; ');
  }

  /// auth0 API doc: https://auth0.com/docs/tokens/refresh-tokens/use-refresh-tokens
  @override
  Future<ResultTokenRefresh> requestRenewToken(
      String clientId, String refreshToken) async {
    final result = await _dio.post<Map<String, dynamic>>(
      UrlUtil.URL_OAUTH_TOKEN,
      data: {
        'grant_type': 'refresh_token',
        'client_id': clientId,
        'refresh_token': refreshToken,
      },
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
      }),
    );
    return ResultTokenRefresh.fromJson(result.data);
  }
}
