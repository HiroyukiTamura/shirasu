import 'package:shirasu/client/graphql_repository_impl.dart';

import '../widget_test_util/exception.dart';
import 'graphql_allin.dart';

final kOverrideGraphqlErr = kPrvGraphqlRepository
    .overrideWithValue(const _GraphQlRepositoryErrorImpl());

class _GraphQlRepositoryErrorImpl extends GraphqlAllin {
  const _GraphQlRepositoryErrorImpl() : super();

  @override
  Future<T> process<T>() => throw ExpectedException();
}
