part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerDartVersionManagerDvmDirectory extends TriggerDirectory {
  TriggerDartVersionManagerDvmDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = path.normalize(directory.absolute.path);

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName == '.dvm') {
      return true;
    }

    return false;
  }
}
