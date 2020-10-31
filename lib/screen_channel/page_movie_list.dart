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
  static const double _TILE_HEIGHT = 72;
  static const _THUMBNAIL_WIDTH = _TILE_HEIGHT * _THUMBNAIL_RATIO;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72 * 10.0,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 24),
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Container(
                height: _TILE_HEIGHT,
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: _THUMBNAIL_URL,
                      width: _THUMBNAIL_WIDTH,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(
                            height: 4,
                          ),
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
          }),
    );
  }
}
