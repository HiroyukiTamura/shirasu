import 'package:shirasu/client/connectivity_repository.dart';

class ConnectedRepositoryDisconnectedImpl with ConnectivityRepository {

  const ConnectedRepositoryDisconnectedImpl();

  @override
  Future<void> ensureNotDisconnect() => throw NetworkDisconnectException();
}
