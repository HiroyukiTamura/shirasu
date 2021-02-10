import 'package:shirasu/util/exceptions.dart';

import 'graphql_allin.dart';

class GraphQlRepositoryUnauthorizedImpl extends GraphqlAllin {
  GraphQlRepositoryUnauthorizedImpl(this.detectedByTime);

  final bool detectedByTime;

  @override
  Future<T> process<T>() => throw UnauthorizedException(detectedByTime);
}
