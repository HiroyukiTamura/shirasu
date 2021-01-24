// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'btm_sheet_sns_share.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// todo deep link for this app
class BtmSheetSnsShare extends StatelessWidget {
  /// todo deep link for this app
  const BtmSheetSnsShare(
      {Key key,
      @required this.urlTwitter,
      @required this.urlFaceBook,
      @required this.url})
      : super(key: key);

  /// todo deep link for this app
  final String urlTwitter;

  /// todo deep link for this app
  final String urlFaceBook;

  /// todo deep link for this app
  final String url;

  @override
  Widget build(BuildContext _context) => btmSheetSnsShare(
      urlTwitter: urlTwitter, urlFaceBook: urlFaceBook, url: url);
}

class _TileTwitter extends StatelessWidget {
  const _TileTwitter({Key key, @required this.urlTwitter}) : super(key: key);

  final String urlTwitter;

  @override
  Widget build(BuildContext _context) =>
      _tileTwitter(_context, urlTwitter: urlTwitter);
}

class _TileFacebook extends StatelessWidget {
  const _TileFacebook({Key key, @required this.urlFaceBook}) : super(key: key);

  final String urlFaceBook;

  @override
  Widget build(BuildContext _context) =>
      _tileFacebook(_context, urlFaceBook: urlFaceBook);
}

class _TileUrl extends StatelessWidget {
  const _TileUrl({Key key, @required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext _context) => _tileUrl(_context, url: url);
}
