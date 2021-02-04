// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_pre_login.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _headerLogo();
}

class _Button extends StatelessWidget {
  const _Button(
      {Key key,
      @required this.text,
      @required this.btnColor,
      @required this.textColor,
      @required this.onTap})
      : super(key: key);

  final String text;

  final Color btnColor;

  final Color textColor;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => _button(_context,
      text: text, btnColor: btnColor, textColor: textColor, onTap: onTap);
}

class _Note extends StatelessWidget {
  const _Note({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext _context) => _note(text: text);
}

class _Background extends StatelessWidget {
  const _Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _background(_context);
}
