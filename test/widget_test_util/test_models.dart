import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

class TestModels {
  const TestModels._();

  static const EMPTY_BROAD_CASTINGS = Broadcastings(
    typename: 'SearchableProgramConnection',
    rawItems: [],
  );

  static const EMPTY_NEW_PROGRAMS = NewProgramsData(
    newPrograms: NewPrograms(
      rawItems: [],
      typename: 'SearchableProgramConnection',
    ),
  );

  static const EMPTY_CHANNEL = Channels(
    rawItems: [],
    typename: 'ModelChannelConnection',
  );

  static const EMPTY_VIEWER_USER = ViewerUser(
    rawSubscribedPrograms: [],
    id: '',
    typename: 'User',
  );

  static const FEATURE_PROGRAM_DATA = FeatureProgramData(
    nowBroadcastings: EMPTY_BROAD_CASTINGS,
    comingBroadcastings: EMPTY_BROAD_CASTINGS,
    channels: EMPTY_CHANNEL,
    viewerUser: EMPTY_VIEWER_USER,
  );
}
