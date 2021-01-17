import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

part 'horizontal_drag_detector.freezed.dart';

final kPrvDragVm = StateNotifierProvider.autoDispose<_HorizontalDragState>(
    (ref) => _HorizontalDragState());

typedef OnDragCallback = void Function(HorizontalDragData data);

class HorizontalDragDetector extends StatelessWidget {
  const HorizontalDragDetector({
    Key key,
    @required this.child,
    @required this.onDragEnd,
    @required this.overlay,
  }) : super(key: key);

  final Widget child;
  final OnDragCallback onDragEnd;
  final Widget overlay;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onHorizontalDragStart: (details) => _onDragStart(context, details),
        onHorizontalDragUpdate: (details) => _onDragUpdate(context, details),
        onHorizontalDragCancel: () => _onDragCancel(context),
        onHorizontalDragEnd: (details) => _onDragEnd(context, details),
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            _AnimatedOpacity(
              showWhenDragging: false,
              child: child,
            ),
            _AnimatedOpacity(
              showWhenDragging: true,
              child: overlay,
            ),
          ],
        ),
      );

  void _onDragStart(BuildContext context, DragStartDetails details) =>
      context.read(kPrvDragVm).setStart(details.globalPosition.dx);

  void _onDragUpdate(BuildContext context, DragUpdateDetails details) =>
      context.read(kPrvDragVm).update(details.globalPosition.dx);

  void _onDragCancel(BuildContext context) => context.read(kPrvDragVm).clear();

  void _onDragEnd(BuildContext context, DragEndDetails details) {
    final data = context.read(kPrvDragVm.state).data.copyWith();
    context.read(kPrvDragVm).clear();
    onDragEnd(data);
  }
}

class _AnimatedOpacity extends HookWidget {
  const _AnimatedOpacity({
    @required this.showWhenDragging,
    @required this.child,
  });

  final Widget child;
  final bool showWhenDragging;

  @override
  Widget build(BuildContext context) {
    final isDragging =
        useProvider(kPrvDragVm.state.select((it) => it.data != null));
    final visible = showWhenDragging ? isDragging : !isDragging;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 100),
      opacity: visible ? 1 : 0,
      child: IgnorePointer(
        ignoring: !visible,
        child: child,
      ),
    );
  }
}

class _HorizontalDragState extends StateNotifier<HorizontalDragDataHolder> {
  _HorizontalDragState() : super(const HorizontalDragDataHolder());

  void setStart(double dx) =>
      state = state.copyWith(data: HorizontalDragData(startDx: dx, currentDx: 0));

  void update(double dx) => state = state.copyWith.data(currentDx: dx);

  void clear() => state = state.copyWith(data: null);
}

@freezed
abstract class HorizontalDragDataHolder with _$HorizontalDragDataHolder {
  const factory HorizontalDragDataHolder({
    HorizontalDragData data,
  }) = _HorizontalDragDataHolder;
}

@freezed
abstract class HorizontalDragData with _$HorizontalDragData {
  const factory HorizontalDragData({
    @required double startDx,
    @required double currentDx,
  }) = _HorizontalDragData;
}
