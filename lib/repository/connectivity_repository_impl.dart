import 'package:connectivity/connectivity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:shirasu/util/exceptions.dart';

final kPrvConnectivityRepository = Provider.autoDispose<ConnectivityRepository>(
    (ref) => ConnectivityRepositoryImpl());

class ConnectivityRepositoryImpl with ConnectivityRepository {

  /// @throws [NetworkDisconnectException]
  @override
  Future<void> ensureNotDisconnect() async {
    if (await Connectivity().checkConnectivity() == ConnectivityResult.none)
      throw const NetworkDisconnectException();
  }
}
