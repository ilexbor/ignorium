part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGradleBuildFile extends TriggerFile {
  TriggerGradleBuildFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = fileName == 'build.gradle' || fileName == 'build.gradle.kts';

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
