import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/resource/dimens.dart';

class RowVideoThumbnail extends StatelessWidget {
  const RowVideoThumbnail({
    Key key,
    @required this.programId,
    @required this.onTap,
  }) : super(key: key);

  final String programId;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: Dimens.IMG_RATIO,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: ApiClient.getThumbnailUrl(programId),
              errorWidget: (context, url, error) {
                //todo log and show error widget
                return Container();
              },
            ),
            Center(
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.5),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.play_arrow,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
