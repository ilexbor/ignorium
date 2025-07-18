part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerXcodeXcworkspaceDirectory extends TriggerDirectory {
  TriggerXcodeXcworkspaceDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = directory.absolute.path;

    final extension = path.extension(directoryPath).toLowerCase();

    if (extension != '.xcworkspace') {
      return false;
    }

    final dirname = path.dirname(directoryPath);

    if (dirname.endsWith('.xcodeproj')) {
      return false;
    }

    return true;
  }
}
