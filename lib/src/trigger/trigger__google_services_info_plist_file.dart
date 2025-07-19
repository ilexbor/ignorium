part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGoogleServicesInfoPlistFile extends TriggerFile {
  TriggerGoogleServicesInfoPlistFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'GoogleService-Info.plist'.toLowerCase()) {
      return true;
    }

    return false;
  }
}
