class InvalidCreationException implements Exception {

  const InvalidCreationException();

  @override
  String toString() => 'InvalidCreationException: this class must be used as static';
}