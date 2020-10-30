import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowChannel extends StatelessWidget {
  final String title;
  final String imageUrl;

  const RowChannel({Key key, @required this.title, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 24,
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
}
