part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerProductionEnvFile extends TriggerFile {
  TriggerProductionEnvFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = fileName == 'production.env' || fileName == 'prod.env';

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
