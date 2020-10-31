import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/styles.dart';

class PageNotification extends StatelessWidget {
  static const String _PUBLISHED_AT = '2020/10/27 17:31';
  static const String _TITLE = '今後の番組予定（2020年10月27日 現在）';
  static const String _CONTENT =
      '☆ 10/30（金）19:00-\n青山周平×市川紘司×上田洋子\n「中国における都市・建築・暮らし」\n【コロナ禍の世界から #4】\n\n☆ 11/4（水）19:00-\n飯沢耕太郎×大山顕\n「写真・東京・スマホ――いま都市を撮るとは（仮）」\n\n☆ 11/9（月）19:00-\n大井昌和×さやわか×渡邉大輔\n「ノーランとポストシネマ、あるいはサブカルの地平線――メメント・テネット・21世紀（仮）」\n\n☆ 11/13（金）19:00-\n猪瀬直樹×石戸諭×速水健朗\n「猪瀬直樹『公』刊行記念イベント（仮）」\n\n☆ 11/14（土）19:00-\n夏目房之介×伊藤剛×さやわか\n「マンガの『線』を総括する（仮）」\n【『ゲンロン11』刊行記念】\n\n※ イベントタイトル、概要は変更される場合があります。';
  static const TextStyle _textStyle = TextStyle(height: Styles.TEXT_HEIGHT);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Text(
                _PUBLISHED_AT,
                style: TextStyle(
                  height: Styles.TEXT_HEIGHT,
                  fontSize: 12,
                  color: Styles.colorTextSub,
                ),
              );
            case 1:
              return SizedBox(height: 4);
            case 2:
              return Text(
                _TITLE,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: Styles.TEXT_HEIGHT,
                  fontSize: 16,
                ),
              );
            case 3:
              return const SizedBox(height: 24);
            case 4:
              return const Text(
                _CONTENT,
                style: _textStyle,
              );
            default:
              return const SizedBox();
          }
        });
  }
}
