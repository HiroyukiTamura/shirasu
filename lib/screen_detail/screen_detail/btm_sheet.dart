import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/btm_sheet/common.dart';
import 'package:shirasu/di/hive_client.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'btm_sheet.g.dart';

final _kPrvBtmSheetEvent = Provider.family.autoDispose<PortalState, String>(
    (ref, id) => ref.watch(detailSNProvider(id).state).portalState);

class BtmSheetEventListener extends StatelessWidget {
  const BtmSheetEventListener({
    Key key,
    @required this.child,
    @required this.id,
  }) : super(key: key);

  final Widget child;
  final String id;

  @override
  Widget build(BuildContext context) => ProviderListener<PortalState>(
        provider: _kPrvBtmSheetEvent(id),
        onChange: _onChangeBtmSheet,
        child: child,
      );

  void _onChangeBtmSheet(BuildContext context, PortalState portalState) {
    portalState.when(
      none: () {
        // do nothing
      },
      playSpeed: () async => _showBtmSheet(
        context,
        (context) => const BtmSheetPlaySpeed(),
      ),
      resolution: () => throw UnimplementedError(),
      commentSelect: (position) async => _showBtmSheet(
        context,
        (context) => BtmSheetCommentSelected(
          position: position,
          id: id,
        ),
      ),
    );
  }

  Future<void> _showBtmSheet(
      BuildContext context, WidgetBuilder builder) async {
    await showModalBottomSheet<void>(
      builder: builder,
      context: context,
    );
    context.read(detailSNProvider(id)).clearModal();
  }
}

@swidget
Widget btmSheetPlaySpeed(BuildContext context) => ListBtmSheetContent<double>(
      items: HivePrefectureClient.PLAY_SPEED,
      textBuilder: (speed) {
        final string = speed.truncate() == speed
            ? speed.toStringAsFixed(1)
            : speed.toString();
        return 'x$string';
      },
      isSelected: (speed) {
        final currentSpeed = useProvider(kPrvHivePlaySpeedUpdate).data?.value ??
            HivePrefectureClient.instance().playSpeed;
        return speed == currentSpeed;
      },
      onTap: (speed) {
        HivePrefectureClient.instance().setPlaySpeed(speed);
        Navigator.of(context).pop();
      },
    );

@hwidget
Widget btmSheetCommentSelected(
  BuildContext context, {
  @required String id,
  @required Duration position,
}) =>
    TextBtmSheetContent(
      text: Strings.BTM_SHEET_COMMENT_LABEL,
      onTap: () {
        context.read(detailSNProvider(id)).seekToWithBtmSheet(false, position);
        Navigator.of(context).pop();
      },
    );
