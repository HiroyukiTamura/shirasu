import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class AppRouteInformationParser
    extends RouteInformationParser<GlobalRoutePathBase> {
  @override
  Future<GlobalRoutePathBase> parseRouteInformation(
      RouteInformation routeInformation) async {
    if (routeInformation?.location == null)
      return const GlobalRoutePathBase.redirect2Root();

    final uri = Uri.parse(routeInformation.location);

    switch (uri.pathSegments.length) {
      // Handle '/'
      case 0:
        return const GlobalRoutePathBase.redirect2Root();
      case 1:
        switch (uri.pathSegments[0]) {
          case 'dashboard':
            return const PathDataMainPageBase.dashboard();
          case 'account':
            return const PathDataMainPageBase.setting();
        }
        break;
      case 2:
        // Handle '/c/:id'
        if (uri.pathSegments[0] == 'c')
          return GlobalRoutePath.channel(uri.pathSegments[1]);
        break;

      case 6:
        // Handle 't/genron/c/genron/p/20201109'
        if (uri.pathSegments[0] == 't' &&
            uri.pathSegments[2] == 'c' &&
            uri.pathSegments[4] == 'p')
          return GlobalRoutePath.buildProgram(
            channelId: uri.pathSegments[0],
            tenantId: uri.pathSegments[2],
            programIdFragment: uri.pathSegments[4],
          );
        break;
    }

    return const GlobalRoutePath.error();
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
