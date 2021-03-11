// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_or_pause_icon.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayOrPauseIcon extends HookWidget {
  const _PlayOrPauseIcon({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext _context) => _playOrPauseIcon(id: id);
}

class PlayOrPauseBtn extends HookWidget {
  const PlayOrPauseBtn({Key key, @required this.onTap, @required this.id})
      : super(key: key);

  final void Function(BuildContext) onTap;

  final String id;

  @override
  Widget build(BuildContext _context) =>
      playOrPauseBtn(_context, onTap: onTap, id: id);
}
