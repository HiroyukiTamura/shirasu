// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_seekbar.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class PlayerAnimOpacity extends HookWidget {
  const PlayerAnimOpacity({Key key, @required this.child, @required this.conf})
      : super(key: key);

  final Widget child;

  final VideoViewModelConf conf;

  @override
  Widget build(BuildContext _context) =>
      playerAnimOpacity(child: child, conf: conf);
}

class VideoSeekBarHoverStyle extends StatelessWidget {
  const VideoSeekBarHoverStyle(
      {Key key, @required this.conf, @required this.topMargin})
      : super(key: key);

  final VideoViewModelConf conf;

  final double topMargin;

  @override
  Widget build(BuildContext _context) =>
      videoSeekBarHoverStyle(_context, conf: conf, topMargin: topMargin);
}
