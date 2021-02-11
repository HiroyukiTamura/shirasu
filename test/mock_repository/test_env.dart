import 'package:shirasu/env.dart';

class EnvRepositoryTestImpl implements EnvRepository {

  const EnvRepositoryTestImpl();

  @override
  bool get enableNetworkImage => false;
}