import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillingBtn extends StatelessWidget {

  final String text;

  const BillingBtn({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow_sharp,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
}