import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';

final kOverrideDisconnected = kPrvConnectivityRepository
    .overrideWithValue(const _ConnectedRepositoryDisconnectedImpl());

class _ConnectedRepositoryDisconnectedImpl with ConnectivityRepository {

  const _ConnectedRepositoryDisconnectedImpl();

  @override
  Future<void> ensureNotDisconnect() => throw NetworkDisconnectException();
}
