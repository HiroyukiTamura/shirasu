import 'package:flutter/cupertino.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

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
  RouteInformation restoreRouteInformation(GlobalRoutePathBase configuration) =>
      RouteInformation(location: restoreLocation(configuration));

  static String restoreLocation(GlobalRoutePathBase configuration) =>
      GlobalRoutePathBase.wrappedWhen(
        configuration,
        intro: () => 'intro',
        error: () => 'error',
        editBirthDate: (BirthDateIntentData data) => 'edit_birth_date',
        channel: (channelId) => '/c/$channelId',
        program: (programId) {
          final list = programId.split('-');
          return '/t/${list[0]}/c/${list[1]}/p/${list[2]}';
        },
        dashboard: () => 'dashboard',
        subscribing: (SubscribingTabPage initialPage) => 'subscribing/$initialPage',
        setting: () => 'setting',
      );
}
