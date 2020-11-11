import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/content_cell.dart';

class RowVideoTime extends StatelessWidget {
  RowVideoTime({Key key, @required this.broadcastAt, @required this.totalPlayTime})
      : _text = _genText(broadcastAt, totalPlayTime),
        super(key: key);

  final DateTime broadcastAt;
  final int totalPlayTime;
  final String _text;

  @override
  Widget build(BuildContext context) => Text(
    _text,
    style: TextStyle(
      color: Styles.colorTextSub,
      fontSize: 13,
    ),
  );

  /// todo need logic for the video has ended or not
  static String _genText(DateTime broadcastAt, int mainTime) {
    final startStr = DateFormat('yyyy/MM/dd HH:mm').format(broadcastAt);
    final endTime = broadcastAt.add(Duration(seconds: mainTime));
    final endStr = DateFormat('HH:mm').format(endTime);
    String text = '$startStr開始 $endStr終了';
    if (endTime.isAfter(DateTime.now())) text += '予定';
    return text;
  }
}
