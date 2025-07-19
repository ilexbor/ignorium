part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerCocoaPodsPodFile extends TriggerFile {
  TriggerCocoaPodsPodFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'Podfile'.toLowerCase()) {
      return true;
    }

    return false;
  }
}
