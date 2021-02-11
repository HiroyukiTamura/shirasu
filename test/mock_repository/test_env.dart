import 'package:shirasu/client/env_repository.dart';

class EnvRepositoryTestImpl implements EnvRepository {
  const EnvRepositoryTestImpl();

  @override
  bool get enableNetworkImage => false;

  @override
  bool get enableProgressAnimation => false;
}
