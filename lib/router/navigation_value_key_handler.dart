import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

class NavigationValueKeyHandler {

  const NavigationValueKeyHandler._();

  static const _KEY_MAIN_PAGE = 'main_page';

  static String getValueKey(GlobalRoutePathBase pathData) =>
      GlobalRoutePathBase.wrappedWhenType(
        pathData,
        pathDataMainPageBase: () => _KEY_MAIN_PAGE,
        globalRoutePath: () =>
            AppRouteInformationParser.restoreLocation(pathData),
      );
}
