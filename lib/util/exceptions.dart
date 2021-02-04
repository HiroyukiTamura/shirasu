class UnauthorizedException implements Exception {

  const UnauthorizedException(this.detectedByTime);

  final bool detectedByTime;
}