import 'package:shirasu/model/graphql/channel_data.dart';

import 'graphql_allin.dart';

class GraphQlRepositoryTimeoutImpl extends GraphqlAllin {

  const GraphQlRepositoryTimeoutImpl(): super();

  static const DELAY = Duration(seconds: 15);

  @override
  Future<ChannelData> queryChannelData(String channelId, {String nextToken}) =>
      process();

  @override
  Future<T> process<T>() async => Future.delayed(DELAY);
}
