part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterGeneratedPluginRegistrantAndroidFile extends TriggerFile {
  TriggerFlutterGeneratedPluginRegistrantAndroidFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final canonicalizePath = path.canonicalize(filePath).replaceAll(r'\', '/').toLowerCase();

    final suffix = '/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java'.toLowerCase();

    final isEndWithSuffix = canonicalizePath.endsWith(suffix);

    if (!isEndWithSuffix) {
      return false;
    }

    return true;
  }
}
