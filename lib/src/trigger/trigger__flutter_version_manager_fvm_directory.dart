part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterVersionManagerFvmDirectory extends TriggerDirectory {
  TriggerFlutterVersionManagerFvmDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = path.normalize(directory.absolute.path);

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName == '.fvm') {
      return true;
    }

    return false;
  }
}
