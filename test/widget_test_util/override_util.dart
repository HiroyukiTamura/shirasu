import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/env_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';

import '../mock_repository/network_image_error.dart';
import '../mock_repository/test_env.dart';

final OverrideUtil kOverrideUtil = OverrideUtil._();

class OverrideUtil {
  OverrideUtil._();

  final _overrideEnvTest = kPrvEnv.overrideWithValue(const EnvRepositoryTestImpl());
  final _overrideNetworkTest = kPrvNetworkRepository
      .overrideWithValue(NetworkImageRepositoryErrorImpl());

  List<Override> createOverrides(List<Override> list) =>
      [_overrideEnvTest, _overrideNetworkTest] + list;
}
