// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_fcm.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _Title extends StatelessWidget {
  const _Title({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext _context) => _title(text: text);
}

class _ChannelListTile extends StatelessWidget {
  const _ChannelListTile(
      {Key key,
      @required this.id,
      @required this.title,
      @required this.onDismissed})
      : super(key: key);

  final String id;

  final String title;

  final void Function(DismissDirection) onDismissed;

  @override
  Widget build(BuildContext _context) => _channelListTile(_context,
      id: id, title: title, onDismissed: onDismissed);
}

class _Dismissible extends StatelessWidget {
  const _Dismissible(
      {Key key,
      @required this.child,
      @required this.keyValue,
      @required this.onDismissed})
      : super(key: key);

  final Widget child;

  final String keyValue;

  final void Function(DismissDirection) onDismissed;

  @override
  Widget build(BuildContext _context) => _dismissible(_context,
      child: child, keyValue: keyValue, onDismissed: onDismissed);
}

class _DismissibleBg extends StatelessWidget {
  const _DismissibleBg({Key key, @required this.lr}) : super(key: key);

  final Lr lr;

  @override
  Widget build(BuildContext _context) => _dismissibleBg(_context, lr: lr);
}
