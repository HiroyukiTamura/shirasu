import 'package:freezed_annotation/freezed_annotation.dart';

mixin SecureStorageRepository {

  @visibleForOverriding
  static const KEY_EMAIL = 'EMAIL';
  @visibleForOverriding
  static const KEY_PASSWORD = 'PASSWORD';

  Future<void> putEmail(String value);

  Future<void> putPassword(String value);

  Future<String> get email;

  Future<String> get password;
}
