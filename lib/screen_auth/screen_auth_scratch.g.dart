// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_auth_scratch.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// [GestureDetector] is used to close keyboard
class ScreenAuthScratch extends HookWidget {
  /// [GestureDetector] is used to close keyboard
  const ScreenAuthScratch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => screenAuthScratch(_context);
}

/// [GestureDetector] is use for hide keyboard
class _Body extends HookWidget {
  /// [GestureDetector] is use for hide keyboard
  const _Body({Key key, @required this.initialData}) : super(key: key);

  /// [GestureDetector] is use for hide keyboard
  final _InitialLoginData initialData;

  @override
  Widget build(BuildContext _context) =>
      _body(_context, initialData: initialData);
}

class _PassWordField extends HookWidget {
  const _PassWordField({Key key, @required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext _context) =>
      _passWordField(_context, controller: controller);
}

class _EmailField extends HookWidget {
  const _EmailField({Key key, @required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext _context) =>
      _emailField(_context, controller: controller);
}

class _Note extends StatelessWidget {
  const _Note({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _note();
}

class _LoginBtn extends StatelessWidget {
  const _LoginBtn(
      {Key key, @required this.pwController, @required this.userNameController})
      : super(key: key);

  final TextEditingController pwController;

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext _context) => _loginBtn(_context,
      pwController: pwController, userNameController: userNameController);
}

class _RoundedLoadingBtn extends HookWidget {
  const _RoundedLoadingBtn(
      {Key key, @required this.userNameController, @required this.pwController})
      : super(key: key);

  final TextEditingController userNameController;

  final TextEditingController pwController;

  @override
  Widget build(BuildContext _context) => _roundedLoadingBtn(_context,
      userNameController: userNameController, pwController: pwController);
}
