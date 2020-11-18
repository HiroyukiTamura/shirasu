import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';

class UserNameAndIcon extends StatelessWidget {
  const UserNameAndIcon({
    Key key,
    @required this.iconUrl,
    @required this.userName,
  }) : super(key: key);

  final String iconUrl;
  final String userName;
  static const double _HEIGHT = 60;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: _HEIGHT,
    child: Row(
      children: [
        CachedNetworkImage(
          imageUrl: iconUrl,
          width: _HEIGHT,
          height: _HEIGHT,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          errorWidget: (context, url, error) {
            print(error);
            return Container(); //todo show default user image
          },
        ),
        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.NAME_LABEL,
              style: TextStyle(
                color: Colors.white.withOpacity(.8),
              ),
            ),
            Text(
              userName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}