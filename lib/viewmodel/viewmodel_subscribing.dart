import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

import 'model/error_msg_common.dart';

part 'viewmodel_subscribing.freezed.dart';

//todo fix lint config as concerned to lack of generics
class ViewModelSubscribing extends ViewModelBase<FeatureProgramState> {
  ViewModelSubscribing(Reader reader)
      : super(reader, const FeatureProgramState.initial());

  @override
  Future<void> initialize() async {
    if (state != const FeatureProgramState.initial()) return;

    bool authExpired = false;
    FeatureProgramState newState;
    try {
      final data = await graphQlRepository
          .queryFeaturedProgramsList()
          .timeout(GraphQlRepository.TIMEOUT);
      newState = data.viewerUser.subscribedPrograms.isEmpty
          ? const FeatureProgramState.resultEmpty()
          : FeatureProgramState.success(data);
    } on UnauthorizedException catch (e) {
      print(e);
      authExpired = true;

      final errorMsg = e.detectedByTime
          ? const ErrorMsgCommon.authExpired()
          : const ErrorMsgCommon.unAuth();
      newState = FeatureProgramState.error(errorMsg);
    } on TimeoutException catch (e) {
      //todo log error
      print(e);
      newState =
          const FeatureProgramState.error(ErrorMsgCommon.networkTimeout());
    } on NetworkDisconnectException catch (e) {
      print(e);
      newState =
          const FeatureProgramState.error(ErrorMsgCommon.networkDisconnected());
    } catch (e) {
      print(e);
      newState = const FeatureProgramState.error(ErrorMsgCommon.unknown());
    }

    authExpired ? pushAuthExpireScreen() : setState(newState);
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
