import 'package:flutter/cupertino.dart';
import 'package:shirasu/screen_meta/app_router_delegate.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {

  @override
  Future<AppRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    return AppRoutePath.dashBoard();

    if (routeInformation?.location == null)
      return AppRoutePath.dashBoard();

    final uri = Uri.parse(routeInformation.location);
    // Handle '/'
    if (uri.pathSegments.isEmpty)
      return AppRoutePath.dashBoard();

    if (uri.pathSegments.length == 1) {
      // Handle '/dashboard'
      if (uri.pathSegments[0] == 'dashboard')
        return AppRoutePath.dashBoard();

    } else if (uri.pathSegments.length == 2) {
      // Handle '/book/:id'
      if (uri.pathSegments[0] == 'c')
        return AppRoutePath.channel(uri.pathSegments[1]);

    } else if (uri.pathSegments.length == 6) {
      // Handle 't/genron/c/genron/p/20201109'
      if (uri.pathSegments[0] == 't' && uri.pathSegments[2] == 'c' && uri.pathSegments[4] == 'p')
        return AppRoutePath.detail(uri.pathSegments[0], uri.pathSegments[2], uri.pathSegments[4]);
    }

    return AppRoutePath.unknown();
  }


  @override
  RouteInformation restoreRouteInformation(AppRoutePath configuration) {
    final data = configuration.data;

    return const RouteInformation(location: '/');

    if (data is AppRoutePathChannel)
      return RouteInformation(location: '/c/${data.channelId}');
    else if (data is AppRoutePathDetail)
      return RouteInformation(location: '/t/${data.tenantId}/c/${data.channelId}/p/${data.id}');
    else if (data is AppRoutePathIntro)
      return const RouteInformation(location: '/intro');
    else if (data is AppRoutePathError)
      return const RouteInformation(location: '/error');
    else
      return const RouteInformation(location: '/');
  }
}