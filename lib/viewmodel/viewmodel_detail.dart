import 'package:flutter/cupertino.dart';
import 'package:flutter_playout/player_state.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';

class ViewModelDetail extends ChangeNotifier {
  ViewModelDetail(this.id);

  final _apiClient = ApiClient(Client());
  final String id;

  PrgDetailResultBase prgDataResult;
  PlayOutState playOutState = PlayOutState.initial();

  Future<void> setUpData() async {
    if (prgDataResult is PrgDetailResultSuccess) return;

    try {
      final result = await _apiClient.queryProgramDetail(id);
      prgDataResult = PrgDetailResultSuccess(result);
    } catch (e) {
      print(e);
      prgDataResult = const PrgDetailResultError();
    }
    notifyListeners();
  }


  DetailPrgItem _findAvailableVideoData() {
    final v = prgDataResult;
    if (v is PrgDetailResultSuccess) {
      final archivedAt = v.programDetailData.program.archivedAt;

      //todo shouldn't written in DetailProgramData?
      DetailPrgItem detailPrgItem;
      if (archivedAt?.isAfter(DateTime.now()) == true)
        detailPrgItem = v.programDetailData.program.videos.items.firstWhere(
            (it) => it.videoTypeStrict == VideoType.ARCHIVED,
            orElse: () => null);

      detailPrgItem ??= v.programDetailData.program.videos.items.firstWhere(
          (it) => it.videoTypeStrict == VideoType.LIVE && it.mediaStatusStrict != MediaStatus.ENDED);

      return detailPrgItem;
    } else
      return null;
  }

  void playVideo() {
    final prg = _findAvailableVideoData();
    if (prg == null)
      return; // todo handle error

    playOutState = PlayOutState.play(prg.urlAvailable, prg.videoTypeStrict);
    notifyListeners();
  }
}

abstract class PrgDetailResultBase {
  const PrgDetailResultBase();
}

class PrgDetailResultSuccess extends PrgDetailResultBase {
  PrgDetailResultSuccess(this.programDetailData);

  final ProgramDetailData programDetailData;
}

class PrgDetailResultError extends PrgDetailResultBase {
  const PrgDetailResultError();
}

class PlayOutState {

  const PlayOutState(this.commandedState, this.playerState, this.hlsMediaUrl, this.videoType);

  factory PlayOutState.initial() => const PlayOutState(PlayerCommandedState.PRE_PLAY, PlayerState.PLAYING, null, null);

  factory PlayOutState.play(String hlsMediaUrl, VideoType videoType) => PlayOutState(PlayerCommandedState.POST_PLAY, PlayerState.PLAYING, hlsMediaUrl, videoType);

  final PlayerCommandedState commandedState;
  final PlayerState playerState;
  final String hlsMediaUrl;
  final VideoType videoType;
}

enum PlayerCommandedState {
  PLAY_ERROR, PRE_PLAY, POST_PLAY,
}
