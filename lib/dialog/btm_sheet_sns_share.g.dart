// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'btm_sheet_sns_share.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// todo deep link for this app
class BtmSheetSnsShare extends StatelessWidget {
  /// todo deep link for this app
  const BtmSheetSnsShare(
      {Key key, @required this.shareUrl, @required this.snackCallback})
      : super(key: key);

  /// todo deep link for this app
  final ShareUrl shareUrl;

  /// todo deep link for this app
  final void Function(SnackMsg) snackCallback;

  @override
  Widget build(BuildContext _context) =>
      btmSheetSnsShare(shareUrl: shareUrl, snackCallback: snackCallback);
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
  const _TileUrl({Key key, @required this.url, @required this.snackCallback})
      : super(key: key);

  final String url;

  final void Function(SnackMsg) snackCallback;

  @override
  Widget build(BuildContext _context) =>
      _tileUrl(_context, url: url, snackCallback: snackCallback);
}
