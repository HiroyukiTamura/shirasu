import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/secure_storage_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:shirasu/screen_auth/screen_auth_scratch.dart';

final kPrvSecureStorageRepository =
    Provider.autoDispose<SecureStorageRepository>((ref) => SecureStorageRepositoryImpl._instance);

const _kKeyEmail = 'EMAIL';
const _kKeyPASSWORD = 'PASSWORD';

/// must only for ios.
/// must use with [ScreenAuthScratch].
/// the input value is not validated here. must do it on [ScreenAuthScratch].
class SecureStorageRepositoryImpl with SecureStorageRepository {
  @protected
  SecureStorageRepositoryImpl._()
      : assert(defaultTargetPlatform == TargetPlatform.iOS);

  static const _storage = FlutterSecureStorage();

  static final _instance = SecureStorageRepositoryImpl._();

  @override
  Future<String> get email => _storage.read(key: _kKeyEmail);

  @override
  Future<String> get password => _storage.read(key: _kKeyPASSWORD);

  @override
  Future<void> putEmail(String value) async =>
      _storage.write(key: _kKeyEmail, value: value);

  @override
  Future<void> putPassword(String value) async =>
      _storage.write(key: _kKeyPASSWORD, value: value);
}
