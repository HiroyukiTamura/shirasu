import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/image_painter.dart';

part 'header_backdrop.g.dart';

@hwidget
Widget backDrop(
    BuildContext context, {
      @required double height,
    }) {
  final image = useProvider(dashboardViewModelSProvider
      .select((viewModel) => viewModel.headerImage));
  return image == null
      ? const SizedBox.shrink()
      : _BackDropInner(
    height: height,
    width: height * (image.width / image.height),
  );
}

class _BackDropInner extends StatefulWidget {
  const _BackDropInner({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  _BackDropInnerState createState() => _BackDropInnerState();
}

class _BackDropInnerState extends State<_BackDropInner>
    with AfterLayoutMixin<_BackDropInner> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    final pos =
        context.read(dashboardViewModelSProvider).headerBackDropScrollPos;
    _controller = ScrollController(
      initialScrollOffset: 10000 < pos ? 0 : pos,
      // restore position if it's not too far
      keepScrollOffset: true,
    )..addListener(() => context
        .read(dashboardViewModelSProvider)
        .headerBackDropScrollPos = _controller.offset);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
    scrollDirection: Axis.horizontal,
    controller: _controller,
    itemBuilder: (context, i) => _BackdropImage(
      widgetH: widget.height,
      widgetW: widget.width,
    ),
  );

  @override
  void afterFirstLayout(BuildContext context) => _startScroll();

  Future<void> _startScroll() async {
    while (mounted) {
      await _controller.animateTo(
        500,
        duration: const Duration(minutes: 1),
        curve: Curves.linear,
      );
    }
  }
}

@hwidget
Widget _backdropImage(
    BuildContext context, {
      @required double widgetH,
      @required double widgetW,
    }) {
  final image = useProvider(dashboardViewModelSProvider
      .select((viewModel) => viewModel.headerImage));
  return SizedBox(
    width: widgetW,
    height: widgetH,
    child: ColorFiltered(
      colorFilter:
      ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.srcOver),
      child: ColorFiltered(
        colorFilter:
        const ColorFilter.mode(Colors.grey, BlendMode.saturation),
        child: CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter:
          ImagePainter(image: image, widgetH: widgetH, widgetW: widgetW),
        ),
      ),
    ),
  );
}