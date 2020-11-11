import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';

class ViewModelDetail extends ValueNotifier<PrgDetailResultBase> {
  ViewModelDetail(this.id) : super(null);

  final _apiClient = ApiClient(Client());
  final String id;

  Future<void> setUpData() async {
    if (value is PrgDetailResultSuccess) return;

    try {
      final result = await _apiClient.queryProgramDetail(id);
      value = PrgDetailResultSuccess(result);
    } catch (e) {
      print(e);
      value = const PrgDetailResultError();
    }
  }

  DetailPrgItem findVideoData() {
    final v = value;
    if (v is PrgDetailResultSuccess) {
      final archivedAt = v.programDetailData.program.archivedAt;

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
}

abstract class PrgDetailResultBase {
  const PrgDetailResultBase();
}

class PrgDetailResultSuccess extends PrgDetailResultBase {
  const PrgDetailResultSuccess(this.programDetailData);

  final ProgramDetailData programDetailData;
}

class PrgDetailResultError extends PrgDetailResultBase {
  const PrgDetailResultError();
}
