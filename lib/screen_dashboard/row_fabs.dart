import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_dashboard/content_cell.dart';

class RowFabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ContentCell(
        child: Row(
          children: [
            _Fab(icon: Icons.comment),
            _Fab(icon: Icons.text_snippet),
            _Fab(icon: Icons.alarm_add),
            _Fab(icon: Icons.share),
          ],
        ),
      );
}

class _Fab extends StatelessWidget {
  final IconData icon;

  const _Fab({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        onPressed: () {},
        elevation: 0,
        constraints: BoxConstraints(
          minWidth: 54,
          minHeight: 36,
        ),
        fillColor: Colors.white.withOpacity(.1),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            size: 24,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        shape: CircleBorder(),
      );
}
