import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/dimens.dart';

class ListTileTop extends StatelessWidget {

  const ListTileTop({Key key, @required this.iconUrl, @required this.userName}) : super(key: key);

  final String iconUrl;
  final String userName;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.SETTING_OUTER_MARGIN,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: iconUrl,
            imageBuilder: (context, provider) =>
                CircleAvatar(backgroundImage: provider),
            placeholder: (context, url) => const CircleAvatar(),
          ),
          const SizedBox(width: 16),
          Text(
            userName,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
}