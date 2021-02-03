import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';

part 'model_channel.freezed.dart';

@freezed
abstract class ChannelModel implements _$ChannelModel {
  @Assert('!loading || (result is Success && loading)')
  const factory ChannelModel({
    @required ChannelDataResult result,
    @required bool loading,
  }) = _ChannelModel;

  const ChannelModel._();

  ChannelModel copyWithAdditionalPrograms(ChannelPrograms newOne) {
    final tResult = result as Success;
    final channelPrograms = tResult.channelData.channel.programs.append(newOne);
    return ChannelModel(
      result: tResult.copyWith.channelData.channel(
        programs: channelPrograms,
      ),
      loading: false,
    );
  }
}

@freezed
abstract class ChannelDataResult with _$ChannelDataResult {
  const factory ChannelDataResult.preInitialized() = _PreInitialized;

  const factory ChannelDataResult.loading() = _Loading;

  const factory ChannelDataResult.success(ChannelData channelData) = Success;

  const factory ChannelDataResult.error() = _Error;
}
