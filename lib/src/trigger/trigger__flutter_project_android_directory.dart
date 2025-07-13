part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterProjectAndroidDirectory extends TriggerDirectory {
  TriggerFlutterProjectAndroidDirectory(super.directory);

  @override
  bool evaluate() {
    final directoryPath = directory.absolute.path;

    final directoryName = path.basename(directoryPath).toLowerCase();

    if (directoryName != 'android') {
      return false;
    }

    final parentDirectory = directory.parent;

    final pubspecHelper = PubspecHelper();

    final pubspecFile = pubspecHelper.getPubspecFileInDirectory(directory: parentDirectory);

    if (pubspecFile == null) {
      return false;
    }

    final hasFlutterDependency = pubspecHelper.hasFlutterDependencyInPubspecFile(pubspecFile);

    if (!hasFlutterDependency) {
      return false;
    }

    return true;
  }
}
