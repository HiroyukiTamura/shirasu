import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart' hide Lock;
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/network/auth_user_data_query.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'package:shirasu/model/signed_cookie_result.dart';
import 'package:shirasu/repository/auth_client_interceptor.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/extension.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/util.dart';
import 'package:synchronized/synchronized.dart';
import 'package:shirasu/util/exceptions.dart';

final kPrvDioRepository =
    Provider.autoDispose<DioRepository>((ref) => DioRepositoryImpl._(ref.read));

/// this value may change in the future.
/// it's generated with version of `auth0-spa-js`. Be careful of which version Shirasu uses.
/// @see https://github.com/auth0/auth0-spa-js/blob/11145545ff959245de92d3a4505f38b5ebed3e9c/src/constants.ts#L75
const _kAuth0Version =
    'eyJuYW1lIjoiYXV0aDAtc3BhLWpzIiwidmVyc2lvbiI6IjEuMTMuNiJ9';

class DioRepositoryImpl with DioRepository, _CookieDioManager {
  DioRepositoryImpl._(this._reader);

  final Dio _dio = Dio();

  final Reader _reader;

  static final _noRedirectOption = Options(
    followRedirects: false,
    validateStatus: (status) => status < 400,
  );

  AuthClientInterceptor get _authClientInterceptor =>
      _reader(kPrvAuthClientInterceptor);

  /// @see https://github.com/auth0/auth0-spa-js/blob/4b674b28dc122457e4f1e0bbd71af113e378579d/src/utils.ts#L147
  static String _randomAuth0Str() =>
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_~.'
          .toRandomString(43);

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

  @override
  Future<LoginResult> login2Shirasu(LoginData loginData) async =>
      synchronizedCookie((dio) async {
        final codeVerifier = _randomAuth0Str();
        final urlRedirect = await _queryAuthUrl(dio, codeVerifier);
        final codeAndState =
            await _postAuthUserData(dio, urlRedirect, loginData);
        return _requestOauthToken(dio, codeAndState, codeVerifier);
      });

  Future<AuthUserDataQuery> _postAuthUserData(
      Dio dio, Uri uri, LoginData loginData) async {
    try {
      final response = await dio.postUri(
        uri,
        data: {
          'state': uri.queryParameters['state'],
          'username': loginData.username,
          'password': loginData.password,
          'action': 'default',
        },
        options: _noRedirectOption.merge(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );
      final query = response.headers
          .value(HttpHeaders.locationHeader)
          .toUri()
          .queryParameters;
      return AuthUserDataQuery.fromJson(query);
    } on DioError catch (e) {
      debugPrint(e.request.uri.toString());
      debugPrint(e.request.headers.values.join());
      final queryParams = e.request.uri.queryParameters;
      try {
        debugPrint(AuthUserDataQueryErr.fromJson(queryParams).toString());
      } catch (e) {
        debugPrint(e);
      }
      if (e.response.statusCode == 400)
        throw const UnauthorizedException(false);// throws 400 if email or pass is incorrect
      rethrow;
    }
  }

  Future<LoginResult> _requestOauthToken(
      Dio dio, AuthUserDataQuery data, String codeVerifier) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '${UrlUtil.URL_AUTH_BASE}oauth/token',
      data: jsonEncode({
        'client_id': Util.AUTH0_CLIENT_ID,
        'code': data.code,
        'code_verifier': codeVerifier,
        'grant_type': 'authorization_code',
        'redirect_uri': UrlUtil.URL_AUTH0_CALLBACK,
      }),
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json,
          'Auth0-Client': _kAuth0Version,
        },
      ),
    );
    return LoginResult.fromJson(response.data);
  }

  /// ref: https://github.com/auth0/auth0-spa-js/blob/c2dd91ecee4b490e22552ff8c1c63a21d58a7076/src/Auth0Client.ts#L284
  static Future<Uri> _queryAuthUrl(Dio dio, String codeVerifier) async {
    final codeChallengeBuffer = codeVerifier.toSha256().bytes;
    final codeChallenge = base64Encode(codeChallengeBuffer)
        .replaceAll('+', '-')
        .replaceAll('/', '_')
        .replaceAll('=', '');

    final result = await dio.get(
      '${UrlUtil.URL_AUTH_BASE}authorize',
      queryParameters: {
        'client_id': Util.AUTH0_CLIENT_ID,
        'response_type': 'code',
        'response_mode': 'query',
        'state': _randomAuth0Str().toBase64(),
        'nonce': _randomAuth0Str().toBase64(),
        'scope': 'openid profile email offline_access',
        'code_challenge': codeChallenge,
        'code_challenge_method': 'S256',
        'auth0Client': _kAuth0Version,
        'redirect_uri': UrlUtil.URL_AUTH0_CALLBACK,//must have last slash
      },
      options: _noRedirectOption,
    );

    if (!result.hasRedirectCode) throw ArgumentError.value(result.statusCode);

    return result.redirectUrl(UrlUtil.URL_AUTH_BASE).toUri();
  }
}

extension on Response {
  bool get hasRedirectCode => statusCode.between(300, 399);

  String redirectUrl(String originalUrl) {
    var location = headers.value(HttpHeaders.locationHeader);
    if (location.startsWith('/')) location = location.substring(1);

    final originalUrlFixed =
        originalUrl.endsWith('/') ? originalUrl : '$originalUrl/';

    return location.startsWith('https://') || location.startsWith('http://')
        ? location
        : originalUrlFixed + location;
  }
}

mixin _CookieDioManager {
  static final _locker = Lock();

  Future<LoginResult> synchronizedCookie(
      Future<LoginResult> Function(Dio dio) runner) async {
    if (_locker.locked) throw const SynchronizationException();

    return _locker.synchronized(() async {
      final cookieJar = DefaultCookieJar()
        ..deleteAll(); //must clean. @see https://github.com/flutterchina/cookie_jar/issues/22#issue-645028896
      final cookieManager = CookieManager(cookieJar);
      final dio = Dio()..interceptors.add(cookieManager);
      return runner(dio);
    });
  }
}
