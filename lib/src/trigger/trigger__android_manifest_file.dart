part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerAndroidManifestFile extends TriggerFile {
  TriggerAndroidManifestFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = file.absolute.path;

    final fileName = path.basename(filePath).toLowerCase();

    final isTargetFile = (fileName == 'AndroidManifest.xml'.toLowerCase());

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
