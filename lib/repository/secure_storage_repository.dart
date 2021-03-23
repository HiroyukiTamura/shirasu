mixin SecureStorageRepository {
  Future<void> putEmail(String value);
  Future<void> putPassword(String value);

  Future<String> get email;
  Future<String> get password;
}