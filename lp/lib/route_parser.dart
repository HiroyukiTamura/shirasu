import 'package:flutter/cupertino.dart';
import 'package:lp/model/app_page.dart';

class AppRouteInformationParser extends RouteInformationParser<AppPage> {
  const AppRouteInformationParser._();

  static const AppRouteInformationParser instance =
      AppRouteInformationParser._();

  @override
  Future<AppPage> parseRouteInformation(
      RouteInformation routeInformation) async {
    if (routeInformation.location == null) return const AppPage.main();

    final uri = Uri.parse(routeInformation.location!);

    return uri.pathSegments.length == 1
        ? AppPage.parse(uri.pathSegments[0])
        : const AppPage.main();
  }

  @override
  RouteInformation restoreRouteInformation(AppPage configuration) =>
      RouteInformation(location: configuration.value);
}
