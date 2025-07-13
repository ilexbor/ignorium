part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterVersionManagerFvmrcFile extends TriggerFile {
  TriggerFlutterVersionManagerFvmrcFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == '.fvmrc');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
