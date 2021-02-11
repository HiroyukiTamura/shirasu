
import 'package:file/local.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system.dart';
import 'package:mockito/mockito.dart';

import '../resources/assets.gen.dart';
import 'test_util.dart';

class _MockFileSystem extends Mock implements FileSystem {}

const _kFileSystem = LocalFileSystem();

class TestCacheManager extends CacheManager {
  TestCacheManager()
      : super(
          Config(
            'testCacheKey',
            fileSystem: _MockFileSystem(),
            repo: NonStoringObjectProvider(),
          ),
        ) {
    final path = TestUtil.fixAssetPath(Assets.jpeg.dummyImage.path);
    print(path);
    _dummyImage = FileInfo(_kFileSystem.file(path), null, null, null);
  }

  FileInfo _dummyImage;

  @override
  Future<FileInfo> getFileFromMemory(String url) async {
    print('getFileFromMemory');
    return _dummyImage;
  }

  @override
  Stream<FileInfo> getFileStream(
    String url, {
    Map<String, String> headers,
    String key,
    bool withProgress,
  }) async* {
    print('getFileStream');
    yield await getFileFromMemory(url);
  }
}
