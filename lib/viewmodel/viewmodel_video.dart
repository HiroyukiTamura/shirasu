import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

part 'viewmodel_video.freezed.dart';

final pVideoViewModel = StateNotifierProvider.autoDispose<VideoViewModel>(
    (ref) => VideoViewModel());

class VideoViewModel extends StateNotifier<VideoModel> {
  VideoViewModel() : super(const VideoModel(currentPosSec: 50, durationSec: 100));

  void toggleVisibility() => state = state.copyWith(
      controllerVisibility: !state.controllerVisibility,
    );

  void seek(double secDiff) {
    //todo seek
  }

  void seekTo(double sec, bool applyVideo) {
    state = state.copyWith(currentPosSec: sec);

    //todo implement
  }

  void play() {
    //todo play
  }

  void pause() {
    //todo pause
  }
}

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    @Default(0) double durationSec,
    @Default(0) double currentPosSec,
    @Default(false) bool isPlaying,
    @Default(false) bool controllerVisibility,
  }) = _VideoModel;
}
