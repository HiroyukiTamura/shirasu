import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/detail_program_data.dart';
import 'package:shirasu/viewmodel/base/base_state.dart';

part 'detail_api_state.freezed.dart';

@freezed
abstract class ProgramDetailState with _$ProgramDetailState {
  @Implements(ProgramDetailStateGroup)
  @Implements(StatePreInitialized)
  const factory ProgramDetailState.preInitialized() =
      ProgramDetailPreInitialized;

  @Implements(ProgramDetailStateGroup)
  @Implements(StateLoading)
  const factory ProgramDetailState.loading() = ProgramDetailLoading;

  @Implements(ProgramDetailStateGroup)
  @Implements(StateSuccess)
  const factory ProgramDetailState.success(ProgramDetailSuccessData data) =
      ProgramDetailSuccess;

  @Implements(ProgramDetailStateGroup)
  @Implements(StateError)
  const factory ProgramDetailState.error() = ProgramDetailError;
}

class ProgramDetailStateImpl
    with
        BaseStateImpl<
            ProgramDetailPreInitialized,
            ProgramDetailLoading,
            ProgramDetailError,
            ProgramDetailSuccess,
            ProgramDetailSuccessData> {
  const ProgramDetailStateImpl();

  @override
  ProgramDetailError error() => const ProgramDetailError();

  @override
  ProgramDetailLoading loading() => const ProgramDetailLoading();

  @override
  ProgramDetailPreInitialized preInitialized() =>
      const ProgramDetailPreInitialized();

  @override
  ProgramDetailSuccess success(ProgramDetailSuccessData data) =>
      ProgramDetailSuccess(data);
}

@immutable
mixin ProgramDetailStateGroup on BaseStateGroup {}

class ProgramDetailSuccessData with BaseSuccessData {
  const ProgramDetailSuccessData(this.data);

  final ProgramDetailData data;
}
