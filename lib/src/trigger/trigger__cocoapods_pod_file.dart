part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerCocoaPodsPodFile extends TriggerFile {
  TriggerCocoaPodsPodFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'Podfile') {
      return true;
    }

    return false;
  }
}
