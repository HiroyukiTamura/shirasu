import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class AppRouteInformationParser extends RouteInformationParser<GlobalRoutePathBase> {

  @override
  Future<GlobalRoutePathBase> parseRouteInformation(RouteInformation routeInformation) async {
    return const PathDataMainPageBase.dashboard();

    // if (routeInformation?.location == null)
    //   return GlobalRoutePath.screenMain();
    //
    // final uri = Uri.parse(routeInformation.location);
    // // Handle '/'
    // if (uri.pathSegments.isEmpty)
    //   return GlobalRoutePath.screenMain();
    //
    // if (uri.pathSegments.length == 1) {
    //   // Handle '/dashboard'
    //   if (uri.pathSegments[0] == 'dashboard')
    //     return GlobalRoutePath.screenMain();
    //
    // } else if (uri.pathSegments.length == 2) {
    //   // Handle '/book/:id'
    //   if (uri.pathSegments[0] == 'c')
    //     return GlobalRoutePath.channel(uri.pathSegments[1]);
    //
    // } else if (uri.pathSegments.length == 6) {
    //   // Handle 't/genron/c/genron/p/20201109'
    //   if (uri.pathSegments[0] == 't' && uri.pathSegments[2] == 'c' && uri.pathSegments[4] == 'p')
    //     return GlobalRoutePath.detail(uri.pathSegments[0], uri.pathSegments[2], uri.pathSegments[4]);
    // }
    //
    // return GlobalRoutePath.unknown();
  }


  @override
  RouteInformation restoreRouteInformation(GlobalRoutePathBase configuration) {
    // final data = configuration.data;

    return const RouteInformation(location: '/');

    // if (data is GlobalRoutePathChannel)
    //   return RouteInformation(location: '/c/${data.channelId}');
    // else if (data is GlobalRoutePathDetail)
    //   return RouteInformation(location: '/t/${data.tenantId}/c/${data.channelId}/p/${data.id}');
    // else if (data is GlobalRoutePathIntro)
    //   return const RouteInformation(location: '/intro');
    // else if (data is GlobalRoutePathError)
    //   return const RouteInformation(location: '/error');
    // else
    //   return const RouteInformation(location: '/');
  }
}