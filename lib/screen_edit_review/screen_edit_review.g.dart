// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_edit_review.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _Fab extends StatelessWidget {
  const _Fab({Key key, @required this.program, @required this.onTap})
      : super(key: key);

  final ProgramDetail program;

  final void Function(BuildContext) onTap;

  @override
  Widget build(BuildContext _context) =>
      _fab(_context, program: program, onTap: onTap);
}

class _TextField extends StatelessWidget {
  const _TextField({Key key, @required this.program, @required this.onChanged})
      : super(key: key);

  final ProgramDetail program;

  final dynamic Function(BuildContext, String) onChanged;

  @override
  Widget build(BuildContext _context) =>
      _textField(_context, program: program, onChanged: onChanged);
}
