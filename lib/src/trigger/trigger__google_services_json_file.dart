part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGoogleServicesJsonFile extends TriggerFile {
  TriggerGoogleServicesJsonFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'google-services.json'.toLowerCase()) {
      return true;
    }

    return false;
  }
}
