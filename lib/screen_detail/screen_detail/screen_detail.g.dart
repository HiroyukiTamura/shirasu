// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_detail.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayerBodyWrapper extends StatelessWidget {
  const _PlayerBodyWrapper(
      {Key key,
      @required this.height,
      @required this.programData,
      @required this.btmPadding})
      : super(key: key);

  final double height;

  final ProgramDetailData programData;

  final double btmPadding;

  @override
  Widget build(BuildContext _context) => _playerBodyWrapper(
      height: height, programData: programData, btmPadding: btmPadding);
}

class _PlayerBody extends HookWidget {
  const _PlayerBody(
      {Key key,
      @required this.height,
      @required this.btmPadding,
      @required this.programData})
      : super(key: key);

  final double height;

  final double btmPadding;

  final ProgramDetailData programData;

  @override
  Widget build(BuildContext _context) => _playerBody(_context,
      height: height, btmPadding: btmPadding, programData: programData);
}
