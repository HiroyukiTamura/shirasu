import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_pref_repository.dart';

final kOverrideHiveEmpty = kPrvHivePrefRepository
    .overrideWithProvider(Provider((ref) => _HiveEmptyPrefRepositoryImpl()));

class _HiveEmptyPrefRepositoryImpl with HivePrefRepository {
  @override
  bool get isInitialLaunchApp => throw UnimplementedError();

  @override
  double get playSpeed => throw UnimplementedError();

  @override
  int get resolution => throw UnimplementedError();

  @override
  Future<void> setInitialLaunchApp() async {}

  @override
  Future<void> setPlaySpeed(double value) => throw UnimplementedError();

  @override
  Future<void> setResolution(int value) => throw UnimplementedError();
}
