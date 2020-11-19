import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileSeem extends StatelessWidget {

  const ListTileSeem({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => const Padding(
    padding: EdgeInsets.symmetric(vertical: 24),
    child: SizedBox(
        height: 1,
        child: ColoredBox(color: Colors.white24,),
      ),
  );
}