import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/screen_detail/padding_row.dart';

class RowFabs extends WidgetItemBase {
  const RowFabs({
    Key key,
    @required this.handouts,
  }) : super(key: key);

  final Handouts handouts;

  /// todo implement
  @override
  Widget build(BuildContext context) => basePadding(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const _Fab(icon: Icons.comment),
          if (handouts.items.isNotEmpty) const _Fab(icon: Icons.text_snippet),
          const _Fab(icon: Icons.alarm_add),
          _Fab(icon: Icons.share, onPressed: () => _onClickShareBtn(),),
        ],
      ),
  );

  Future<void> _onClickShareBtn() async {

  }
}

class _Fab extends StatelessWidget {
  const _Fab({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => RawMaterialButton(
        onPressed: onPressed,
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
