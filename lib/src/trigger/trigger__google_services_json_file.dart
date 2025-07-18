part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGoogleServicesJsonFile extends TriggerFile {
  TriggerGoogleServicesJsonFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'google-services.json');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
