import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/dialog/btm_sheet.dart';
import 'package:shirasu/dialog/portal_animated_modal_barrier.dart';
import 'package:shirasu/util.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'btm_sheet_play_speed.g.dart';

class BtmSheetPlaySpeed extends StatelessWidget {
  const BtmSheetPlaySpeed({
    Key key,
    @required this.id,
    @required this.onTap,
    @required this.visible,
    @required this.child,
    @required this.onTapBackDrop,
  }) : super(key: key);

  final String id;
  final OnTapPlaySpeed onTap;
  final bool visible;
  final Widget child;
  final VoidCallback onTapBackDrop;

  @override
  Widget build(BuildContext context) => PortalAnimatedModalBarrier(
        onClose: onTapBackDrop,
        visible: visible,
        child: BtmSheet(
          visible: visible,
          btmSheetContent: BtmSheetPlaySpeedContent(
            onTap: onTap,
          ),
          child: child,
        ),
      );
}

class BtmSheetPlaySpeedContent extends StatelessWidget {
  const BtmSheetPlaySpeedContent({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final OnTapPlaySpeed onTap;

  @override
  Widget build(BuildContext context) => ListView(
        shrinkWrap: true,
        children: Util.PLAY_SPEED
            .mapIndexed((index, speed) => SizedBox(
                  height: 48,
                  child: Material(
                    child: InkWell(
                      onTap: () => onTap(speed),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            _Heading(speed: speed),
                            const SizedBox(width: 16),
                            _text(speed: speed)
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
            .toUnmodifiable(),
      );

  Widget _text({@required double speed}) {
    final string =
        speed.truncate() == speed ? speed.toStringAsFixed(1) : speed.toString();
    return Text(
      'x$string',
      maxLines: 1,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}

@hwidget
Widget _heading({@required double speed}) {
  final currentSpeed = useProvider(kPrvHivePrefEvent).data?.value ?? HivePrefectureClient.instance().playSpeed;
  return SizedBox(
      width: 40,
      child: Visibility(
        visible: speed == currentSpeed,
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );
}
