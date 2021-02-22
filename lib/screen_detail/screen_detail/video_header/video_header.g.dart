// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_header.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class VideoHeader extends HookWidget {
  const VideoHeader(
      {Key key,
      @required this.conf,
      @required this.onTap,
      @required this.onTapPreviewBtn,
      @required this.program,
      @required this.height})
      : super(key: key);

  final VideoViewModelConf conf;

  final void Function() onTap;

  final void Function() onTapPreviewBtn;

  final ProgramDetail program;

  final double height;

  @override
  Widget build(BuildContext _context) => videoHeader(
      conf: conf,
      onTap: onTap,
      onTapPreviewBtn: onTapPreviewBtn,
      program: program,
      height: height);
}

class _PageErrText extends HookWidget {
  const _PageErrText({Key key, this.text = Strings.SNACK_ERR})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext _context) => _pageErrText(text: text);
}

class BufferingIndicator extends HookWidget {
  const BufferingIndicator({Key key, @required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext _context) => bufferingIndicator(id: id);
}
