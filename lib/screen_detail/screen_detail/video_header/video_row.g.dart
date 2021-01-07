// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_row.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _IconBtn extends StatelessWidget {
  const _IconBtn(
      {Key key,
      @required this.height,
      @required this.right,
      @required this.spaceRatio,
      @required this.iconData,
      @required this.onPressed})
      : super(key: key);

  final double height;

  final double right;

  final double spaceRatio;

  final IconData iconData;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => _iconBtn(
      height: height,
      right: right,
      spaceRatio: spaceRatio,
      iconData: iconData,
      onPressed: onPressed);
}

class _Text extends StatelessWidget {
  const _Text({Key key, @required this.isTitle, @required this.text})
      : super(key: key);

  final bool isTitle;

  final String text;

  @override
  Widget build(BuildContext _context) => _text(isTitle: isTitle, text: text);
}
