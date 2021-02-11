import '../widget_test_util/test_models.dart';
import 'graphql_common.dart';

class GraphQlRepositoryEmptyImpl extends GraphQlRepositoryCommonImpl {
  GraphQlRepositoryEmptyImpl()
      : super(watchHistoriesData: TestModels.EMPTY_WATCH_HISTORIES_DATA);
}
