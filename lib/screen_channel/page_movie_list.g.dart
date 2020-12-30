// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_movie_list.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _WrappedNotificationListener extends HookWidget {
  const _WrappedNotificationListener(
      {Key key,
      @required this.channelId,
      @required this.sc,
      @required this.child,
      @required this.enabled})
      : super(key: key);

  final String channelId;

  final ScrollController sc;

  final Widget child;

  final bool enabled;

  @override
  Widget build(BuildContext _context) => _wrappedNotificationListener(_context,
      channelId: channelId, sc: sc, child: child, enabled: enabled);
}

class _ListView extends HookWidget {
  const _ListView(
      {Key key,
      @required this.sc,
      @required this.channelPrograms,
      @required this.showLoadingIndicator})
      : super(key: key);

  final ScrollController sc;

  final ChannelPrograms channelPrograms;

  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext _context) => _listView(
      sc: sc,
      channelPrograms: channelPrograms,
      showLoadingIndicator: showLoadingIndicator);
}
