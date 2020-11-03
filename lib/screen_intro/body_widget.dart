import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/text_styles.dart';

class BodyWidget extends StatelessWidget {

  final List<String> stringList;

  const BodyWidget({Key key, @required this.stringList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textList = stringList.map<Widget>((it) => Text(
      it,
      style: TextStyles.introDesc,
    )).toList();

    for (int i = 0; i < stringList.length-1; i++)
      textList.insert(i*2 +1, const SizedBox(height: 8));

    return Column(
      children: textList,
    );
  }
}