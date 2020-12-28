import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/app_router_delegate.dart';

@immutable
class AppRouterAsset {
  final AppRouterDelegate delegate = AppRouterDelegate();
  final AppRouteInformationParser parser = AppRouteInformationParser();
}
