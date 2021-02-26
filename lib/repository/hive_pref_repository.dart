import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/hive_client.dart';

final kPrvHivePrefRepository = Provider<HivePrefRepository>((ref) => HivePrefRepositoryImpl.instance());

mixin HivePrefRepository {
  bool get isInitialLaunchApp;

  double get playSpeed;

  @Deprecated('currently not implemented')
  int get resolution;

  Future<void> setPlaySpeed(double value);

  @Deprecated('currently not implemented')
  Future<void> setResolution(int value);

  Future<void> setInitialLaunchApp();
}