part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFileWithBuildRunnerDependency extends TriggerFile {
  TriggerPubspecFileWithBuildRunnerDependency(super.file);

  @override
  Future<bool> evaluate() async {
    final pubspecHelper = PubspecHelper();

    if (!pubspecHelper.isPubspecFile(file)) {
      return false;
    }

    final dependency = pubspecHelper.getDevDependencyFromPubspecFile<String>(file, 'build_runner');

    final hasDependency = dependency != null;

    if (!hasDependency) {
      return false;
    }

    return true;
  }
}
