part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerLocalPropertiesFile extends TriggerFile {
  TriggerLocalPropertiesFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'local.properties') {
      return true;
    }

    return false;
  }
}
