import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/list_subscribed_programs.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/background_task.dart';

part 'viewmodel_subscribing.freezed.dart';

class ViewModelSubscribing extends ViewModelBase<SubscribingProgramState> {
  ViewModelSubscribing(Reader reader)
      : super(reader, const SubscribingProgramState.initial());

  @override
  Future<void> initialize() async {
    if (state != const SubscribingProgramState.initial()) return;

    final result = await logger
        .guardFuture(() async => authOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              await interceptor.refreshAuthTokenIfNeeded();
              return graphQlRepository
                  .querySubscribedProgramsList()
                  .timeout(GraphQlRepository.TIMEOUT);
            }));
    if (mounted)
      result.when(success: (data) {
        state = data.viewerUser.subscribedPrograms.items.isEmpty
            ? const SubscribingProgramState.resultEmpty()
            : SubscribingProgramState.success(data);
      }, failure: (e) {
        state = SubscribingProgramState.error(toErrMsg(e));
        if (e is UnauthorizedException) pushAuthErrScreen(e.detectedByTime);
      });
  }
}

@protected
@freezed
abstract class SubscribingProgramState with _$SubscribingProgramState {
  const factory SubscribingProgramState.initial() =
      _SubscribingProgramStateInitial;

  const factory SubscribingProgramState.resultEmpty() =
      _SubscribingProgramStateResultEmpty;

  const factory SubscribingProgramState.success(
          ListSubscribedPrograms listSubscribedPrograms) =
      _SubscribingProgramStateSuccess;

  const factory SubscribingProgramState.error(ErrorMsgCommon errorMsg) =
      _SubscribingProgramStateError;
}
