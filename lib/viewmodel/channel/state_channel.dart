import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/viewmodel/base/base_state.dart';

part 'state_channel.freezed.dart';

@freezed
abstract class ChannelDataResult with _$ChannelDataResult {

  @Implements(ChannelBaseStateGroup)
  @Implements(StatePreInitialized)
  const factory ChannelDataResult.preInitialized() = ChannelPreInitialized;

  @Implements(ChannelBaseStateGroup)
  @Implements(StateLoading)
  const factory ChannelDataResult.loading() = ChannelLoading;

  @Implements(ChannelBaseStateGroup)
  @Implements(StateSuccess)
  const factory ChannelDataResult.success(ChannelSuccessData data) =
      ChannelSuccess;

  @Implements(ChannelBaseStateGroup)
  @Implements(StateError)
  const factory ChannelDataResult.error() = ChannelError;
}

class ChannelDataResultImpl
    with BaseStateImpl<ChannelPreInitialized, ChannelLoading, ChannelError, ChannelSuccess, ChannelSuccessData> {

  const ChannelDataResultImpl();

  @override
  ChannelError error() => const ChannelError();

  @override
  ChannelLoading loading() => const ChannelLoading();

  @override
  ChannelPreInitialized preInitialized() => const ChannelPreInitialized();

  @override
  ChannelSuccess success(ChannelSuccessData data) => ChannelSuccess(data);
}

@immutable
mixin ChannelBaseStateGroup on BaseStateGroup {}

class ChannelSuccessData with BaseSuccessData {

  const ChannelSuccessData(this.data);

  final ChannelData data;
}
