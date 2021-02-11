import 'package:shirasu/client/graphql_repository_impl.dart';

import 'graphql_allin.dart';

final kOverrideGraphqlTimeout = kPrvGraphqlRepository
    .overrideWithValue(const GraphQlRepositoryTimeoutImpl());

class GraphQlRepositoryTimeoutImpl extends GraphqlAllin {

  const GraphQlRepositoryTimeoutImpl(): super();

  static const DELAY = Duration(seconds: 15);

  @override
  Future<T> process<T>() async => Future.delayed(DELAY);
}
