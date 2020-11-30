import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/player_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/dio_client.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model_detail.dart';

part 'viewmodel_detail.freezed.dart';

class ViewModelDetail extends StateNotifier<ModelDetail> with ViewModelBase, LocatorMixin, SafeStateSetter<ModelDetail> {
  ViewModelDetail(this.id) : super(ModelDetail.initial());

  final _apiClient = ApiClient(Client());
  final _dioClient = DioClient();
  final String id;

  @override
  Future<void> initialize() async {
    if (state.prgDataResult is StateSuccess) return;

    // DetailModelState state;
    state = state.copyWith(prgDataResult: const DetailModelState.loading());
    ModelDetail newState;
    try {
      final result = await _apiClient.queryProgramDetail(id);
      newState = state.copyWith(prgDataResult: DetailModelState.success(result));
    } catch (e) {
      print(e);
      newState = state.copyWith(prgDataResult: const DetailModelState.error());
    }
    setState(newState);
  }

  DetailPrgItem _findAvailableVideoData() {
    final v = state.prgDataResult;
    if (v is StateSuccess) {
      final archivedAt = v.data.program.archivedAt;

      //todo shouldn't written in DetailProgramData?
      DetailPrgItem detailPrgItem;
      if (archivedAt?.isBefore(DateTime.now()) == true)
        detailPrgItem = v.data.program.videos.items.firstWhere(
            (it) => it.videoTypeStrict == VideoType.ARCHIVED,
            orElse: () => null);//todo create extension

      detailPrgItem ??= v.data.program.videos.items.firstWhere(
          (it) =>
              it.videoTypeStrict == VideoType.LIVE &&
              it.mediaStatusStrict != MediaStatus.ENDED,
          orElse: () => null);

      return detailPrgItem;
    } else
      return null;
  }

  Future<void> playVideo() async {
    final prg = _findAvailableVideoData();
    if (prg == null) return; // todo handle error

    state = state.copyWith(playOutState: PlayOutState.initialize(prg.urlAvailable, prg.videoTypeStrict));

    String cookie;
    try {
      cookie = await _dioClient.getSignedCookie(
          prg.id, prg.videoTypeStrict, ApiClient.DUMMY_AUTH);
      debugPrint(cookie);
    } catch (e) {
      print(e);
    }

    if (cookie == null)
      return;

    final playOutState = PlayOutState.play(prg.urlAvailable, prg.videoTypeStrict, cookie);
    final newState = state.copyWith(playOutState: playOutState);
    setState(newState);
  }
}

@freezed
abstract class DetailModelState with _$DetailModelState {
  const factory DetailModelState.preInitialized() = PreInitialized;

  const factory DetailModelState.loading() = StateLoading;

  const factory DetailModelState.success(ProgramDetailData data) = StateSuccess;

  const factory DetailModelState.error() = StateError;
}

class PlayOutState {
  const PlayOutState._({
    @required this.commandedState,
    @required this.playerState,
    this.hlsMediaUrl,
    this.videoType,
    this.cookie,
  });

  factory PlayOutState.initial() => const PlayOutState._(
        commandedState: PlayerCommandedState.PRE_PLAY,
        playerState: PlayerState.PLAYING,
      );

  factory PlayOutState.initialize(String hlsMediaUrl, VideoType videoType) =>
      PlayOutState._(
        commandedState: PlayerCommandedState.INITIALIZING,
        playerState: PlayerState.PLAYING,
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
      );

  factory PlayOutState.play(
          String hlsMediaUrl, VideoType videoType, String cookie) =>
      PlayOutState._(
        commandedState: PlayerCommandedState.POST_PLAY,
        playerState: PlayerState.PLAYING,
        hlsMediaUrl: hlsMediaUrl,
        videoType: videoType,
        cookie: cookie,
      );

  final PlayerCommandedState commandedState;
  final PlayerState playerState;
  final String hlsMediaUrl;
  final VideoType videoType;
  final String cookie;
}

enum PlayerCommandedState {
  PLAY_ERROR,
  PRE_PLAY,
  POST_PLAY,
  INITIALIZING,
  ERROR,
}
