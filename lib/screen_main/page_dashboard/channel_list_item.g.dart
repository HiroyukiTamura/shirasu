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
