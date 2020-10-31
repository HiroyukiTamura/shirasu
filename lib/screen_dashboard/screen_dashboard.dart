import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';

class ScreenDashboard extends StatelessWidget {
  static const _THUMBNAIL_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201104/thumbnail';
  static const _HEADING_UPCOMING = 'まもなく放送';
  static const _TITLE = '飯沢耕太郎×大山顕「写真・東京・スマホ――いま都市を撮るとは」 @sohsai #ゲンロン201104';
  static const _CHANNEL_TITLE = 'ゲンロン完全中継チャンネル';
  static const _CHANNEL_LOGO_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/icon';
  static const double _CHANNEL_LOGO_SIZE = 24;
  static const _TIME = '2020/11/04 19:00';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16),
        itemCount: 10,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  _HEADING_UPCOMING,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            case 1:
              return SizedBox(height: 16);
            case 2:
              return Container(
                child: AspectRatio(
                  aspectRatio: ScreenDetail.IMG_RATIO,
                  child: CachedNetworkImage(
                    imageUrl: _THUMBNAIL_URL,
                  ),
                ),
              );
            case 3:
              return SizedBox(height: 16);
            case 4:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  _TITLE,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            case 5:
              return SizedBox(height: 8);
            case 6:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: _CHANNEL_LOGO_URL,
                      height: _CHANNEL_LOGO_SIZE,
                      width: _CHANNEL_LOGO_SIZE,
                    ),
                    SizedBox(width: 16),
                    Text(
                      _CHANNEL_TITLE,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            case 7:
              return SizedBox(height: 24);
            case 8:
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[Colors.deepOrange, Theme.of(context).accentColor],
                              stops: <double>[0, 1]
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      _TIME,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            default:
              return const SizedBox();
          }
        });
  }
}
