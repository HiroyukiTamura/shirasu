import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/secure_storage_repository_impl.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/animated_shower.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_auth_scratch.dart';
import 'package:shirasu/viewmodel/viewmodel_auth_scratch.dart';
import 'package:dartx/dartx.dart';

part 'screen_auth_scratch.g.dart';

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelAuthScratch>(
    (ref) => ViewModelAuthScratch(ref.read));

final _kPrvFieldReadOnly = Provider.autoDispose<bool>((ref) =>
    ref.watch(_kPrvViewModel.state).loginState != const LoginState.idle());

final kPrvSnackAuthScratch =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final kPrvBtmController = Provider.autoDispose<RoundedLoadingButtonController>(
    (ref) => RoundedLoadingButtonController());

final _kPrvMainSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(kPrvSnackAuthScratch.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

final _kPrvInitialInput = FutureProvider.autoDispose<_InitialLoginData>((ref) async {
  final secureStorage = ref.watch(kPrvSecureStorageRepository);
  final email = await secureStorage.email;
  final password = await secureStorage.password;
  return _InitialLoginData(
    username: email,
    password: password,
  );
});

class _InitialLoginData {
  const _InitialLoginData({
    @required this.username,
    @required this.password,
  });

  final String username;
  final String password;
}

/// [GestureDetector] is used to close keyboard
@hwidget
Widget screenAuthScratch(BuildContext context) => SafeArea(
      child: Scaffold(
        body: useProvider(_kPrvInitialInput).maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (initialData) => AnimatedOpacity(
            duration: 100.milliseconds,
            opacity: 1,
            child: _Body(
              initialData: initialData,
            ),
          ),
        ),
      ),
    );

/// [GestureDetector] is use for hide keyboard
@hwidget
Widget _body(
  BuildContext context, {
  @required _InitialLoginData initialData,
}) {
  final emailController = useTextEditingController(
    text: initialData.username,
  );
  final pwController = useTextEditingController(
    text: initialData.password,
  );

  return GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    behavior: HitTestBehavior.translucent,
    child: SnackEventListener(
      provider: _kPrvMainSnackMsg,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: BackButton(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _EmailField(controller: emailController),
                      const SizedBox(height: 48),
                      _PassWordField(controller: pwController),
                      const SizedBox(height: 72),
                      const _Note(),
                    ],
                  ),
                ),
              ),
            ),
            _LoginBtn(
              pwController: pwController,
              userNameController: emailController,
            ),
          ],
        ),
      ),
    ),
  );
}

@hwidget
Widget _passWordField(
  BuildContext context, {
  @required TextEditingController controller,
}) {
  final obscurePw =
      useProvider(_kPrvViewModel.state.select((it) => it.obscurePw));
  return TextField(
    controller: controller,
    keyboardType: TextInputType.visiblePassword,
    obscureText: obscurePw,
    readOnly: useProvider(_kPrvFieldReadOnly),
    decoration: InputDecoration(
      labelText: Strings.TEXT_FIELD_HINT_PASSWORD,
      errorText:
          useProvider(_kPrvViewModel.state.select((it) => it.errLabelPw)),
      suffixIcon: IconButton(
        color: Colors.white,
        icon: Icon(obscurePw ? Icons.visibility_off : Icons.visibility),
        onPressed: () => context.read(_kPrvViewModel).updateObscurePw(),
      ),
    ),
    onChanged: (value) => context.read(_kPrvViewModel).clearPwFieldLabel(),
  );
}

@hwidget
Widget _emailField(
  BuildContext context, {
  @required TextEditingController controller,
}) =>
    TextField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
        labelText: Strings.TEXT_FIELD_HINT_EMAIL,
        errorText:
            useProvider(_kPrvViewModel.state.select((it) => it.errLabelEmail)),
      ),
      readOnly: useProvider(_kPrvFieldReadOnly),
      onChanged: (value) => context.read(_kPrvViewModel).clearEmailFieldLabel(),
    );

@swidget
Widget _note() => Row(
      children: const [
        Icon(
          Icons.info_outline,
          color: Styles.COLOR_TEXT_SUB,
        ),
        SizedBox(width: 24),
        Expanded(
          child: Text(
            Strings.IOS_LOGIN_NOTE,
            style: TextStyle(
              height: TextHeight.TEXT_HEIGHT,
              color: Styles.COLOR_TEXT_SUB,
            ),
          ),
        ),
      ],
    );

@swidget
Widget _loginBtn(
  BuildContext context, {
  @required TextEditingController pwController,
  @required TextEditingController userNameController,
}) =>
    KeyboardVisibilityBuilder(
      builder: (context, keyboardVis) => AnimatedShower(
        visible: !keyboardVis,
        duration: 100.milliseconds,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: _RoundedLoadingBtn(
            pwController: pwController,
            userNameController: userNameController,
          ),
        ),
      ),
    );

@hwidget
Widget _roundedLoadingBtn(
  BuildContext context, {
  @required TextEditingController userNameController,
  @required TextEditingController pwController,
}) =>
    RoundedLoadingButton(
      color: Theme.of(context).primaryColor,
      controller: useProvider(kPrvBtmController),
      onPressed: () async => context.read(_kPrvViewModel).login(
            userName: userNameController.text,
            password: pwController.text,
          ),
      child: const Text(
        Strings.LOGIN_BTN_VALUE,
        style: TextStyle(
          fontSize: FontSize.S16,
        ),
      ),
    );
