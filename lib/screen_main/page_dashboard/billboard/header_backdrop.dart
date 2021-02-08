import 'dart:async';
import 'dart:ui' as ui;

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/image_painter.dart';

part 'header_backdrop.g.dart';

final _pHeaderImage = Provider.autoDispose<ui.Image>(
    (ref) => ref.watch(kPrvDashboardViewModel).headerImage);

@hwidget
Widget backDrop({
  @required double height,
}) {
  final image = useProvider(_pHeaderImage);
  return image == null
      ? const SizedBox.shrink()
      : _BackDropInner(
          height: height,
          width: height * (image.width / image.height),
        );
}

class _BackDropInner extends StatefulHookWidget {
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
    final pos = context.read(kPrvDashboardViewModel).headerBackDropScrollPos;
    _controller = ScrollController(
      initialScrollOffset: 10000 < pos ? 0 : pos,
      // restore position if it's not too far
      keepScrollOffset: true,
    )..addListener(() async => _onScroll());
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
        itemBuilder: (context, i) => _ColoredBackdropImage(
          widgetH: widget.height,
          widgetW: widget.width,
        ),
      );

  @override
  void afterFirstLayout(BuildContext context) => _startScroll();

  Future<void> _onScroll() async =>
      context.read(kPrvDashboardViewModel).headerBackDropScrollPos =
          _controller.offset;

  Future<void> _startScroll() async {
    while (mounted) {
      await _controller.animateTo(
        _controller.offset + 500,
        duration: const Duration(minutes: 1),
        curve: Curves.linear,
      );
    }
  }
}

@hwidget
Widget _coloredBackdropImage({
  @required double widgetH,
  @required double widgetW,
}) =>
    SizedBox(
      width: widgetW,
      height: widgetH,
      child: ColorFiltered(
        colorFilter:
            const ColorFilter.mode(Styles.BARRIER, BlendMode.srcOver),
        child: ColorFiltered(
          colorFilter:
              const ColorFilter.mode(Colors.grey, BlendMode.saturation),
          child: CustomPaint(
            size: Size(widgetW, widgetH),
            painter: ImagePainter(
              image: useProvider(_pHeaderImage),
              widgetH: widgetH,
              widgetW: widgetW,
            ),
          ),
        ),
      ),
    );
