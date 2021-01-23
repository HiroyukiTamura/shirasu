// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_thumbnail.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class LoadingThumbnail extends StatelessWidget {
  const LoadingThumbnail({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext _context) => loadingThumbnail(id: id);
}

class _HoverWidget extends StatelessWidget {
  const _HoverWidget(
      {Key key,
      @required this.program,
      @required this.onTap,
      @required this.onTapPreviewBtn,
      @required this.onClickPurchaseBtn})
      : super(key: key);

  final ProgramDetail program;

  final void Function() onTap;

  final void Function() onTapPreviewBtn;

  final void Function(BuildContext) onClickPurchaseBtn;

  @override
  Widget build(BuildContext _context) => _hoverWidget(_context,
      program: program,
      onTap: onTap,
      onTapPreviewBtn: onTapPreviewBtn,
      onClickPurchaseBtn: onClickPurchaseBtn);
}

class _PreviewExistMessage extends StatelessWidget {
  const _PreviewExistMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _previewExistMessage();
}

class _WaitingText extends StatelessWidget {
  const _WaitingText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _waitingText();
}

class _HoverBtn extends StatelessWidget {
  const _HoverBtn({Key key, @required this.label, @required this.onPressed})
      : super(key: key);

  final String label;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) =>
      _hoverBtn(label: label, onPressed: onPressed);
}

class _HoverBackDrop extends StatelessWidget {
  const _HoverBackDrop({Key key, @required this.opacity, @required this.child})
      : super(key: key);

  final double opacity;

  final Widget child;

  @override
  Widget build(BuildContext _context) =>
      _hoverBackDrop(opacity: opacity, child: child);
}
