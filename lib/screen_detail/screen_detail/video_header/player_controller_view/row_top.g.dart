// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_top.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class RowTop extends HookWidget {
  const RowTop(
      {Key key,
      @required this.onTapFullScreenBtn,
      @required this.onTapSpeedBtn,
      @required this.conf})
      : super(key: key);

  final void Function(BuildContext) onTapFullScreenBtn;

  final void Function(BuildContext) onTapSpeedBtn;

  final VideoViewModelConf conf;

  @override
  Widget build(BuildContext _context) => rowTop(_context,
      onTapFullScreenBtn: onTapFullScreenBtn,
      onTapSpeedBtn: onTapSpeedBtn,
      conf: conf);
}

class _IconButton extends StatelessWidget {
  const _IconButton(
      {Key key,
      @required this.icon,
      @required this.fullScreen,
      @required this.onPressed})
      : super(key: key);

  final IconData icon;

  final bool fullScreen;

  final void Function(BuildContext) onPressed;

  @override
  Widget build(BuildContext _context) => _iconButton(_context,
      icon: icon, fullScreen: fullScreen, onPressed: onPressed);
}
