// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_edit_review.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _Body extends HookWidget {
  const _Body({Key key, @required this.programId, @required this.onChanged})
      : super(key: key);

  final String programId;

  final dynamic Function(BuildContext, String) onChanged;

  @override
  Widget build(BuildContext _context) =>
      _body(programId: programId, onChanged: onChanged);
}

class _Fab extends HookWidget {
  const _Fab({Key key, @required this.programId, @required this.onTap})
      : super(key: key);

  final String programId;

  final void Function(BuildContext) onTap;

  @override
  Widget build(BuildContext _context) =>
      _fab(_context, programId: programId, onTap: onTap);
}

class _TextField extends HookWidget {
  const _TextField(
      {Key key,
      @required this.programId,
      @required this.onChanged,
      this.initialValue})
      : super(key: key);

  final String programId;

  final dynamic Function(BuildContext, String) onChanged;

  final String initialValue;

  @override
  Widget build(BuildContext _context) => _textField(_context,
      programId: programId, onChanged: onChanged, initialValue: initialValue);
}
