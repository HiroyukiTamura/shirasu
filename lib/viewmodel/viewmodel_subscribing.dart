import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/network_image_repository_impl.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

import 'model/error_msg_common.dart';

part 'viewmodel_subscribing.freezed.dart';

class ViewModelSubscribing extends ViewModelBase<FeatureProgramState> {
  ViewModelSubscribing(Reader reader)
      : super(reader, const FeatureProgramState.initial());

  @override
  Future<void> initialize() async {
    if (state != const FeatureProgramState.initial()) return;

    final result = await logger.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return graphQlRepository
          .queryFeaturedProgramsList()
          .timeout(GraphQlRepository.TIMEOUT);
    });
    if (mounted)
      result.when(success: (data) {
        state = data.viewerUser.subscribedPrograms.isEmpty
            ? const FeatureProgramState.resultEmpty()
            : FeatureProgramState.success(data);
      }, failure: (e) {
        state = FeatureProgramState.error(toErrMsg(e));
        if (e is UnauthorizedException) pushAuthExpireScreen();
      });
  }
}

@protected
@freezed
abstract class FeatureProgramState with _$FeatureProgramState {
  const factory FeatureProgramState.initial() = _FeatureProgramStateInitial;

  const factory FeatureProgramState.resultEmpty() =
      _FeatureProgramStateResultEmpty;

  const factory FeatureProgramState.success(
      FeatureProgramData featureProgramData) = _FeatureProgramStateSuccess;

  const factory FeatureProgramState.error(ErrorMsgCommon errorMsg) =
      _FeatureProgramStateError;
}
