import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import '../widget_test_util/exception.dart';

final kOverrideEmptyHiveAuthRepository =
    kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon());

class HiveAuthRepositoryCommon with HiveAuthRepository {
  HiveAuthRepositoryCommon({this.specAuthData});

  final HiveAuthData specAuthData;

  @override
  Future<void> appendRefreshedToken(LoginResult result) =>
      throw UnExpectedException();

  @override
  HiveAuthData get authData => specAuthData ?? (throw UnExpectedException());

  @override
  Future<void> clearAuthData() => throw UnExpectedException();

  @override
  bool get isEmpty => false;

  @override
  bool get maybeExpired => false;

  @override
  Future<void> putAuthData(HiveAuthData authData) => throw UnExpectedException();

  @override
  Future<void> updateProfile(UserWithAttributeData authData) async {}
}
