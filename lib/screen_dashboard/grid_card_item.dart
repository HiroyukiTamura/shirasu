import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';

class GirdCardItem extends StatelessWidget {
  static const _THUMBNAIL_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/programs/genron-genron-20201114/thumbnail';
  static const _TITLE = '夏目房之介×伊藤剛×さやわか「マンガの『線』を総括する（仮）」【『ゲンロン11』刊行記念】';
  static const _CHANNEL_TITLE = 'ゲンロン完全中継チャンネル';
  static const _CHANNEL_LOGO_URL =
      'https://shirasu-storage-product.s3.amazonaws.com/public/channels/genron/icon';

  final double width;
  final double height;

  const GirdCardItem({Key key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: ScreenDetail.IMG_RATIO,
            child: CachedNetworkImage(
              imageUrl: _THUMBNAIL_URL,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              _TITLE,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.2,
                fontSize: 13,
              ),
            ),
          ),
          Text(
            _CHANNEL_TITLE,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
