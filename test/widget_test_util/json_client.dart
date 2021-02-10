import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';

import '../resources/assets.gen.dart';
import '../widget_test_util/test_util.dart';

class JsonClient {
  Future<FeatureProgramData> get featureProgramData async {
    final json = await TestUtil.loadJson(Assets.json.listFeaturedPrograms);
    return FeatureProgramData.fromJson(json);
  }

  Future<NewProgramsData> get newProgramsData async {
    final json = await TestUtil.loadJson(Assets.json.listNewPrograms);
    return NewProgramsData.fromJson(json);
  }
}
