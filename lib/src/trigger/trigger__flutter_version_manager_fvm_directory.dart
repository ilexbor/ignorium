part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterVersionManagerFvmDirectory extends TriggerDirectory {
  TriggerFlutterVersionManagerFvmDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    final isTargetFile = (directoryName == '.fvm'.toLowerCase());

    if (!isTargetFile) {
      return false;
    }

    return true;
  }
}
