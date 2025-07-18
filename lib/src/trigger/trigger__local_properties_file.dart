part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerLocalPropertiesFile extends TriggerFile {
  TriggerLocalPropertiesFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'local.properties'.toLowerCase());

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
