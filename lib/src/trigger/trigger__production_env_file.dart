part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerProductionEnvFile extends TriggerFile {
  TriggerProductionEnvFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'production.env' || fileName == 'prod.env') {
      return true;
    }

    return false;
  }
}
