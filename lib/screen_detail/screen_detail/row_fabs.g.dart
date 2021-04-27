// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_fabs.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _AlertIcon extends HookWidget {
  const _AlertIcon(
      {Key key,
      @required this.programId,
      @required this.channelId,
      @required this.onTapAsCommandOn,
      @required this.onTapAsCommandOff})
      : super(key: key);

  final String programId;

  final String channelId;

  final void Function() onTapAsCommandOn;

  final void Function() onTapAsCommandOff;

  @override
  Widget build(BuildContext _context) => _alertIcon(_context,
      programId: programId,
      channelId: channelId,
      onTapAsCommandOn: onTapAsCommandOn,
      onTapAsCommandOff: onTapAsCommandOff);
}

class _AlertOff extends StatelessWidget {
  const _AlertOff({Key key, @required this.onTapAsCommandOn}) : super(key: key);

  final void Function() onTapAsCommandOn;

  @override
  Widget build(BuildContext _context) =>
      _alertOff(_context, onTapAsCommandOn: onTapAsCommandOn);
}

class _AlertOn extends StatelessWidget {
  const _AlertOn({Key key, @required this.onTapAsCommandOff}) : super(key: key);

  final void Function() onTapAsCommandOff;

  @override
  Widget build(BuildContext _context) =>
      _alertOn(_context, onTapAsCommandOff: onTapAsCommandOff);
}

class _Fab extends StatelessWidget {
  const _Fab(
      {Key key,
      @required this.icon,
      this.iconColor,
      this.iconSize = 24,
      this.fabColor,
      this.onPressed})
      : super(key: key);

  final IconData icon;

  final Color iconColor;

  final double iconSize;

  final Color fabColor;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => _fab(_context,
      icon: icon,
      iconColor: iconColor,
      iconSize: iconSize,
      fabColor: fabColor,
      onPressed: onPressed);
}
