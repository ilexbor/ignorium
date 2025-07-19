part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerVitePressDirectory extends TriggerDirectory {
  TriggerVitePressDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = path.normalize(directory.absolute.path);

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName == '.vitepress') {
      return true;
    }

    return false;
  }
}
