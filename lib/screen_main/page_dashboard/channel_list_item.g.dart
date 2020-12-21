// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list_item.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ChannelListItem extends StatelessWidget {
  const ChannelListItem(
      {Key key, @required this.channels, @required this.onTap})
      : super(key: key);

  final Channels channels;

  final void Function(BuildContext, String) onTap;

  @override
  Widget build(BuildContext _context) =>
      channelListItem(channels: channels, onTap: onTap);
}

class _ListItem extends StatelessWidget {
  const _ListItem({Key key, @required this.id, @required this.onTap})
      : super(key: key);

  final String id;

  final void Function(BuildContext, String) onTap;

  @override
  Widget build(BuildContext _context) => _listItem(id: id, onTap: onTap);
}
