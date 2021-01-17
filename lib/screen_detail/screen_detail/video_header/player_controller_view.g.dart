// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_controller_view.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayOrPauseBtn extends StatelessWidget {
  const _PlayOrPauseBtn({Key key, @required this.onTap, @required this.id})
      : super(key: key);

  final void Function() onTap;

  final String id;

  @override
  Widget build(BuildContext _context) => _playOrPauseBtn(onTap: onTap, id: id);
}

class _PlayOrPauseIcon extends HookWidget {
  const _PlayOrPauseIcon({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext _context) => _playOrPauseIcon(id: id);
}

class _SeekBtn extends StatelessWidget {
  const _SeekBtn({Key key, @required this.icon, @required this.onTap})
      : super(key: key);

  final IconData icon;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => _seekBtn(icon: icon, onTap: onTap);
}

class _TimeText extends HookWidget {
  const _TimeText({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext _context) => _timeText(id: id);
}
