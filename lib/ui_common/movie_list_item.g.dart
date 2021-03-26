// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_item.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class MovieListItem extends StatelessWidget {
  const MovieListItem(
      {Key key,
      @required this.id,
      @required this.title,
      @required this.broadcastAt,
      @required this.onTap})
      : super(key: key);

  final String id;

  final String title;

  final DateTime broadcastAt;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => movieListItem(_context,
      id: id, title: title, broadcastAt: broadcastAt, onTap: onTap);
}

class MovieListBigItem extends StatelessWidget {
  const MovieListBigItem(
      {Key key, @required this.program, @required this.onTap})
      : super(key: key);

  final BaseProgram program;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      movieListBigItem(program: program, onTap: onTap);
}
