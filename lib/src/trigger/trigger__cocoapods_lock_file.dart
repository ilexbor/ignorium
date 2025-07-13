part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerCocoaPodsLockFile extends TriggerFile {
  TriggerCocoaPodsLockFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'Podfile.lock') {
      return true;
    }

    return false;
  }
}
