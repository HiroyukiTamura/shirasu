import 'package:hooks_riverpod/all.dart';

final kPrvEnv = Provider<EnvRepository>(
  (ref) => const EnvRepositoryImpl(),
);

mixin EnvRepository {
  bool get enableNetworkImage;
  bool get enableProgressAnimation;
  bool get enableVideoPlugin;
}

class EnvRepositoryImpl with EnvRepository {

  const EnvRepositoryImpl();

  @override
  bool get enableNetworkImage => true;

  @override
  bool get enableProgressAnimation => true;

  @override
  bool get enableVideoPlugin => true;
}
