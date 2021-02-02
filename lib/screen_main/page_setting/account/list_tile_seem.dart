import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileSeem extends StatelessWidget {
  const ListTileSeem({
    Key key,
    @required this.paddingTop,
    @required this.paddingBtm,
  }) : super(key: key);

  final bool paddingTop;
  final bool paddingBtm;

  static const double SEEM_PADDING = 24;//todo extract to dimen

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: paddingTop ? SEEM_PADDING : 0,
          bottom: paddingBtm ? SEEM_PADDING : 0,
        ),
        child: const SizedBox(
          height: 1,
          child: ColoredBox(
            color: Colors.white24,//todo fix?
          ),
        ),
      );
}
