// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_channel.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ScreenChannel extends HookWidget {
  const ScreenChannel({Key key, @required this.channelId}) : super(key: key);

  final String channelId;

  @override
  Widget build(BuildContext _context) =>
      screenChannel(_context, channelId: channelId);
}

class _RowHeaderImg extends StatelessWidget {
  const _RowHeaderImg({Key key, @required this.channelId}) : super(key: key);

  final String channelId;

  @override
  Widget build(BuildContext _context) => _rowHeaderImg(channelId: channelId);
}

class _RowChannelName extends StatelessWidget {
  const _RowChannelName({Key key, @required this.channel}) : super(key: key);

  final Channel channel;

  @override
  Widget build(BuildContext _context) => _rowChannelName(channel: channel);
}

class _RowTab extends StatelessWidget {
  const _RowTab({Key key, @required this.controller}) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext _context) => _rowTab(controller: controller);
}

class _RowSeem extends StatelessWidget {
  const _RowSeem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _rowSeem();
}

/// todo refactor??
class _AlertBtn extends HookWidget {
  /// todo refactor??
  const _AlertBtn({Key key, @required this.channelId}) : super(key: key);

  /// todo refactor??
  final String channelId;

  @override
  Widget build(BuildContext _context) =>
      _alertBtn(_context, channelId: channelId);
}

class _AlertOff extends StatelessWidget {
  const _AlertOff({Key key, @required this.channelId}) : super(key: key);

  final String channelId;

  @override
  Widget build(BuildContext _context) =>
      _alertOff(_context, channelId: channelId);
}

class _AlertOn extends StatelessWidget {
  const _AlertOn({Key key, @required this.channelId}) : super(key: key);

  final String channelId;

  @override
  Widget build(BuildContext _context) =>
      _alertOn(_context, channelId: channelId);
}
