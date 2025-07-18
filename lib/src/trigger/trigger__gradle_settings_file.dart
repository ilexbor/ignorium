part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGradleSettingsFile extends TriggerFile {
  TriggerGradleSettingsFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = fileName == 'settings.gradle'.toLowerCase() || fileName == 'settings.gradle.kts'.toLowerCase();

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
