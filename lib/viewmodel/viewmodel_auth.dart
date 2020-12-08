import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_auth.freezed.dart';

class ViewModelAuth extends ViewModelBase<AuthModel> {
  ViewModelAuth() : super(AuthModel.initial());

  void updateUrl(String url) => setState(state.copyWith(lastUrl: url));

  void updateProgress(double progress) =>
      setState(state.copyWith(lastProgress: progress));
}

@freezed
abstract class AuthModel implements _$AuthModel {
  const factory AuthModel({
    @required String lastUrl,
    @required double lastProgress,
  }) = _AuthModel;

  const AuthModel._();

  factory AuthModel.initial() => AuthModel(lastUrl: null, lastProgress: -1);

  bool get allowUserPoint =>
      lastUrl != null &&
          lastUrl != UrlUtil.URL_HOME &&
          (lastUrl.startsWith(UrlUtil.URL_AUTH_BASE) && lastProgress == 1);

  // todo refactor
  bool get isValidUrl => lastUrl == null || lastUrl.startsWith(UrlUtil.URL_HOME) ||
        lastUrl.startsWith(UrlUtil.URL_AUTH_BASE) ||
        lastUrl.startsWith(UrlUtil.URL_AUTH_GOOGLE_BASE);
}
