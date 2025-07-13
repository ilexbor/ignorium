part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterVersionManagerFvmDirectory extends TriggerDirectory {
  TriggerFlutterVersionManagerFvmDirectory(super.directory);

  @override
  bool evaluate() {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    final isTargetFile = (directoryName == '.fvm');

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
