import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/screen_dashboard/content_cell.dart';

class RowFabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ContentCell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Fab(icon: Icons.comment,),
            _Fab(icon: Icons.text_snippet,),
            _Fab(icon: Icons.alarm_add,),
            _Fab(icon: Icons.share,),
          ],
        ),
      );
}

class _Fab extends StatelessWidget {

  final IconData icon;

  const _Fab({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Expanded(
        child: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.white.withOpacity(.9),
          mini: true,
          child: Icon(icon),
        ),
      );
}