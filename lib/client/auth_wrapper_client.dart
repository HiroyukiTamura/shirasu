import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/dio_client.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:synchronized/synchronized.dart';

final kPrvAuthClientInterceptor = Provider.autoDispose<AuthClientInterceptor>(
    (ref) => AuthClientInterceptor(ref.read));

//todo file rename
class AuthClientInterceptor {
  AuthClientInterceptor(this._reader);

  final _lock = Lock();

  HiveAuthRepository get _HiveAuthRepository => _reader(kPrvHiveAuthRepository);

  DioClient get _dioClient => _reader(kPrvDioClient);
  final Reader _reader;

  /// @throw [UnauthorizedException]
  void _ensureNotExpired() {
    if (_HiveAuthRepository.maybeExpired) throw const UnauthorizedException(true);
  }

  Future<String> refreshAuthTokenIfNeeded() async =>
      _lock.synchronized(() async {
        _ensureNotExpired();

        final shouldRefresh = _HiveAuthRepository.shouldRefresh;
        if (shouldRefresh == true) {
          final body = _HiveAuthRepository.authData.body;
          final result = await _dioClient.requestRenewToken(
              body.clientId, body.refreshToken);
          await _HiveAuthRepository.appendRefreshedToken(result);
        }

        return _HiveAuthRepository.authData?.body?.idToken;
      });
}
