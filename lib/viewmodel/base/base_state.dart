import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
abstract class $BaseState with _$$BaseState {
  @Implements(StatePreInitialized)
  const factory $BaseState.preInitialized() = $BaseStatePreInitialized;

  @Implements(StateLoading)
  const factory $BaseState.loading() = $BaseStateLoading;

  @Implements(StateError)
  const factory $BaseState.error() = $BaseStateError;
}

@immutable
mixin BaseState {}

@immutable
mixin StatePreInitialized on BaseState {}

@immutable
mixin StateLoading on BaseState {}

@immutable
mixin StateError on BaseState {}

@immutable
mixin StateSuccess on BaseState {}

@immutable
mixin BaseStateGroup {}

@immutable
mixin BaseStateImpl<P extends StatePreInitialized, Q extends StateLoading,
    R extends StateError, T extends StateSuccess, D extends BaseSuccessData> {
  P preInitialized();

  Q loading();

  R error();

  T success(D data);
}

@immutable
mixin BaseSuccessData {}
