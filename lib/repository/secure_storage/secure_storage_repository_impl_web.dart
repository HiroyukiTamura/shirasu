import 'package:shared_preferences/shared_preferences.dart';
import 'package:shirasu/repository/secure_storage/secure_storage_repository.dart';
import 'package:shirasu/repository/secure_storage/secure_storage_repository_impl.dart'
    as stub;

/// shared with [stub.getSecureStorageRepository]
SecureStorageRepository getSecureStorageRepository() =>
    SecureStorageRepositoryImplWeb._instance;

class SecureStorageRepositoryImplWeb with SecureStorageRepository {
  SecureStorageRepositoryImplWeb._();

  static final _instance = SecureStorageRepositoryImplWeb._();

  Future<SharedPreferences> get _pref => SharedPreferences.getInstance();

  @override
  Future<String> get email async {
    final pref = await _pref;
    return pref.getString(SecureStorageRepository.KEY_EMAIL);
  }

  @override
  Future<String> get password async {
    final pref = await _pref;
    return pref.getString(SecureStorageRepository.KEY_PASSWORD);
  }

  @override
  Future<void> putEmail(String value) async {
    final pref = await _pref;
    return pref.setString(SecureStorageRepository.KEY_EMAIL, value);
  }

  @override
  Future<void> putPassword(String value) async {
    final pref = await _pref;
    return pref.setString(SecureStorageRepository.KEY_PASSWORD, value);
  }
}
