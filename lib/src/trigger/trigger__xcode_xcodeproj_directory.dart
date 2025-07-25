part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerXcodeXcodeprojDirectory extends TriggerDirectory {
  TriggerXcodeXcodeprojDirectory(super.directory);

  @override
  Future<bool> evaluate() async {
    final directoryPath = path.normalize(directory.absolute.path);

    final extension = path.extension(directoryPath).toLowerCase();

    if (extension == '.xcodeproj') {
      return true;
    }

    return false;
  }
}
