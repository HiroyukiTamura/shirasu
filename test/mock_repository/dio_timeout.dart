import 'package:dio/dio.dart';
import 'package:shirasu/repository/dio_client.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/result_token_refresh.dart';

final kOverrideDioTimeout = kPrvDioRepository.overrideWithValue(_DioRepositoryTimeOutImpl());

class _DioRepositoryTimeOutImpl with DioRepository {
  @override
  Future<String> getSignedCookie(
          String videoId, VideoType videoType, String auth) =>
      throw DioError(type: DioErrorType.CONNECT_TIMEOUT);

  @override
  Future<ResultTokenRefresh> requestRenewToken(
          String clientId, String refreshToken) =>
      throw DioError(type: DioErrorType.CONNECT_TIMEOUT);
}
