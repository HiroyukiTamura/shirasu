import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/model/network/result_login.dart';

mixin DioRepository {

  Future<String> getSignedCookie(
      String videoId, VideoType videoType, String auth);

  Future<LoginResult> login2Shirasu(LoginData loginData);
}