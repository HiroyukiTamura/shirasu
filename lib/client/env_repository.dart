import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

final kPrvEnv = Provider<EnvRepository>(
  (ref) => const EnvRepositoryImpl(),
);

mixin EnvRepository {
  bool get enableNetworkImage;
  bool get enableProgressAnimation;
  bool get enableVideoPlugin;
  bool get enableCrashlytics;
}

class EnvRepositoryImpl with EnvRepository {

  const EnvRepositoryImpl();

  @override
  bool get enableNetworkImage => true;

  @override
  bool get enableProgressAnimation => true;

  @override
  bool get enableVideoPlugin => true;

  @override
  bool get enableCrashlytics => true;
}
