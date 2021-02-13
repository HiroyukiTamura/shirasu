import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import '../widget_test_util/exception.dart';

class HiveEmptyAuthRepositoryImpl with HiveAuthRepository {
  @override
  Future<void> appendRefreshedToken(ResultTokenRefresh result) => throw UnExpectedException();

  @override
  HiveAuthData get authData => throw UnExpectedException();

  @override
  Future<void> clearAuthData() => throw UnExpectedException();

  @override
  bool get isEmpty => false;

  @override
  bool get maybeExpired => throw UnExpectedException();

  @override
  Future<void> putAuthData(AuthData authData) => throw UnExpectedException();

  @override
  bool get shouldRefresh => throw UnExpectedException();
}
