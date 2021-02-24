import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:dartx/dartx.dart';

import 'graphql_allin.dart';

final kOverrideGraphqlTimeout = kPrvGraphqlRepository
    .overrideWithValue(const GraphQlRepositoryTimeoutImpl());

class GraphQlRepositoryTimeoutImpl extends GraphqlAllin {

  const GraphQlRepositoryTimeoutImpl(): super();

  static Duration get delay => GraphQlRepository.TIMEOUT + 1.seconds;

  @override
  Future<T> process<T>() async => Future.delayed(delay);
}
