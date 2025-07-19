part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterVersionManagerFvmrcFile extends TriggerFile {
  TriggerFlutterVersionManagerFvmrcFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == '.fvmrc') {
      return true;
    }

    return false;
  }
}
