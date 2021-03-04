import 'dart:io';

import 'package:grinder/grinder.dart';

void main(List<String> args) => grind(args);

/// build_runner でファイルを生成
@Task('run build_runner as renewing')
void cleanAndRunBuildRunner() {
  _runProcess(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
  );
}

@Task('run build_runner')
void runBuildRunner() {
  _runProcess(
    'flutter',
    ['pub', 'run', 'build_runner', 'build'],
  );
}

@Task('run fluttergen')
void fluttergen() {
  _runProcess('fluttergen', []);
}

@Task('run create golden test image file')
void updateGolden() {
  final args = context.invocation.arguments;
  final name = args.getOption('name');
  final processArgs = ['test', '--update-goldens'];
  if (name?.isNotEmpty == true) processArgs.add('--name=$name');
  _runProcess('flutter', processArgs);
}

Future<void> _runProcess(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}
