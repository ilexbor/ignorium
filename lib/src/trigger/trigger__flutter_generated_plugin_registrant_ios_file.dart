part of 'package:ignorium/src/trigger/trigger.dart';

@internal
class TriggerFlutterGeneratedPluginRegistrantIosFile extends TriggerFile {
  TriggerFlutterGeneratedPluginRegistrantIosFile(super.file);

  @override
  bool evaluate() {
    final filePath = file.absolute.path;

    final canonicalizePath = path.canonicalize(filePath).replaceAll(r'\', '/').toLowerCase();

    final suffixH = '/ios/Runner/GeneratedPluginRegistrant.h'.toLowerCase();
    final suffixM = '/ios/Runner/GeneratedPluginRegistrant.m'.toLowerCase();

    final isEndWithSuffix = canonicalizePath.endsWith(suffixH) || canonicalizePath.endsWith(suffixM);

    if (!isEndWithSuffix) {
      return false;
    }

    return true;
  }
}
