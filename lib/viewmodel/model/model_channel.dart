import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';

part 'model_channel.freezed.dart';

@freezed
abstract class ChannelModel implements _$ChannelModel {

  const ChannelModel._();

  const factory ChannelModel.preInitialized() = _PreInitialized;

  const factory ChannelModel.success(ChannelDataWrapper channelData) = Success;

  const factory ChannelModel.error() = _Error;

  /// throws [TypeError]
  ChannelModel copyWithAdditionalPrograms(ChannelPrograms newOne) {
    final tResult = this as Success;
    final channelPrograms = tResult.channelData.data.channel.programs.append(newOne);
    return ChannelModel.success(
      ChannelDataWrapper(
        data: ChannelData(
          channel: tResult.channelData.data.channel.copyWith(
            programs: channelPrograms,
          ),
        ),
        loading: false,
      ),
    );
  }
}

@protected
@freezed
abstract class ChannelDataWrapper with _$ChannelDataWrapper {
  const factory ChannelDataWrapper({
    @required ChannelData data,
    @required bool loading,
  }) = _ChannelDataWrapper;
}
