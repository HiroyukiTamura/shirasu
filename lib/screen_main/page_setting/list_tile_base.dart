import 'package:flutter/cupertino.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';

class ListTileBase extends StatelessWidget {
  const ListTileBase({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTileTitle(title: title),
          child,
        ],
      );
}
