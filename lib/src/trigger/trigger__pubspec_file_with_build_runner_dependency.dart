part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFileWithBuildRunnerDependency extends TriggerFile {
  TriggerPubspecFileWithBuildRunnerDependency(super.file);

  @override
  Future<bool> evaluate() async {
    final pubspecHelper = PubspecUtils();

    if (!pubspecHelper.isPubspecFile(file)) {
      return false;
    }

    final dependency = pubspecHelper.findDevDependencyInPubspecFile<String>(file, 'build_runner');

    if (dependency != null) {
      return true;
    }

    return false;
  }
}
