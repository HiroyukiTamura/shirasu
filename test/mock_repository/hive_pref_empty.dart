import 'package:shirasu/client/hive_pref_repository.dart';

class HivePrefEmptyRepositoryImpl with HivePrefRepository {

  const HivePrefEmptyRepositoryImpl(this.isInitialLaunchApp);

  @override
  final bool isInitialLaunchApp;

  @override
  double get playSpeed => throw UnimplementedError();

  @override
  int get resolution => throw UnimplementedError();

  @override
  Future<void> setInitialLaunchApp() async {}

  @override
  Future<void> setPlaySpeed(double value) async {}

  @override
  Future<void> setResolution(int value) async {}
}