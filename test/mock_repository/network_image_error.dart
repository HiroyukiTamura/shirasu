import 'dart:ui';

import 'package:shirasu/repository/network_image_repository.dart';

import '../widget_test_util/exception.dart';

class NetworkImageRepositoryErrorImpl with NetworkImageRepository {
  @override
  Future<Image> requestHeaderImage() => throw ExpectedException();
}
