// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key key, @required this.content})
      : super(key: key);

  final SearchResultContent content;

  @override
  Widget build(BuildContext _context) => searchResultListView(content: content);
}

class _SectionTag extends StatelessWidget {
  const _SectionTag({Key key, @required this.tags}) : super(key: key);

  final UnmodifiableListView<String> tags;

  @override
  Widget build(BuildContext _context) => _sectionTag(_context, tags: tags);
}

class _SectionChannel extends StatelessWidget {
  const _SectionChannel(
      {Key key, @required this.content, @required this.constraints})
      : super(key: key);

  final SearchResultContent content;

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext _context) =>
      _sectionChannel(_context, content: content, constraints: constraints);
}

class _SectionProgram extends StatelessWidget {
  const _SectionProgram({Key key, @required this.programList})
      : super(key: key);

  final UnmodifiableListView<SearchResultItem> programList;

  @override
  Widget build(BuildContext _context) =>
      _sectionProgram(_context, programList: programList);
}
