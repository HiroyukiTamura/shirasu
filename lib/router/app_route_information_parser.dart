import 'package:flutter/cupertino.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_route_path.dart';

class AppRouteInformationParser
    extends RouteInformationParser<GlobalRoutePathBase> {
  const AppRouteInformationParser._();

  static const AppRouteInformationParser instance =
      AppRouteInformationParser._();

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

    return const GlobalRoutePath.error(false, Strings.SNACK_ERR);
  }

  @override
  RouteInformation restoreRouteInformation(GlobalRoutePathBase configuration) =>
      RouteInformation(location: restoreLocation(configuration));

  static String restoreLocation(GlobalRoutePathBase configuration) =>
      configuration.wrappedWhen(
        intro: () => 'intro',
        error: (authExpired, errText) => 'error',
        channel: (channelId) => '/c/$channelId',
        program: UrlUtil.programId2UrlSegment,
        dashboard: () => 'dashboard',
        subscribing: (initialPage) =>
            'subscribing/$initialPage',
        search: () => 'search',
        setting: () => 'setting',
        ossLicense: () => 'oss_license',
        imgLicense: () => 'img_license',
        auth: () => 'auth',
        preLogin: () => 'pre_login',
        fcm: () => 'fcm',
        webNoSupport: () => 'no_web',
        pwaGuide: () => 'pwa_guide',
      );
}
