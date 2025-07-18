part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerVitePressDirectory extends TriggerDirectory {
  TriggerVitePressDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    final isTargetFile = (directoryName == '.vitepress'.toLowerCase());

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
