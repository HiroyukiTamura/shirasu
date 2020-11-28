import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/viewmodel/base/base_state.dart';

part 'state_subscribing.freezed.dart';

/// todo must rename
@freezed
abstract class FeatureProgramState with _$FeatureProgramState {

  @Implements(FeatureProgramStateGroup)
  @Implements(StatePreInitialized)
  const factory FeatureProgramState.preInitialized() = FeatureProgramPreInitialized;

  @Implements(FeatureProgramStateGroup)
  @Implements(StateLoading)
  const factory FeatureProgramState.loading() = FeatureProgramLoading;

  @Implements(FeatureProgramStateGroup)
  const factory FeatureProgramState.resultEmpty() = FeatureProgramResultEmpty;

  @Implements(FeatureProgramStateGroup)
  @Implements(StateSuccess)
  const factory FeatureProgramState.success(FeatureProgramSuccessData data) = FeatureProgramSuccess;

  @Implements(FeatureProgramStateGroup)
  @Implements(StateError)
  const factory FeatureProgramState.error() = FeatureProgramError;
}

class FeatureProgramStateImpl
    with
        BaseStateImpl<FeatureProgramPreInitialized, FeatureProgramLoading,
            FeatureProgramError, FeatureProgramSuccess, FeatureProgramSuccessData> {
  const FeatureProgramStateImpl();

  @override
  FeatureProgramError error() => const FeatureProgramError();

  @override
  FeatureProgramLoading loading() => const FeatureProgramLoading();

  @override
  FeatureProgramPreInitialized preInitialized() =>
      const FeatureProgramPreInitialized();

  @override
  FeatureProgramSuccess success(FeatureProgramSuccessData data) =>
      FeatureProgramSuccess(data);
}

@immutable
mixin FeatureProgramStateGroup on BaseStateGroup {}

class FeatureProgramSuccessData with BaseSuccessData {
  const FeatureProgramSuccessData(this.data);

  final FeatureProgramData data;
}
