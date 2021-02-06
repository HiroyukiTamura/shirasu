import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:synchronized/synchronized.dart';

class AuthClientInterceptor {
  AuthClientInterceptor._();

  final _lock = Lock();

  static AuthClientInterceptor instance = AuthClientInterceptor._();

  /// @throw [UnauthorizedException]
  void _ensureNotExpired() {
    if (HiveAuthClient.instance().maybeExpired)
      throw const UnauthorizedException(true);
  }

  Future<String> refreshAuthTokenIfNeeded() async =>
      _lock.synchronized(() async {
        _ensureNotExpired();

        final shouldRefresh = HiveAuthClient.instance().shouldRefresh;
        if (shouldRefresh == true) {
          final body = HiveAuthClient.instance().authData.body;
          final result = await DioClient.instance
              .requestRenewToken(body.clientId, body.refreshToken);
          await HiveAuthClient.instance().appendRefreshedToken(result);
        }

        return HiveAuthClient.instance().authData?.body?.idToken;
      });
}
