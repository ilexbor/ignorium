part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerDartVersionManagerDvmDirectory extends TriggerDirectory {
  TriggerDartVersionManagerDvmDirectory(super.directory);

  @override
  bool evaluate() {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    final isTargetFile = (directoryName == '.dvm');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
