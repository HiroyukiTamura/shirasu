// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_detail.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayerBodyWrapper extends StatelessWidget {
  const _PlayerBodyWrapper(
      {Key key,
      @required this.height,
      @required this.data,
      @required this.btmPadding})
      : super(key: key);

  final double height;

  final ProgramDetailData data;

  final double btmPadding;

  @override
  Widget build(BuildContext _context) =>
      _playerBodyWrapper(height: height, data: data, btmPadding: btmPadding);
}

class _PlayerBody extends HookWidget {
  const _PlayerBody(
      {Key key,
      @required this.height,
      @required this.btmPadding,
      @required this.data})
      : super(key: key);

  final double height;

  final double btmPadding;

  final ProgramDetailData data;

  @override
  Widget build(BuildContext _context) =>
      _playerBody(_context, height: height, btmPadding: btmPadding, data: data);
}
