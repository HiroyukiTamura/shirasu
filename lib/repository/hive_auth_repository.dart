import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/repository/hive_client.dart';

final kPrvHiveAuthRepository = Provider<HiveAuthRepository>((ref) => HiveAuthRepositoryImpl.instance());

final kPrvHiveAuthUser = Provider<HiveUser>((ref) => ref.watch(kPrvHiveAuthRepository).authData?.body?.decodedToken?.user);

mixin HiveAuthRepository {
  HiveAuthData get authData;

  Future<void> putAuthData(HiveAuthData data);

  Future<void> clearAuthData();

  bool get maybeExpired;

  bool get isEmpty;

  Future<void> appendRefreshedToken(LoginResult result);

  Future<void> updateProfile(UserWithAttributeData data);
}