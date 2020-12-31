import 'package:flutter/cupertino.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/dio_client.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/extension.dart';

class ViewModelDetail extends ViewModelBase<ModelDetail> {
  ViewModelDetail(this.id)
      : channelId = UrlUtil.programId2channelId(id),
        super(ModelDetail.initial());

  final _apiClient = ApiClient.instance();
  final _dioClient = DioClient();
  final String id;
  final String channelId;

  @override
  Future<void> initialize() async {
    if (state.prgDataResult is StateSuccess) return;

    state = state.copyWith(prgDataResult: const DetailModelState.loading());
    ModelDetail newState;
    try {
      final data = await Util.wait2<ProgramDetailData, ChannelData>(
          () async => _apiClient.queryProgramDetail(id),
          () async => _apiClient.queryChannelData(channelId));

      newState = state.copyWith(
          prgDataResult: DetailModelState.success(data.item1, data.item2));
    } catch (e) {
      print(e);
      newState = state.copyWith(prgDataResult: const DetailModelState.error());
    }
    setState(newState);
  }

  DetailPrgItem _findAvailableVideoData() {
    final v = state.prgDataResult;
    if (v is StateSuccess) {
      final archivedAt = v.programDetailData.program.archivedAt;

      //todo shouldn't written in DetailProgramData?
      DetailPrgItem detailPrgItem;
      if (archivedAt?.isBefore(DateTime.now()) == true)
        detailPrgItem =
            v.programDetailData.program.videos.items.firstWhereOrNull(
          (it) => it.videoTypeStrict == VideoType.ARCHIVED,
        );

      detailPrgItem ??=
          v.programDetailData.program.videos.items.firstWhereOrNull(
        (it) =>
            it.videoTypeStrict == VideoType.LIVE &&
            it.mediaStatusStrict != MediaStatus.ENDED,
      );

      return detailPrgItem;
    } else
      return null;
  }

  DetailPrgItem _findPreviewArchivedVideoData() {
    final v = state.prgDataResult;
    if (v is StateSuccess)
      //todo shouldn't written in DetailProgramData?
      return v.programDetailData.program.videos.items.firstWhereOrNull(
        (it) => it.videoTypeStrict == VideoType.ARCHIVED && it.isFree,
      );
    else
      return null;
  }

  Future<void> playVideo(bool preview) async {
    final prg =
        preview ? _findPreviewArchivedVideoData() : _findAvailableVideoData();
    if (prg == null) return; // todo handle error

    state = state.copyAsInitialize(prg.urlAvailable, prg.videoTypeStrict);

    String cookie;
    try {
      cookie = await _dioClient.getSignedCookie(prg.id, prg.videoTypeStrict,
          HiveAuthClient.instance().authData.body.idToken);
      debugPrint(cookie);
    } catch (e) {
      print(e); //todo handle error
    }

    if (cookie != null)
      setState(state.copyAsPlay(prg.urlAvailable, prg.videoTypeStrict, cookie));
  }
}
