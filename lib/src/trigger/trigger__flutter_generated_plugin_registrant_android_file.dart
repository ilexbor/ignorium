part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterGeneratedPluginRegistrantAndroidFile extends TriggerFile {
  TriggerFlutterGeneratedPluginRegistrantAndroidFile(super.file);

  @override
  Future<bool> evaluate() async {
    final filePath = path.normalize(file.absolute.path).toLowerCase();

    final suffix = path.normalize('/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java').toLowerCase();

    if (filePath.endsWith(suffix)) {
      return true;
    }

    return false;
  }
}
