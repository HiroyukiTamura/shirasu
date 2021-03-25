import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import '../widget_test_util/exception.dart';

final kOverrideEmptyHiveAuthRepository =
    kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon());

class HiveAuthRepositoryCommon with HiveAuthRepository {
  HiveAuthRepositoryCommon({this.specAuthData});

  final HiveAuthData specAuthData;

  @override
  Future<void> appendRefreshedToken(ResultTokenRefresh result) =>
      throw UnExpectedException();

  @override
  HiveAuthData get authData => specAuthData ?? (throw UnExpectedException());

  @override
  Future<void> clearAuthData() => throw UnExpectedException();

  @override
  bool get isEmpty => false;

  @override
  bool get maybeExpired => throw UnExpectedException();

  @override
  Future<void> putAuthData(HiveAuthData authData) => throw UnExpectedException();

  @override
  bool get shouldRefresh => throw UnExpectedException();

  @override
  Future<void> updateProfile(UserWithAttributeData authData) async {}
}
