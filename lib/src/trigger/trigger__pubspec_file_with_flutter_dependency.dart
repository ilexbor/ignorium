part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerPubspecFileWithFlutterDependency extends TriggerFile {
  TriggerPubspecFileWithFlutterDependency(super.file);

  @override
  Future<bool> evaluate() async {
    final pubspecHelper = PubspecUtils();

    if (!pubspecHelper.isPubspecFile(file)) {
      return false;
    }

    final hasDependency = pubspecHelper.hasFlutterDependencyInPubspecFile(file);

    return hasDependency;
  }
}
