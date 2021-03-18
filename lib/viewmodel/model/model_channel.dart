import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';

part 'model_channel.freezed.dart';

@freezed
abstract class ChannelModel implements _$ChannelModel {
  const ChannelModel._();

  const factory ChannelModel.preInitialized() = _PreInitialized;

  const factory ChannelModel.success(ChannelDataWrapper channelData) = Success;

  const factory ChannelModel.error(ErrorMsgCommon errMsg) = _Error;

  /// throws [TypeError]
  ChannelModel copyWithAdditionalPrograms(ChannelPrograms newOne) {
    final channel = (this as Success).channelData.data.channel;
    return ChannelModel.success(
      ChannelDataWrapper(
        data: ChannelData(
          channel: channel.copyWith(
            programs: channel.programs.append(newOne),
          ),
        ),
        loading: false,
      ),
    );
  }

  @optionalTypeArgs
  TResult whenSuccess<TResult extends Object>(
          TResult Function(ChannelDataWrapper channelData) predicate) =>
      maybeWhen(
        orElse: () => null,
        success: (channelData) => predicate(channelData),
      );
}

@protected
@freezed
abstract class ChannelDataWrapper with _$ChannelDataWrapper {
  const factory ChannelDataWrapper({
    @required ChannelData data,
    @required bool loading,
  }) = _ChannelDataWrapper;
}
