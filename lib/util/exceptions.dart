import 'package:shirasu/repository/connectivity_repository.dart';
import 'package:synchronized/synchronized.dart';

class UnauthorizedException implements Exception {

  const UnauthorizedException(this.detectedByTime);

  final bool detectedByTime;
}

/// use for [Lock]
class SynchronizationException implements Exception {
  const SynchronizationException();
}

/// use for [ConnectivityRepository]
class NetworkDisconnectException implements Exception {
  const NetworkDisconnectException();
}