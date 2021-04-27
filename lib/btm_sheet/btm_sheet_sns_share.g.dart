// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'btm_sheet_sns_share.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class BtmSheetSnsShare extends StatelessWidget {
  const BtmSheetSnsShare(
      {Key key, @required this.shareUrl, @required this.snackCallback})
      : super(key: key);

  final ShareUrl shareUrl;

  final void Function(SnackMsg) snackCallback;

  @override
  Widget build(BuildContext _context) =>
      btmSheetSnsShare(shareUrl: shareUrl, snackCallback: snackCallback);
}

class BtmSheetListItem extends StatelessWidget {
  const BtmSheetListItem(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.onTap})
      : super(key: key);

  final IconData icon;

  final String title;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      btmSheetListItem(icon: icon, title: title, onTap: onTap);
}

class BtmSheetListView extends StatelessWidget {
  const BtmSheetListView({Key key, @required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext _context) => btmSheetListView(children: children);
}

class _TileTwitter extends StatelessWidget {
  const _TileTwitter(
      {Key key, @required this.urlTwitter, @required this.onUrlInvalid})
      : super(key: key);

  final String urlTwitter;

  final void Function() onUrlInvalid;

  @override
  Widget build(BuildContext _context) => _tileTwitter(_context,
      urlTwitter: urlTwitter, onUrlInvalid: onUrlInvalid);
}

class _TileFacebook extends StatelessWidget {
  const _TileFacebook(
      {Key key, @required this.urlFaceBook, @required this.onUrlInvalid})
      : super(key: key);

  final String urlFaceBook;

  final void Function() onUrlInvalid;

  @override
  Widget build(BuildContext _context) => _tileFacebook(_context,
      urlFaceBook: urlFaceBook, onUrlInvalid: onUrlInvalid);
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
