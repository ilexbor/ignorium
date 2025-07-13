part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerXcodeXcodeprojDirectory extends TriggerDirectory {
  TriggerXcodeXcodeprojDirectory(super.directory);

  @override
  bool evaluate() {
    final directoryPath = directory.absolute.path;

    final extension = path.extension(directoryPath).toLowerCase();

    if (extension != '.xcodeproj') {
      return false;
    }

    return true;
  }
}
