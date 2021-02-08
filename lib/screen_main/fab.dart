import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'fab.g.dart';

const double _kStrokeWidth = 2;

/// @see `_kSizeConstraints` in `flutter/material/floating_action_button.dart`
const double _kSizeConstraints = 56;
const _fabWrapperSize = Size.square(_kStrokeWidth + _kSizeConstraints);

final _kPrvRouterDelegate =
    ChangeNotifierProvider.autoDispose<ScreenMainRouterDelegate>(
        (ref) => ScreenMainRouterDelegate(ref.read));

@hwidget
Widget fab() => useProvider(_kPrvRouterDelegate.select((it) => it.page)) ==
        const PathDataMainPageBase.setting()
    ? const _FabContent()
    : const SizedBox.shrink();

@hwidget
Widget _fabContent(BuildContext context) {
  final isEdited = useProvider(settingViewModelSProvider.state
      .select((it) => it.editedUserInfo.isEdited));
  final isUploadingProfile = useProvider(
      settingViewModelSProvider.state.select((it) => it.uploadingProfile));

  return Visibility(
    visible: isEdited,
    child: SizedBox.fromSize(
      size: _fabWrapperSize,
      child: Stack(
        children: [
          Visibility(
            visible: isUploadingProfile,
            child: const SizedBox.expand(
              child: CircularProgressIndicator(
                strokeWidth: _kStrokeWidth,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          ),
          Center(
            child: FloatingActionButton(
              onPressed: isUploadingProfile
                  ? null
                  : () async =>
                      context.read(settingViewModelSProvider).postProfile(),
              child: const Icon(Icons.save),
            ),
          ),
        ],
      ),
    ),
  );
}
