import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/player_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/dio_client.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';
import 'package:shirasu/viewmodel/base/viewmodel_base.dart';
import 'package:shirasu/viewmodel/detail/detail_api_notifer.dart';

part 'viewmodel_detail.freezed.dart';

class ViewModelDetail extends DisposableChangeNotifier with ViewModelBase {
  ViewModelDetail(this.id, this.detailApiNotifier) : super();

  final _apiClient = ApiClient(Client());
  final _dioClient = DioClient();
  final DetailApiNotifier detailApiNotifier;
  final String id;

  DetailModelState prgDataResult = const DetailModelState.preInitialized();
  PlayOutState playOutState = PlayOutState.initial();

  @override
  Future<void> initialize() async {
    if (!(prgDataResult is PreInitialized)) return;
    //
    // tryNotifyState<DetailModelState1, DetailModelState>(
    //   preTrying: () => prgDataResult = const DetailModelState.loading(),
    //   trying: () async {
    //     final result = await _apiClient.queryProgramDetail(id);
    //     return DetailModelState.success(result);
    //   },
    //   onError: (e) {
    //     print(e);
    //     return const DetailModelState.error();
    //   },
    //   postTrying: (result) => prgDataResult = result,
    // );

    DetailModelState state;
    try {
      notifyIfNotDisposed(
          () => prgDataResult = const DetailModelState.loading());
      final result = await _apiClient.queryProgramDetail(id);
      state = DetailModelState.success(result);
    } catch (e) {
      print(e);
      state = const DetailModelState.error();
    }

    notifyIfNotDisposed(() => prgDataResult = state);
  }

  DetailPrgItem _findAvailableVideoData() {
    final v = prgDataResult;
    if (v is StateSuccess) {
      final archivedAt = v.data.program.archivedAt;

      //todo shouldn't written in DetailProgramData?
      DetailPrgItem detailPrgItem;
      if (archivedAt?.isBefore(DateTime.now()) == true)
        detailPrgItem = v.data.program.videos.items.firstWhere(
            (it) => it.videoTypeStrict == VideoType.ARCHIVED,
            orElse: () => null);

      detailPrgItem ??= v.data.program.videos.items.firstWhere(
          (it) =>
              it.videoTypeStrict == VideoType.LIVE &&
              it.mediaStatusStrict != MediaStatus.ENDED,
          orElse: () => null); // create extension method

      return detailPrgItem;
    } else
      return null;
  }

  Future<void> playVideo() async {
    final prg = _findAvailableVideoData();
    if (prg == null) return; // todo handle error

    playOutState =
        PlayOutState.initialize(prg.urlAvailable, prg.videoTypeStrict);
    notifyListeners();

    String cookie;
    try {
      cookie = await _dioClient.getSignedCookie(
          prg.id, prg.videoTypeStrict, ApiClient.DUMMY_AUTH);
      debugPrint(cookie);
    } catch (e) {
      print(e);
    }

    if (cookie == null) return;

    playOutState =
        PlayOutState.play(prg.urlAvailable, prg.videoTypeStrict, cookie);

    notifyListeners();
  }
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
