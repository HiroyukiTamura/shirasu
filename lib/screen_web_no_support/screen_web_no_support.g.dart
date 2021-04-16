// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_web_no_support.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _TileAndroid extends StatelessWidget {
  const _TileAndroid({Key key, @required this.onTapBtn}) : super(key: key);

  final void Function(BuildContext) onTapBtn;

  @override
  Widget build(BuildContext _context) =>
      _tileAndroid(_context, onTapBtn: onTapBtn);
}

class _TileIos extends StatelessWidget {
  const _TileIos({Key key, @required this.onTapUrlCopyBtn}) : super(key: key);

  final void Function(BuildContext) onTapUrlCopyBtn;

  @override
  Widget build(BuildContext _context) =>
      _tileIos(_context, onTapUrlCopyBtn: onTapUrlCopyBtn);
}

class _TileWeb extends StatelessWidget {
  const _TileWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _tileWeb();
}

class _ListTile extends StatelessWidget {
  const _ListTile(
      {Key key,
      @required this.leading,
      @required this.title,
      @required this.subtitle})
      : super(key: key);

  final IconData leading;

  final String title;

  final Widget subtitle;

  @override
  Widget build(BuildContext _context) =>
      _listTile(leading: leading, title: title, subtitle: subtitle);
}
