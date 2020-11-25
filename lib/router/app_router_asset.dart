import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/app_router_delegate.dart';

@immutable
class AppRouterAsset {

  AppRouterAsset(): delegate = AppRouterDelegate(), parser = AppRouteInformationParser();

  final AppRouterDelegate delegate;
  final AppRouteInformationParser parser;
}