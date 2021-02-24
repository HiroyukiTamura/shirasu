import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/util/exceptions.dart';

import 'graphql_allin.dart';

final kOverrideGraphqlUnAuthDetectedByTime = kPrvGraphqlRepository
    .overrideWithValue(_GraphQlRepositoryUnauthorizedImpl(true));

final kOverrideGraphqlUnAuthNotDetectedByTime = kPrvGraphqlRepository
    .overrideWithValue(_GraphQlRepositoryUnauthorizedImpl(false));

class _GraphQlRepositoryUnauthorizedImpl extends GraphqlAllin {
  _GraphQlRepositoryUnauthorizedImpl(this.detectedByTime);

  final bool detectedByTime;

  @override
  Future<T> process<T>() => throw UnauthorizedException(detectedByTime);
}
