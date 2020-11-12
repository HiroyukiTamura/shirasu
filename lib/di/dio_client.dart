import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shirasu/model/signed_cookie_result.dart';
import 'package:shirasu/model/video_type.dart';

class DioClient {
  final Dio _dio = Dio();
  static const _URL_SIGNED_COOKIE =
      'https://video.shirasu.io/get-signed-cookie';

  //todo rename programId => videoId
  Future<String> getSignedCookie(
      String videoId, VideoType videoType, String auth) async {
    final response = await _dio.get<Map<String, dynamic>>(_URL_SIGNED_COOKIE,
        queryParameters: {
          'videoId': videoId,
          'type': _parseVideoType(videoType)
        },
        options: Options(headers: {
          'Authorization': auth,
        }));

    final success = SignedCookieResult.fromJson(response.data).ok;
    if (!success)
      throw Exception('getSignedCookie failed : ${response.data}');

    return response.headers[HttpHeaders.setCookieHeader].map((it) {
      final cookie = Cookie.fromSetCookieValue(it);
      return '${cookie.name}=${cookie.value}';
    }).join('; ');
  }

  static String _parseVideoType(VideoType videoType) {
    switch (videoType) {
      case VideoType.ARCHIVED:
        return 'archive';
      case VideoType.LIVE:
        return 'live';
      default:
        throw Exception('unknown video type $videoType');
    }
  }
}
