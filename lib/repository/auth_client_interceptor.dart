import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/dio_repository_impl.dart';
import 'package:shirasu/repository/dio_repository.dart';
import 'package:shirasu/repository/env_repository.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/secure_storage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/secure_storage_repository_impl.dart';
import 'package:synchronized/synchronized.dart';
import 'package:shirasu/repository/logger_repository.dart';

final kAuthOperationLock = Lock();

final kPrvAuthClientInterceptor = Provider.autoDispose<AuthClientInterceptor>(
    (ref) => AuthClientInterceptor._(ref.read));

class AuthClientInterceptor {
  AuthClientInterceptor._(this._reader);

  HiveAuthRepository get _hiveAuthRepository => _reader(kPrvHiveAuthRepository);

  DioRepository get _dioRepository => _reader(kPrvDioRepository);

  SecureStorageRepository get _secureStorage =>
      _reader(kPrvSecureStorageRepository);

  LoggerRepository get _logger => _reader(kPrvLogger);

  final Reader _reader;

  /// must use under [kAuthOperationLock]
  /// iOS -> try to re login
  Future<void> refreshAuthTokenIfNeeded() async {
    if (!_hiveAuthRepository.maybeExpired) return;

    return _logger.guardFuture(() async {
      if (EnvRepositoryImpl.useScratchAuth) {
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
      } else {
        final localAuthData = HiveAuthRepositoryImpl.instance();
        final authData = localAuthData.authData;
        final result = await _dioRepository.renewToken(
          clientId: authData.body.clientId,
          refreshToken: authData.body.refreshToken,
          audience: authData.body.audience,
        );
        debugPrint(result.toString());
        await localAuthData.appendRefreshedToken(result);
      }
    });
  }
}
