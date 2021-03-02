import 'package:shirasu/repository/dio_client.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:synchronized/synchronized.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final kPrvAuthClientInterceptor = Provider.autoDispose<AuthClientInterceptor>(
    (ref) => AuthClientInterceptor._(ref.read));

class AuthClientInterceptor {
  AuthClientInterceptor._(this._reader);

  final _lock = Lock();

  HiveAuthRepository get _hiveAuthRepository => _reader(kPrvHiveAuthRepository);

  DioRepository get _dioRepository => _reader(kPrvDioRepository);
  final Reader _reader;

  /// @throw [UnauthorizedException]
  void _ensureNotExpired() {
    if (_hiveAuthRepository.maybeExpired)
      throw const UnauthorizedException(true);
  }

  Future<String> refreshAuthTokenIfNeeded() async =>
      _lock.synchronized(() async {
        _ensureNotExpired();

        final shouldRefresh = _hiveAuthRepository.shouldRefresh;
        if (shouldRefresh == true) {
          final body = _hiveAuthRepository.authData.body;
          final result = await _dioRepository.requestRenewToken(
              body.clientId, body.refreshToken);
          await _hiveAuthRepository.appendRefreshedToken(result);
        }

        return _hiveAuthRepository.authData?.body?.idToken;
      });
}
