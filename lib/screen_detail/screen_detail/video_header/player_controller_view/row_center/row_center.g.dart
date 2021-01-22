// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_center.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class RowCenter extends StatelessWidget {
  const RowCenter(
      {Key key,
      @required this.id,
      @required this.onTapRewindBtn,
      @required this.onTapFastForwardBtn,
      @required this.onTapPlayToggleBtn})
      : super(key: key);

  final String id;

  final void Function(BuildContext) onTapRewindBtn;

  final void Function(BuildContext) onTapFastForwardBtn;

  final void Function(BuildContext) onTapPlayToggleBtn;

  @override
  Widget build(BuildContext _context) => rowCenter(_context,
      id: id,
      onTapRewindBtn: onTapRewindBtn,
      onTapFastForwardBtn: onTapFastForwardBtn,
      onTapPlayToggleBtn: onTapPlayToggleBtn);
}
