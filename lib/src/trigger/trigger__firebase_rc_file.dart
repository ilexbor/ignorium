part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFirebaseRcFile extends TriggerFile {
  TriggerFirebaseRcFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == '.firebaserc');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
