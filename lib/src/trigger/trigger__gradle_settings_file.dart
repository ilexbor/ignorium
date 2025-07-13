part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGradleSettingsFile extends TriggerFile {
  TriggerGradleSettingsFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = fileName == 'settings.gradle' || fileName == 'settings.gradle.kts';

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
