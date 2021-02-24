import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/repository/logger_repository.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/network_image_repository.dart';
import 'package:shirasu/repository/network_image_repository_impl.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

class ViewModelDashBoard extends ViewModelBaseChangeNotifier with MutableState {
  ViewModelDashBoard(Reader reader) : super(reader);

  double headerBackDropScrollPos = 0;

  GraphQlRepository get _graphQlRepository => reader(kPrvGraphqlRepository);

  LoggerRepository get _logger => reader(kPrvLogger);

  NetworkImageRepository get _networkRepository =>
      reader(kPrvNetworkRepository);

  @override
  Future<void> initialize() async {
    if (state != const DashboardModel.initial()) return;

    final result = await _logger.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return Util.wait2(
        _graphQlRepository.queryFeaturedProgramsList,
        _graphQlRepository.queryNewProgramsList,
      ).timeout(GraphQlRepository.TIMEOUT);
    });
    if (!isMounted) return;
    result.when(success: (data) {
      final apiData = ApiData(
        featureProgramData: data.item1,
        rawNewProgramsDataList: [data.item2],
      );
      state = DashboardModel.successInitialization(apiData);
    }, failure: (e) {
      state = DashboardModel.error(toErrMsg(e));
      if (e is UnauthorizedException) pushAuthExpireScreen();
    });

    await _logger.guardFuture(
        () async => _networkRepository.requestHeaderImage());
  }

  Future<void> loadMoreNewPrg() async {
    final oldState = state;
    if (oldState is DashboardSuccess) {
      final nextToken = oldState
          .data.apiData.newProgramsDataList?.last?.newPrograms?.nextToken;
      if (nextToken == null) return;

      state = oldState.copyWith.data(loadingMore: true);

      final result = await _logger.guardFuture(() async {
        await connectivityRepository.ensureNotDisconnect();
        return _graphQlRepository
            .queryNewProgramsList(
              nextToken: nextToken,
            )
            .timeout(GraphQlRepository.TIMEOUT);
      });
      if (isMounted)
        result.when(success: (data) {
          state = state.appendLoadMoreData(data);

          if (data.newPrograms.items.isEmpty)
            notifySnackMsg(const SnackMsg.noMoreItem());
        }, failure: (e) {
          // todo merge to viewModelWatchHistory
          _updateIfStateSuccess((data) => data.copyWith(
                loadingMore: false,
              ));
          notifySnackMsg(toNetworkSnack(e));
        });
    }
  }

  void _updateIfStateSuccess(DataWrapper Function(DataWrapper data) editData) {
    state.maybeWhen(
      orElse: () {},
      success: (data) => state = DashboardModel.success(editData(data)),
    );
  }

  void updateScrollOffset(double offset) {
    if (isMounted)
      _updateIfStateSuccess((data) => data.copyWith(
            scrollOffset: offset,
          ));
  }

  void updateBillboardHeaderPage(int page) {
    if (isMounted)
      _updateIfStateSuccess((data) => data.copyWith(
            billboardHeaderPage: page,
          ));
  }

  void updateChannelOffset(double offset) {
    if (isMounted)
      _updateIfStateSuccess((data) => data.copyWith(
            channelHorizontalOffset: offset,
          ));
  }

  void updateSubscribingCarouselOffset(double offset) {
    if (isMounted)
      _updateIfStateSuccess((data) => data.copyWith(
            subscribingChannelOffset: offset,
          ));
  }

  void notifySnackMsg(SnackMsg snackMsg) =>
      snackBarMsgNotifier.notifyMsg(snackMsg, false);
}
