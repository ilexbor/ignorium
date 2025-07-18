part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerGoogleServicesInfoPlistFile extends TriggerFile {
  TriggerGoogleServicesInfoPlistFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'GoogleService-Info.plist'.toLowerCase());

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
