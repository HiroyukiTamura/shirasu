import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListTileItem extends StatelessWidget {
  static const _THUMBNAIL_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201023/thumbnail';
  static const _TITLE =
      '安藤礼二×中島隆博「井筒俊彦をこえて――『あたらしい東洋哲学』はどこにあるのか」【『ゲンロン11』刊行記念】 #ゲンロン201023';
  static const _TIME = '2020/11/12 19:00';

  static const double _TILE_HEIGHT = 96;
  static const _THUMBNAIL_WIDTH = _TILE_HEIGHT * Dimens.IMG_RATIO;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        height: _TILE_HEIGHT,
        child: Row(
          children: [
            SizedBox(
              width: _THUMBNAIL_WIDTH,
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: _THUMBNAIL_URL,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 2,
                      child: LinearProgressIndicator(value: .3,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _TITLE,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      height: TextStyles.TEXT_HEIGHT,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _TIME,
                    style: TextStyle(
                      fontSize: 12,
                      color: Styles.colorTextSub,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
