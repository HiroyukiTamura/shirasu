import 'package:hooks_riverpod/hooks_riverpod.dart';

final kPrvEnv = Provider<EnvRepository>(
  (ref) => const EnvRepositoryImpl(),
);

mixin EnvRepository {
  bool get enableNetworkImage;
  bool get enableAnimation;
  bool get enableVideoPlugin;
}

class EnvRepositoryImpl with EnvRepository {

  const EnvRepositoryImpl();

  @override
  bool get enableNetworkImage => true;

  @override
  bool get enableAnimation => true;

  @override
  bool get enableVideoPlugin => true;
}
