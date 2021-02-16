import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'hive_client.dart';

final kPrvHiveAuthRepository = Provider<HiveAuthRepository>((ref) => HiveAuthRepositoryImpl.instance());

final kPrvHiveAuthUser = Provider<HiveUser>((ref) => ref.watch(kPrvHiveAuthRepository).authData?.body?.decodedToken?.user);

mixin HiveAuthRepository {
  HiveAuthData get authData;

  Future<void> putAuthData(AuthData authData);

  Future<void> clearAuthData();

  //todo synchronize??
  bool get shouldRefresh;

  bool get maybeExpired;

  bool get isEmpty;

  Future<void> appendRefreshedToken(ResultTokenRefresh result);
}