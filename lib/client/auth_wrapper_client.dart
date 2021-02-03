import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/util/exceptions.dart';

class AuthClientInterceptor {

  const AuthClientInterceptor._();

  static const AuthClientInterceptor instance = AuthClientInterceptor._();

  /// @throw [AuthExpiredException]
  void ensureNotExpired() {
    if (HiveAuthClient.instance().maybeExpired)
      throw AuthExpiredException();
  }

  Future<void> refreshAuthTokenIfNeeded() async {
    final shouldRefresh = HiveAuthClient.instance().shouldRefresh;
    if (!shouldRefresh)
      return;

    final body = HiveAuthClient.instance().authData.body;
    final result = await DioClient.instance.requestRenewToken(body.clientId, body.refreshToken);
    await HiveAuthClient.instance().appendRefreshedToken(result);
  }
}