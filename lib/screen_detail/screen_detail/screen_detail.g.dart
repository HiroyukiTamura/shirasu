// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_detail.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayerBodyWrapper extends StatelessWidget {
  const _PlayerBodyWrapper(
      {Key key,
      @required this.height,
      @required this.program,
      @required this.btmPadding})
      : super(key: key);

  final double height;

  final ProgramDetail program;

  final double btmPadding;

  @override
  Widget build(BuildContext _context) => _playerBodyWrapper(
      height: height, program: program, btmPadding: btmPadding);
}

class _PlayerBody extends HookWidget {
  const _PlayerBody(
      {Key key,
      @required this.height,
      @required this.btmPadding,
      @required this.program})
      : super(key: key);

  final double height;

  final double btmPadding;

  final ProgramDetail program;

  @override
  Widget build(BuildContext _context) => _playerBody(_context,
      height: height, btmPadding: btmPadding, program: program);
}
