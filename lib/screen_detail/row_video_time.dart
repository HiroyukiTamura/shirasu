import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/content_cell.dart';

class RowVideoTime extends StatelessWidget {

  final String text;

  const RowVideoTime({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCell(
      child: Text(
        text,
        style: TextStyle(
          color: Styles.colorTextSub,
          fontSize: 13,
        ),
      ),
    );
}