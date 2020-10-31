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
          border: Border.all(color: Colors.deepOrange),
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

class BillingBtnThin extends StatelessWidget {

  final String text;

  const BillingBtnThin({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepOrange),
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
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

class BillingBtnMedium extends StatelessWidget {

  final String text;

  const BillingBtnMedium({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.deepOrange),
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
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 8),
      ],
    ),
  );
}