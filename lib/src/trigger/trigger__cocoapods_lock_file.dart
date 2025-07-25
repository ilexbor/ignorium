part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerCocoaPodsLockFile extends TriggerFile {
  TriggerCocoaPodsLockFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'Podfile.lock'.toLowerCase()) {
      return true;
    }

    return false;
  }
}
