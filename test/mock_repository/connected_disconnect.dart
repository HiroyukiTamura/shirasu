import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:shirasu/repository/connectivity_repository_impl.dart';
import 'package:shirasu/util/exceptions.dart';

final kOverrideDisconnected = kPrvConnectivityRepository
    .overrideWithValue(const _ConnectedRepositoryDisconnectedImpl());

class _ConnectedRepositoryDisconnectedImpl with ConnectivityRepository {

  const _ConnectedRepositoryDisconnectedImpl();

  @override
  Future<void> ensureNotDisconnect() => throw const NetworkDisconnectException();
}
