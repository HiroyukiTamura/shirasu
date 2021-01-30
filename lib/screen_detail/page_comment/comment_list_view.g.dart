// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_view.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// disable [IconButton] if text is empty
class _SuffixBtn extends HookWidget {
  /// disable [IconButton] if text is empty
  const _SuffixBtn({Key key, @required this.id, @required this.onPressed})
      : super(key: key);

  /// disable [IconButton] if text is empty
  final String id;

  /// disable [IconButton] if text is empty
  final Future<void> Function(BuildContext, String) onPressed;

  @override
  Widget build(BuildContext _context) =>
      _suffixBtn(_context, id: id, onPressed: onPressed);
}

class _Trailing extends StatelessWidget {
  const _Trailing({Key key, @required this.item}) : super(key: key);

  final CommentItem item;

  @override
  Widget build(BuildContext _context) => _trailing(item: item);
}

class _Leading extends StatelessWidget {
  const _Leading({Key key, @required this.item}) : super(key: key);

  final CommentItem item;

  @override
  Widget build(BuildContext _context) => _leading(item: item);
}
