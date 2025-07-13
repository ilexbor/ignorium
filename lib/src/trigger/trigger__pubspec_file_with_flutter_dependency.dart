part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFileWithFlutterDependency extends TriggerFile {
  TriggerPubspecFileWithFlutterDependency(super.file);

  @override
  bool evaluate() {
    final pubspecHelper = PubspecHelper();

    if (!pubspecHelper.isPubspecFile(file)) {
      return false;
    }

    final hasDependency = pubspecHelper.hasFlutterDependencyInPubspecFile(file);

    if (!hasDependency) {
      return false;
    }

    return true;
  }
}
