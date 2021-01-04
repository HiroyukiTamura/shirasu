// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_thumbnail.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _PlayBtn extends StatelessWidget {
  const _PlayBtn({Key key, @required this.onTap}) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => _playBtn(onTap: onTap);
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
