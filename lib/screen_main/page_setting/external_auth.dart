import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/list_tile_title.dart';

class ExternalAuth extends StatelessWidget {

  const ExternalAuth(): super();

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ListTileTitle(title: Strings.EXTERNAL_AUTHENTICATION),
        Icon(FontAwesomeIcons.facebook, color: Colors.white,),
      ],
    );
}