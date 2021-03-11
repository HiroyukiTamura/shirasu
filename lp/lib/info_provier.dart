import 'package:flutter/material.dart';

class InfoProvider extends RouteInformationProvider with ChangeNotifier {

  InfoProvider._();

  static final InfoProvider instance = InfoProvider._();

  @override
  RouteInformation get value => RouteInformation(location: value.location, state: value.state);
}
