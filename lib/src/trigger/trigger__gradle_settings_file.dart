part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGradleSettingsFile extends TriggerFile {
  TriggerGradleSettingsFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'settings.gradle' || fileName == 'settings.gradle.kts') {
      return true;
    }

    return false;
  }
}
