import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/styles.dart';

class PageMovieList extends StatelessWidget {
  static const _THUMBNAIL_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201023/thumbnail';
  static const _TITLE =
      '安藤礼二×中島隆博「井筒俊彦をこえて――『あたらしい東洋哲学』はどこにあるのか」【『ゲンロン11』刊行記念】 #ゲンロン201023';
  static const _TIME = '2020/11/12 19:00';

  static const _THUMBNAIL_RATIO = 1920 / 1080;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72 * 10.0,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Container(
              height: 72,
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: _THUMBNAIL_URL,
                    width: 100,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          _TITLE,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            height: Styles.TEXT_HEIGHT,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _TIME,
                          style: TextStyle(
                            color: Styles.colorTextSub,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
