import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/dio_client.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/secure_storage_repository.dart';
import 'package:shirasu/repository/secure_storage_repository_impl.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/util.dart';

final kPrvAuthClientInterceptor = Provider.autoDispose<AuthClientInterceptor>(
    (ref) => AuthClientInterceptor._(ref.read));

class AuthClientInterceptor {
  AuthClientInterceptor._(this._reader);

  HiveAuthRepository get _hiveAuthRepository => _reader(kPrvHiveAuthRepository);

  DioRepository get _dioRepository => _reader(kPrvDioRepository);

  SecureStorageRepository get _secureStorage =>
      _reader(kPrvSecureStorageRepository);

  final Reader _reader;

  /// iOS -> try to re login
  Future<String> refreshAuthTokenIfNeeded() async {
    if (Util.useScratchAuth) {
      if (_hiveAuthRepository.maybeExpired) {
        final email = await _secureStorage.email;
        final pass = await _secureStorage.password;
        if (email?.isNotEmpty == true && pass?.isNotEmpty == true) {
          final loginResult = await _dioRepository.login2Shirasu(LoginData(
            username: email,
            password: pass,
          ));
          await _hiveAuthRepository.putAuthData(HiveAuthData.fromDioLogin(
            loginResult: loginResult,
          ));
        }
      }
    }

    return _hiveAuthRepository.authData?.body?.idToken;
  }
}
