
import '../widget_test_util/exception.dart';
import 'graphql_allin.dart';

class GraphQlRepositoryErrorImpl extends GraphqlAllin {

  const GraphQlRepositoryErrorImpl(): super();

  @override
  Future<T> process<T>() => throw ExpectedException();
}
