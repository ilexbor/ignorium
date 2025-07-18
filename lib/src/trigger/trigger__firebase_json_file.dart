part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFirebaseJsonFile extends TriggerFile {
  TriggerFirebaseJsonFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'firebase.json');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
