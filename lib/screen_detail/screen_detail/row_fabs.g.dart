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

class _Fab extends StatelessWidget {
  const _Fab(
      {Key key,
      @required this.icon,
      this.iconColor = Colors.black,
      this.fabColor,
      this.onPressed})
      : super(key: key);

  final IconData icon;

  final Color iconColor;

  final Color fabColor;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => _fab(
      icon: icon,
      iconColor: iconColor,
      fabColor: fabColor,
      onPressed: onPressed);
}
