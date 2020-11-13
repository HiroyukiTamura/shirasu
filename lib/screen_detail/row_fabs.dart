import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/screen_detail/content_cell.dart';

class RowFabs extends StatelessWidget {
  const RowFabs({
    Key key,
    @required this.handouts,
  }) : super(key: key);

  final Handouts handouts;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const _Fab(icon: Icons.comment),
        const _Fab(icon: Icons.text_snippet),
        if (handouts.items.isNotEmpty)
          const _Fab(icon: Icons.alarm_add),
        const _Fab(icon: Icons.share),
      ],
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({Key key, this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        onPressed: () {},
        elevation: 0,
        constraints: const BoxConstraints(
          minWidth: 54,
          minHeight: 36,
        ),
        fillColor: Colors.white.withOpacity(.8),
        shape: const CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            size: 24,
            color: Colors.black,
          ),
        ),
      );
}
