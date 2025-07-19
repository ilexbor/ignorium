part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerAndroidManifestFile extends TriggerFile {
  TriggerAndroidManifestFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path);

    final fileName = path.basename(filePath).toLowerCase();

    if (fileName == 'AndroidManifest.xml'.toLowerCase()) {
      return true;
    }

    return false;
  }
}
