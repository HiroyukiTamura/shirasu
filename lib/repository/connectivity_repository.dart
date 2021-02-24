mixin ConnectivityRepository {
  Future<void> ensureNotDisconnect();
}

class NetworkDisconnectException implements Exception {}
