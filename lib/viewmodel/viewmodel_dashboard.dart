import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/network_image_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/main.dart';
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

  NetworkImageRepository get _networkRepository =>
      reader(kPrvNetworkRepository);

  @override
  Future<void> initialize() async {
    if (state != const DashboardModel.initial()) return;

    bool authExpired = false;

    DashboardModel newState;

    try {
      await connectivityRepository.ensureNotDisconnect();
      final apiResult = await Util.wait2(
        _graphQlRepository.queryFeaturedProgramsList,
        _graphQlRepository.queryNewProgramsList,
      ).timeout(GraphQlRepository.TIMEOUT);
      final data = ApiData(
        featureProgramData: apiResult.item1,
        rawNewProgramsDataList: [apiResult.item2],
      );
      newState = DashboardModel.successInitialization(data);
    } catch (e) {
      print(e);
      newState = DashboardModel.error(toErrMsg(e));
      authExpired = e is UnauthorizedException;
    }

    if (!isMounted) return;

    state = newState;

    if (authExpired) {
      pushAuthExpireScreen();
      return;
    }

    try {
      headerImage = await _networkRepository.requestHeaderImage();
    } catch (e) {
      // todo handle error
      print(e);
    }
  }

  Future<void> loadMoreNewPrg() async {
    final oldState = state;
    if (oldState is DashboardSuccess) {
      final nextToken = oldState
          .data.apiData.newProgramsDataList?.last?.newPrograms?.nextToken;
      if (nextToken == null) return;

      state = oldState.copyWith.data(loadingMore: true);

      try {
        await connectivityRepository.ensureNotDisconnect();

        final newProgramsData = await _graphQlRepository
            .queryNewProgramsList(
              nextToken: nextToken,
            )
            .timeout(GraphQlRepository.TIMEOUT);

        state = state.appendLoadMoreData(newProgramsData);

        if (newProgramsData.newPrograms.items.isEmpty)
          notifySnackMsg(const SnackMsg.noMoreItem());
      } catch (e) {
        debugPrint(e.toString());
        if (!isMounted) return;

        // todo merge to viewModelWatchHistory
        SnackMsg msg;
        if (e is NetworkDisconnectException)
          msg = const SnackMsg.networkDisconnected();
        else if (e is TimeoutException)
          msg = const SnackMsg.networkTimeout();
        else
          msg = const SnackMsg.unknown();

        _updateIfStateSuccess((data) => data.copyWith(
              loadingMore: false,
            ));
        notifySnackMsg(msg);
      }
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
