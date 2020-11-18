import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileTitle extends StatelessWidget {

  const ListTileTitle({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          height: 1,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
}