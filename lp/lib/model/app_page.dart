import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_page.freezed.dart';

@freezed
abstract class AppPage with _$AppPage {
  const factory AppPage.main() = _AppPageMain;

  const factory AppPage.sub() = _AppPageSub;
  
  factory AppPage.parse(String path) {
    switch (path) {
      case AppPage._PATH_SUB:
        return const AppPage.sub();
      default:
        return const AppPage.main();
    }
  }

  const AppPage._();

  static const _PATH_MAIN = 'main';
  static const _PATH_SUB = 'sub';

  String get value => when(
        main: () => _PATH_MAIN,
        sub: () => _PATH_SUB,
      );
}
