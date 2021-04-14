// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'btm_sheet.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class BtmSheetPlaySpeed extends StatelessWidget {
  const BtmSheetPlaySpeed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => btmSheetPlaySpeed(_context);
}

class BtmSheetCommentSelected extends HookWidget {
  const BtmSheetCommentSelected(
      {Key key, @required this.id, @required this.position})
      : super(key: key);

  final String id;

  final Duration position;

  @override
  Widget build(BuildContext _context) =>
      btmSheetCommentSelected(_context, id: id, position: position);
}

class BtmSheetFcmMenu extends HookWidget {
  const BtmSheetFcmMenu(
      {Key key,
      @required this.channelId,
      @required this.programId,
      @required this.onTap})
      : super(key: key);

  final String channelId;

  final String programId;

  final void Function(FcmSubscribingStatus) onTap;

  @override
  Widget build(BuildContext _context) => btmSheetFcmMenu(_context,
      channelId: channelId, programId: programId, onTap: onTap);
}
