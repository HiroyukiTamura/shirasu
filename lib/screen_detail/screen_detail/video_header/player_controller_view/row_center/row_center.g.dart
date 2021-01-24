// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_center.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class RowCenter extends StatelessWidget {
  const RowCenter(
      {Key key,
      @required this.conf,
      @required this.onTapRewindBtn,
      @required this.onTapFastForwardBtn,
      @required this.onTapPlayToggleBtn})
      : super(key: key);

  final VideoViewModelConf conf;

  final void Function(BuildContext) onTapRewindBtn;

  final void Function(BuildContext) onTapFastForwardBtn;

  final void Function(BuildContext) onTapPlayToggleBtn;

  @override
  Widget build(BuildContext _context) => rowCenter(_context,
      conf: conf,
      onTapRewindBtn: onTapRewindBtn,
      onTapFastForwardBtn: onTapFastForwardBtn,
      onTapPlayToggleBtn: onTapPlayToggleBtn);
}
