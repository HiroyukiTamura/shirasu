import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:shirasu/repository/secure_storage/secure_storage_repository_impl.dart'
    if (dart.library.html) 'package:shirasu/repository/secure_storage/secure_storage_repository_impl_web.dart';

final kPrvSecureStorageRepository =
    Provider.autoDispose<SecureStorageRepository>(
        (_) => SecureStorageRepository.create());

abstract class SecureStorageRepository {
  factory SecureStorageRepository.create() => getSecureStorageRepository();

  @visibleForOverriding
  static const KEY_EMAIL = 'EMAIL';
  @visibleForOverriding
  static const KEY_PASSWORD = 'PASSWORD';

  Future<void> putEmail(String value);

  Future<void> putPassword(String value);

  Future<String> get email;

  Future<String> get password;
}
