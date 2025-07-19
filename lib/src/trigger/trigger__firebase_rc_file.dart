part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFirebaseRcFile extends TriggerFile {
  TriggerFirebaseRcFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == '.firebaserc') {
      return true;
    }

    return false;
  }
}
