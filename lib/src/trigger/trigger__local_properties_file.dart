part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerLocalPropertiesFile extends TriggerFile {
  TriggerLocalPropertiesFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'local.properties');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
