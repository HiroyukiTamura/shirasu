import 'dart:convert';
import 'dart:io';

import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/list_comments_by_program.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';

import '../resources/assets.gen.dart';
import '../widget_test_util/test_util.dart';

class JsonClient {
  JsonClient._();

  FeatureProgramData mFeatureProgramData;
  NewProgramsData mNewProgramsData;
  WatchHistoriesData mWatchHistoriesData;
  ViewerWrapper mViewerWrapper;
  ChannelData mChannelData;
  HiveAuthData mHiveAuthData;
  ProgramDetailData mProgramDetailData;
  ListCommentsByProgram mListCommentsByProgram;
  ListSubscribedPrograms mListSubscribedPrograms;
  AlgoliaResponse mAlgoliaResponse;

  static final JsonClient instance = JsonClient._();

  Future<void> init() async {
    mFeatureProgramData = await _featureProgramData;
    mNewProgramsData = await _newProgramsData;
    mWatchHistoriesData = await _watchHistoriesData;
    mViewerWrapper = await _viewerWrapper;
    mChannelData = await _channel;
    mHiveAuthData = await _hiveAuth;
    mProgramDetailData = await _programDetail;
    mListCommentsByProgram = await _listCommentsByProgram;
    mListSubscribedPrograms = await _listSubscribedPrograms;
    mAlgoliaResponse = await _algoliaResponse;
  }

  Future<FeatureProgramData> get _featureProgramData async {
    final json = await _loadJson(Assets.json.listFeaturedPrograms);
    return FeatureProgramData.fromJson(json);
  }

  Future<NewProgramsData> get _newProgramsData async {
    final json = await _loadJson(Assets.json.listNewPrograms);
    return NewProgramsData.fromJson(json);
  }

  Future<WatchHistoriesData> get _watchHistoriesData async {
    final json = await _loadJson(Assets.json.watchHistory);
    return WatchHistoriesData.fromJson(json);
  }

  Future<ViewerWrapper> get _viewerWrapper async {
    final json = await _loadJson(Assets.json.viewer);
    return ViewerWrapper.fromJson(json);
  }

  Future<ChannelData> get _channel async {
    final json = await _loadJson(Assets.json.channel);
    return ChannelData.fromJson(json);
  }

  Future<HiveAuthData> get _hiveAuth async {
    final json = await _loadJson(Assets.json.localstorage, dataOnly: false);
    final authData = AuthData.fromJson(json);
    return HiveAuthData.parse(authData);
  }

  Future<ProgramDetailData> get _programDetail async {
    final json = await _loadJson(Assets.json.programDetail);
    return ProgramDetailData.fromJson(json);
  }

  Future<ListCommentsByProgram> get _listCommentsByProgram async {
    final json = await _loadJson(Assets.json.listCommentsByProgram);
    return ListCommentsByProgram.fromJson(json);
  }

  Future<ListSubscribedPrograms> get _listSubscribedPrograms async {
    final json = await _loadJson(Assets.json.listSubscribingPrograms);
    return ListSubscribedPrograms.fromJson(json);
  }

  Future<AlgoliaResponse> get _algoliaResponse async {
    final json = await _loadJson(Assets.json.algoliaResponse, dataOnly: false);
    return AlgoliaResponse.fromJson(json);
  }

  static Future<Map<String, dynamic>> _loadJson(
    String fileName, {
    bool dataOnly = true,
  }) async {
    final path = TestUtil.fixAssetPath(fileName);
    final jsonString = await File(path).readAsString();
    final obj = jsonDecode(jsonString);
    return (dataOnly ? obj['data'] : obj) as Map<String, dynamic>;
  }
}
