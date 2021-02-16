import 'dart:convert';
import 'dart:io';

import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';

import '../resources/assets.gen.dart';
import '../widget_test_util/test_util.dart';

class JsonClient {
  Future<FeatureProgramData> get featureProgramData async {
    final path = TestUtil.fixAssetPath(Assets.json.listFeaturedPrograms);
    final json = await TestUtil.loadJson(path);
    return FeatureProgramData.fromJson(json);
  }

  Future<NewProgramsData> get newProgramsData async {
    final path = TestUtil.fixAssetPath(Assets.json.listNewPrograms);
    final json = await TestUtil.loadJson(path);
    return NewProgramsData.fromJson(json);
  }

  Future<WatchHistoriesData> get watchHistoriesData async {
    final path = TestUtil.fixAssetPath(Assets.json.watchHistory);
    final json = await TestUtil.loadJson(path);
    return WatchHistoriesData.fromJson(json);
  }

  Future<ViewerWrapper> get viewerWrapper async {
    final path = TestUtil.fixAssetPath(Assets.json.viewer);
    final json = await TestUtil.loadJson(path);
    return ViewerWrapper.fromJson(json);
  }

  Future<HiveAuthData> get hiveAuth async {
    final path = TestUtil.fixAssetPath(Assets.json.localstorage);
    final jsonString = await File(path).readAsString();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final authData = AuthData.fromJson(json);
    return HiveAuthData.parse(authData);
  }
}
