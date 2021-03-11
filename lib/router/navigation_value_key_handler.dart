import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/global_route_path.dart';

class NavigationValueKeyHandler {

  const NavigationValueKeyHandler._();

  static const _KEY_MAIN_PAGE = 'main_page';

  static const KEY_IN_PLAYER = 'key_in_player';

  static String getValueKey(GlobalRoutePathBase pathData) =>
      pathData.wrappedWhenType(
        pathDataMainPageBase: () => _KEY_MAIN_PAGE,
        globalRoutePath: () =>
            AppRouteInformationParser.restoreLocation(pathData),
      );
}
